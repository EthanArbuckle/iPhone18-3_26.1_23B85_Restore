uint64_t sub_1C8EAA1DC()
{
  sub_1C9064D7C();
  SystemToolProtocol.hash(into:)();
  return sub_1C9064DBC();
}

void SystemToolProtocol.init(from:metadata:)(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = a2[1];
  v611 = *a2;
  *v612 = v12;
  *&v612[16] = a2[2];
  v13 = *(a2 + 41);
  *&v612[25] = v13;
  if (!v11)
  {
    sub_1C8D3ED20(v7, v9, v8, v10, 0);
LABEL_5:
    if (v612[40] == 9)
    {
      v14 = 0;
      v15 = *&v612[24];
      v16 = *&v612[32];
      v13 = *&v612[8];
      LOBYTE(v3) = BYTE8(v611);
      v4 = *v612;
      v17 = v611;
      v18 = v611 & 0xFFFFFFFFFFFFFF00;
      v19 = *(&v611 + 1) & 0xFFFFFFFFFFFFFF00;
LABEL_23:
      *a3 = v18 | v17;
      *(a3 + 8) = v19 | v3;
      *(a3 + 16) = v4;
      *(a3 + 24) = v13;
      *(a3 + 40) = v15;
      *(a3 + 48) = v16;
      *(a3 + 56) = v14;
      return;
    }

    goto LABEL_361;
  }

  if (v11 == 1)
  {

    goto LABEL_5;
  }

  v20 = v8 | v9;
  v16 = v20 | v7 | v10;
  if (!v16)
  {
    sub_1C8EB0D2C(&v611);
    v4 = 0;
    v15 = 0;
    v16 = 0;
    LOBYTE(v3) = 0;
    v19 = 0;
    v17 = 0;
    v18 = 0;
    v13 = 0uLL;
    v14 = 10;
    goto LABEL_23;
  }

  v21 = v20 | v10;
  if (v7 != 1 || v21)
  {
    if (v7 != 2 || v21)
    {
      if (v7 != 3 || v21)
      {
        if (v7 != 4 || v21)
        {
          if (v7 != 5 || v21)
          {
            if (v7 != 6 || v21)
            {
              if (v7 != 7 || v21)
              {
                if (v7 != 8 || v21)
                {
                  if (v7 != 9 || v21)
                  {
                    if (v7 != 10 || v21)
                    {
                      if (v7 != 11 || v21)
                      {
                        if (v7 != 12 || v21)
                        {
                          if (v7 != 13 || v21)
                          {
                            if (v7 != 14 || v21)
                            {
                              if (v7 != 15 || v21)
                              {
                                if (v7 != 16 || v21)
                                {
                                  if (v7 != 17 || v21)
                                  {
                                    if (v7 != 18 || v21)
                                    {
                                      if (v7 != 19 || v21)
                                      {
                                        if (v7 != 20 || v21)
                                        {
                                          if (v7 != 21 || v21)
                                          {
                                            if (v7 != 22 || v21)
                                            {
                                              if (v7 != 23 || v21)
                                              {
                                                if (v7 != 24 || v21)
                                                {
                                                  if (v7 != 25 || v21)
                                                  {
                                                    if (v7 != 26 || v21)
                                                    {
                                                      if (v7 != 27 || v21)
                                                      {
                                                        if (v7 != 28 || v21)
                                                        {
                                                          if (v7 != 29 || v21)
                                                          {
                                                            if (v7 != 30 || v21)
                                                            {
                                                              if (v7 != 31 || v21)
                                                              {
                                                                if (v7 != 32 || v21)
                                                                {
                                                                  if (v7 != 33 || v21)
                                                                  {
                                                                    if (v7 != 34 || v21)
                                                                    {
                                                                      if (v7 != 35 || v21)
                                                                      {
                                                                        if (v7 != 36 || v21)
                                                                        {
                                                                          if (v7 != 37 || v21)
                                                                          {
                                                                            if (v7 != 38 || v21)
                                                                            {
                                                                              if (v7 != 39 || v21)
                                                                              {
                                                                                if (v7 != 40 || v21)
                                                                                {
                                                                                  if (v7 != 41 || v21)
                                                                                  {
                                                                                    if (v7 != 42 || v21)
                                                                                    {
                                                                                      if (v7 != 43 || v21)
                                                                                      {
                                                                                        if (v7 != 44 || v21)
                                                                                        {
                                                                                          if (v7 != 45 || v21)
                                                                                          {
                                                                                            if (v7 != 46 || v21)
                                                                                            {
                                                                                              if (v7 != 47 || v21)
                                                                                              {
                                                                                                if (v7 != 48 || v21)
                                                                                                {
                                                                                                  if (v7 != 49 || v21)
                                                                                                  {
                                                                                                    if (v7 != 50 || v21)
                                                                                                    {
                                                                                                      if (v7 != 51 || v21)
                                                                                                      {
                                                                                                        if (v7 != 52 || v21)
                                                                                                        {
                                                                                                          if (v7 != 53 || v21)
                                                                                                          {
                                                                                                            if (v7 != 54 || v21)
                                                                                                            {
                                                                                                              if (v7 != 55 || v21)
                                                                                                              {
                                                                                                                if (v7 != 56 || v21)
                                                                                                                {
                                                                                                                  if (v7 != 57 || v21)
                                                                                                                  {
                                                                                                                    if (v7 != 58 || v21)
                                                                                                                    {
                                                                                                                      if (v7 != 59 || v21)
                                                                                                                      {
                                                                                                                        if (v7 != 60 || v21)
                                                                                                                        {
                                                                                                                          if (v7 != 61 || v21)
                                                                                                                          {
                                                                                                                            OUTLINED_FUNCTION_38_16();
                                                                                                                            if (v32)
                                                                                                                            {
                                                                                                                              OUTLINED_FUNCTION_0_62(v597, v598, v599, v600, v601, v602, v603, v604, v609, v610, v611, *(&v611 + 1), *v612, v605, v606);
                                                                                                                              if (!v607)
                                                                                                                              {
                                                                                                                                *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                                                                v17 = 53;
                                                                                                                                goto LABEL_23;
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            OUTLINED_FUNCTION_38_16();
                                                                                                                            if (v32)
                                                                                                                            {
                                                                                                                              OUTLINED_FUNCTION_0_62(v586, v587, v588, v589, v590, v591, v592, v593, v609, v610, v611, *(&v611 + 1), *v612, v594, v595);
                                                                                                                              if (!v596)
                                                                                                                              {
                                                                                                                                *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                                                                v17 = 52;
                                                                                                                                goto LABEL_23;
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }

                                                                                                                        else if (v612[40] == 4)
                                                                                                                        {
                                                                                                                          v584 = *&v612[8];
                                                                                                                          v4 = *v612;
                                                                                                                          v3 = *(&v611 + 1);
                                                                                                                          v585 = v611;

                                                                                                                          sub_1C8EB0D2C(&v611);
                                                                                                                          v17 = v585;
                                                                                                                          v18 = v585 & 0xFFFFFFFFFFFFFF00;
                                                                                                                          v19 = v3 & 0xFFFFFFFFFFFFFF00;
                                                                                                                          *&v13 = v584;
                                                                                                                          v14 = 8;
                                                                                                                          goto LABEL_23;
                                                                                                                        }
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        OUTLINED_FUNCTION_38_16();
                                                                                                                        if (v32)
                                                                                                                        {
                                                                                                                          OUTLINED_FUNCTION_0_62(v573, v574, v575, v576, v577, v578, v579, v580, v609, v610, v611, *(&v611 + 1), *v612, v581, v582);
                                                                                                                          if (!v583)
                                                                                                                          {
                                                                                                                            *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                                                            v17 = 51;
                                                                                                                            goto LABEL_23;
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }

                                                                                                                    else if (v612[40] == 3)
                                                                                                                    {
                                                                                                                      OUTLINED_FUNCTION_79_6();
                                                                                                                      v14 = 7;
                                                                                                                      goto LABEL_23;
                                                                                                                    }
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    OUTLINED_FUNCTION_38_16();
                                                                                                                    if (v32)
                                                                                                                    {
                                                                                                                      OUTLINED_FUNCTION_0_62(v562, v563, v564, v565, v566, v567, v568, v569, v609, v610, v611, *(&v611 + 1), *v612, v570, v571);
                                                                                                                      if (!v572)
                                                                                                                      {
                                                                                                                        *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                                                        v17 = 50;
                                                                                                                        goto LABEL_23;
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  OUTLINED_FUNCTION_38_16();
                                                                                                                  if (v32)
                                                                                                                  {
                                                                                                                    OUTLINED_FUNCTION_0_62(v551, v552, v553, v554, v555, v556, v557, v558, v609, v610, v611, *(&v611 + 1), *v612, v559, v560);
                                                                                                                    if (!v561)
                                                                                                                    {
                                                                                                                      *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                                                      v17 = 49;
                                                                                                                      goto LABEL_23;
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                OUTLINED_FUNCTION_38_16();
                                                                                                                if (v32)
                                                                                                                {
                                                                                                                  OUTLINED_FUNCTION_0_62(v540, v541, v542, v543, v544, v545, v546, v547, v609, v610, v611, *(&v611 + 1), *v612, v548, v549);
                                                                                                                  if (!v550)
                                                                                                                  {
                                                                                                                    *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                                                    v17 = 48;
                                                                                                                    goto LABEL_23;
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              OUTLINED_FUNCTION_38_16();
                                                                                                              if (v32)
                                                                                                              {
                                                                                                                OUTLINED_FUNCTION_0_62(v529, v530, v531, v532, v533, v534, v535, v536, v609, v610, v611, *(&v611 + 1), *v612, v537, v538);
                                                                                                                if (!v539)
                                                                                                                {
                                                                                                                  *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                                                  v17 = 47;
                                                                                                                  goto LABEL_23;
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            OUTLINED_FUNCTION_38_16();
                                                                                                            if (v32)
                                                                                                            {
                                                                                                              OUTLINED_FUNCTION_0_62(v518, v519, v520, v521, v522, v523, v524, v525, v609, v610, v611, *(&v611 + 1), *v612, v526, v527);
                                                                                                              if (!v528)
                                                                                                              {
                                                                                                                *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                                                v17 = 46;
                                                                                                                goto LABEL_23;
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          OUTLINED_FUNCTION_38_16();
                                                                                                          if (v32)
                                                                                                          {
                                                                                                            OUTLINED_FUNCTION_0_62(v507, v508, v509, v510, v511, v512, v513, v514, v609, v610, v611, *(&v611 + 1), *v612, v515, v516);
                                                                                                            if (!v517)
                                                                                                            {
                                                                                                              *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                                              v17 = 45;
                                                                                                              goto LABEL_23;
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }

                                                                                                      else if (v612[40] == 2)
                                                                                                      {
                                                                                                        OUTLINED_FUNCTION_82_5();
                                                                                                        v14 = 6;
                                                                                                        goto LABEL_23;
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      OUTLINED_FUNCTION_38_16();
                                                                                                      if (v32)
                                                                                                      {
                                                                                                        OUTLINED_FUNCTION_0_62(v496, v497, v498, v499, v500, v501, v502, v503, v609, v610, v611, *(&v611 + 1), *v612, v504, v505);
                                                                                                        if (!v506)
                                                                                                        {
                                                                                                          *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                                          v17 = 44;
                                                                                                          goto LABEL_23;
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    OUTLINED_FUNCTION_38_16();
                                                                                                    if (v32)
                                                                                                    {
                                                                                                      OUTLINED_FUNCTION_0_62(v485, v486, v487, v488, v489, v490, v491, v492, v609, v610, v611, *(&v611 + 1), *v612, v493, v494);
                                                                                                      if (!v495)
                                                                                                      {
                                                                                                        *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                                        v17 = 43;
                                                                                                        goto LABEL_23;
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  OUTLINED_FUNCTION_38_16();
                                                                                                  if (v32)
                                                                                                  {
                                                                                                    OUTLINED_FUNCTION_0_62(v474, v475, v476, v477, v478, v479, v480, v481, v609, v610, v611, *(&v611 + 1), *v612, v482, v483);
                                                                                                    if (!v484)
                                                                                                    {
                                                                                                      *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                                      v17 = 42;
                                                                                                      goto LABEL_23;
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                OUTLINED_FUNCTION_38_16();
                                                                                                if (v32)
                                                                                                {
                                                                                                  OUTLINED_FUNCTION_0_62(v463, v464, v465, v466, v467, v468, v469, v470, v609, v610, v611, *(&v611 + 1), *v612, v471, v472);
                                                                                                  if (!v473)
                                                                                                  {
                                                                                                    *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                                    v17 = 41;
                                                                                                    goto LABEL_23;
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              OUTLINED_FUNCTION_38_16();
                                                                                              if (v32)
                                                                                              {
                                                                                                OUTLINED_FUNCTION_0_62(v452, v453, v454, v455, v456, v457, v458, v459, v609, v610, v611, *(&v611 + 1), *v612, v460, v461);
                                                                                                if (!v462)
                                                                                                {
                                                                                                  *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                                  v17 = 40;
                                                                                                  goto LABEL_23;
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            OUTLINED_FUNCTION_38_16();
                                                                                            if (v32)
                                                                                            {
                                                                                              OUTLINED_FUNCTION_0_62(v441, v442, v443, v444, v445, v446, v447, v448, v609, v610, v611, *(&v611 + 1), *v612, v449, v450);
                                                                                              if (!v451)
                                                                                              {
                                                                                                *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                                v17 = 39;
                                                                                                goto LABEL_23;
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          OUTLINED_FUNCTION_38_16();
                                                                                          if (v32)
                                                                                          {
                                                                                            OUTLINED_FUNCTION_0_62(v430, v431, v432, v433, v434, v435, v436, v437, v609, v610, v611, *(&v611 + 1), *v612, v438, v439);
                                                                                            if (!v440)
                                                                                            {
                                                                                              *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                              v17 = 38;
                                                                                              goto LABEL_23;
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        OUTLINED_FUNCTION_38_16();
                                                                                        if (v32)
                                                                                        {
                                                                                          OUTLINED_FUNCTION_0_62(v419, v420, v421, v422, v423, v424, v425, v426, v609, v610, v611, *(&v611 + 1), *v612, v427, v428);
                                                                                          if (!v429)
                                                                                          {
                                                                                            *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                            v17 = 37;
                                                                                            goto LABEL_23;
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      OUTLINED_FUNCTION_38_16();
                                                                                      if (v32)
                                                                                      {
                                                                                        OUTLINED_FUNCTION_0_62(v408, v409, v410, v411, v412, v413, v414, v415, v609, v610, v611, *(&v611 + 1), *v612, v416, v417);
                                                                                        if (!v418)
                                                                                        {
                                                                                          *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                          v17 = 36;
                                                                                          goto LABEL_23;
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    OUTLINED_FUNCTION_38_16();
                                                                                    if (v32)
                                                                                    {
                                                                                      OUTLINED_FUNCTION_0_62(v397, v398, v399, v400, v401, v402, v403, v404, v609, v610, v611, *(&v611 + 1), *v612, v405, v406);
                                                                                      if (!v407)
                                                                                      {
                                                                                        *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                        v17 = 35;
                                                                                        goto LABEL_23;
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  OUTLINED_FUNCTION_38_16();
                                                                                  if (v32)
                                                                                  {
                                                                                    OUTLINED_FUNCTION_0_62(v386, v387, v388, v389, v390, v391, v392, v393, v609, v610, v611, *(&v611 + 1), *v612, v394, v395);
                                                                                    if (!v396)
                                                                                    {
                                                                                      *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                      v17 = 34;
                                                                                      goto LABEL_23;
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                OUTLINED_FUNCTION_38_16();
                                                                                if (v32)
                                                                                {
                                                                                  OUTLINED_FUNCTION_0_62(v375, v376, v377, v378, v379, v380, v381, v382, v609, v610, v611, *(&v611 + 1), *v612, v383, v384);
                                                                                  if (!v385)
                                                                                  {
                                                                                    *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                    v17 = 33;
                                                                                    goto LABEL_23;
                                                                                  }
                                                                                }
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              OUTLINED_FUNCTION_38_16();
                                                                              if (v32)
                                                                              {
                                                                                OUTLINED_FUNCTION_0_62(v364, v365, v366, v367, v368, v369, v370, v371, v609, v610, v611, *(&v611 + 1), *v612, v372, v373);
                                                                                if (!v374)
                                                                                {
                                                                                  *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                  v17 = 32;
                                                                                  goto LABEL_23;
                                                                                }
                                                                              }
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            OUTLINED_FUNCTION_38_16();
                                                                            if (v32)
                                                                            {
                                                                              OUTLINED_FUNCTION_0_62(v353, v354, v355, v356, v357, v358, v359, v360, v609, v610, v611, *(&v611 + 1), *v612, v361, v362);
                                                                              if (!v363)
                                                                              {
                                                                                *&v13 = OUTLINED_FUNCTION_1_57();
                                                                                v17 = 31;
                                                                                goto LABEL_23;
                                                                              }
                                                                            }
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          OUTLINED_FUNCTION_38_16();
                                                                          if (v32)
                                                                          {
                                                                            OUTLINED_FUNCTION_0_62(v342, v343, v344, v345, v346, v347, v348, v349, v609, v610, v611, *(&v611 + 1), *v612, v350, v351);
                                                                            if (!v352)
                                                                            {
                                                                              *&v13 = OUTLINED_FUNCTION_1_57();
                                                                              v17 = 30;
                                                                              goto LABEL_23;
                                                                            }
                                                                          }
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        OUTLINED_FUNCTION_38_16();
                                                                        if (v32)
                                                                        {
                                                                          OUTLINED_FUNCTION_0_62(v331, v332, v333, v334, v335, v336, v337, v338, v609, v610, v611, *(&v611 + 1), *v612, v339, v340);
                                                                          if (!v341)
                                                                          {
                                                                            *&v13 = OUTLINED_FUNCTION_1_57();
                                                                            v17 = 29;
                                                                            goto LABEL_23;
                                                                          }
                                                                        }
                                                                      }
                                                                    }

                                                                    else if (v612[40] == 1)
                                                                    {
                                                                      OUTLINED_FUNCTION_82_5();
                                                                      v14 = 5;
                                                                      goto LABEL_23;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    OUTLINED_FUNCTION_38_16();
                                                                    if (v32)
                                                                    {
                                                                      OUTLINED_FUNCTION_0_62(v320, v321, v322, v323, v324, v325, v326, v327, v609, v610, v611, *(&v611 + 1), *v612, v328, v329);
                                                                      if (!v330)
                                                                      {
                                                                        *&v13 = OUTLINED_FUNCTION_1_57();
                                                                        v17 = 28;
                                                                        goto LABEL_23;
                                                                      }
                                                                    }
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_38_16();
                                                                  if (v32)
                                                                  {
                                                                    OUTLINED_FUNCTION_0_62(v309, v310, v311, v312, v313, v314, v315, v316, v609, v610, v611, *(&v611 + 1), *v612, v317, v318);
                                                                    if (!v319)
                                                                    {
                                                                      *&v13 = OUTLINED_FUNCTION_1_57();
                                                                      v17 = 27;
                                                                      goto LABEL_23;
                                                                    }
                                                                  }
                                                                }
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_38_16();
                                                                if (v32)
                                                                {
                                                                  OUTLINED_FUNCTION_0_62(v298, v299, v300, v301, v302, v303, v304, v305, v609, v610, v611, *(&v611 + 1), *v612, v306, v307);
                                                                  if (!v308)
                                                                  {
                                                                    *&v13 = OUTLINED_FUNCTION_1_57();
                                                                    v17 = 26;
                                                                    goto LABEL_23;
                                                                  }
                                                                }
                                                              }
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_38_16();
                                                              if (v32)
                                                              {
                                                                OUTLINED_FUNCTION_0_62(v287, v288, v289, v290, v291, v292, v293, v294, v609, v610, v611, *(&v611 + 1), *v612, v295, v296);
                                                                if (!v297)
                                                                {
                                                                  *&v13 = OUTLINED_FUNCTION_1_57();
                                                                  v17 = 25;
                                                                  goto LABEL_23;
                                                                }
                                                              }
                                                            }
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_38_16();
                                                            if (v32)
                                                            {
                                                              OUTLINED_FUNCTION_0_62(v276, v277, v278, v279, v280, v281, v282, v283, v609, v610, v611, *(&v611 + 1), *v612, v284, v285);
                                                              if (!v286)
                                                              {
                                                                *&v13 = OUTLINED_FUNCTION_1_57();
                                                                v17 = 24;
                                                                goto LABEL_23;
                                                              }
                                                            }
                                                          }
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_38_16();
                                                          if (v32)
                                                          {
                                                            OUTLINED_FUNCTION_0_62(v265, v266, v267, v268, v269, v270, v271, v272, v609, v610, v611, *(&v611 + 1), *v612, v273, v274);
                                                            if (!v275)
                                                            {
                                                              *&v13 = OUTLINED_FUNCTION_1_57();
                                                              v17 = 23;
                                                              goto LABEL_23;
                                                            }
                                                          }
                                                        }
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_38_16();
                                                        if (v32)
                                                        {
                                                          OUTLINED_FUNCTION_0_62(v254, v255, v256, v257, v258, v259, v260, v261, v609, v610, v611, *(&v611 + 1), *v612, v262, v263);
                                                          if (!v264)
                                                          {
                                                            *&v13 = OUTLINED_FUNCTION_1_57();
                                                            v17 = 22;
                                                            goto LABEL_23;
                                                          }
                                                        }
                                                      }
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_38_16();
                                                      if (v32)
                                                      {
                                                        OUTLINED_FUNCTION_0_62(v243, v244, v245, v246, v247, v248, v249, v250, v609, v610, v611, *(&v611 + 1), *v612, v251, v252);
                                                        if (!v253)
                                                        {
                                                          *&v13 = OUTLINED_FUNCTION_1_57();
                                                          v17 = 21;
                                                          goto LABEL_23;
                                                        }
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_38_16();
                                                    if (v32)
                                                    {
                                                      OUTLINED_FUNCTION_0_62(v232, v233, v234, v235, v236, v237, v238, v239, v609, v610, v611, *(&v611 + 1), *v612, v240, v241);
                                                      if (!v242)
                                                      {
                                                        *&v13 = OUTLINED_FUNCTION_1_57();
                                                        v17 = 20;
                                                        goto LABEL_23;
                                                      }
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_38_16();
                                                  if (v32)
                                                  {
                                                    OUTLINED_FUNCTION_0_62(v221, v222, v223, v224, v225, v226, v227, v228, v609, v610, v611, *(&v611 + 1), *v612, v229, v230);
                                                    if (!v231)
                                                    {
                                                      *&v13 = OUTLINED_FUNCTION_1_57();
                                                      v17 = 19;
                                                      goto LABEL_23;
                                                    }
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_38_16();
                                                if (v32)
                                                {
                                                  OUTLINED_FUNCTION_0_62(v210, v211, v212, v213, v214, v215, v216, v217, v609, v610, v611, *(&v611 + 1), *v612, v218, v219);
                                                  if (!v220)
                                                  {
                                                    *&v13 = OUTLINED_FUNCTION_1_57();
                                                    v17 = 18;
                                                    goto LABEL_23;
                                                  }
                                                }
                                              }
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_38_16();
                                              if (v32)
                                              {
                                                OUTLINED_FUNCTION_0_62(v199, v200, v201, v202, v203, v204, v205, v206, v609, v610, v611, *(&v611 + 1), *v612, v207, v208);
                                                if (!v209)
                                                {
                                                  *&v13 = OUTLINED_FUNCTION_1_57();
                                                  v17 = 17;
                                                  goto LABEL_23;
                                                }
                                              }
                                            }
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_38_16();
                                            if (v32)
                                            {
                                              OUTLINED_FUNCTION_0_62(v188, v189, v190, v191, v192, v193, v194, v195, v609, v610, v611, *(&v611 + 1), *v612, v196, v197);
                                              if (!v198)
                                              {
                                                *&v13 = OUTLINED_FUNCTION_1_57();
                                                v17 = 16;
                                                goto LABEL_23;
                                              }
                                            }
                                          }
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_38_16();
                                          if (v32)
                                          {
                                            OUTLINED_FUNCTION_0_62(v177, v178, v179, v180, v181, v182, v183, v184, v609, v610, v611, *(&v611 + 1), *v612, v185, v186);
                                            if (!v187)
                                            {
                                              *&v13 = OUTLINED_FUNCTION_1_57();
                                              v17 = 15;
                                              goto LABEL_23;
                                            }
                                          }
                                        }
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_38_16();
                                        if (v32)
                                        {
                                          OUTLINED_FUNCTION_0_62(v166, v167, v168, v169, v170, v171, v172, v173, v609, v610, v611, *(&v611 + 1), *v612, v174, v175);
                                          if (!v176)
                                          {
                                            *&v13 = OUTLINED_FUNCTION_1_57();
                                            v17 = 14;
                                            goto LABEL_23;
                                          }
                                        }
                                      }
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_38_16();
                                      if (v32)
                                      {
                                        OUTLINED_FUNCTION_0_62(v155, v156, v157, v158, v159, v160, v161, v162, v609, v610, v611, *(&v611 + 1), *v612, v163, v164);
                                        if (!v165)
                                        {
                                          *&v13 = OUTLINED_FUNCTION_1_57();
                                          v17 = 13;
                                          goto LABEL_23;
                                        }
                                      }
                                    }
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_38_16();
                                    if (v32)
                                    {
                                      OUTLINED_FUNCTION_0_62(v144, v145, v146, v147, v148, v149, v150, v151, v609, v610, v611, *(&v611 + 1), *v612, v152, v153);
                                      if (!v154)
                                      {
                                        *&v13 = OUTLINED_FUNCTION_1_57();
                                        v17 = 12;
                                        goto LABEL_23;
                                      }
                                    }
                                  }
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_38_16();
                                  if (v32)
                                  {
                                    OUTLINED_FUNCTION_0_62(v133, v134, v135, v136, v137, v138, v139, v140, v609, v610, v611, *(&v611 + 1), *v612, v141, v142);
                                    if (!v143)
                                    {
                                      *&v13 = OUTLINED_FUNCTION_1_57();
                                      v17 = 11;
                                      goto LABEL_23;
                                    }
                                  }
                                }
                              }

                              else
                              {
                                OUTLINED_FUNCTION_38_16();
                                if (v32)
                                {
                                  OUTLINED_FUNCTION_0_62(v122, v123, v124, v125, v126, v127, v128, v129, v609, v610, v611, *(&v611 + 1), *v612, v130, v131);
                                  if (!v132)
                                  {
                                    *&v13 = OUTLINED_FUNCTION_1_57();
                                    v17 = 10;
                                    goto LABEL_23;
                                  }
                                }
                              }
                            }

                            else if (v612[40] == 7)
                            {
                              v19 = 0;
                              v15 = BYTE8(v611);
                              v17 = v611;
                              LOBYTE(v3) = BYTE8(v611) & 1;
                              v18 = v611 & 0xFFFFFFFFFFFFFF00;
                              v14 = 9;
                              goto LABEL_23;
                            }
                          }

                          else
                          {
                            OUTLINED_FUNCTION_38_16();
                            if (v32)
                            {
                              OUTLINED_FUNCTION_0_62(v111, v112, v113, v114, v115, v116, v117, v118, v609, v610, v611, *(&v611 + 1), *v612, v119, v120);
                              if (!v121)
                              {
                                *&v13 = OUTLINED_FUNCTION_1_57();
                                v17 = 9;
                                goto LABEL_23;
                              }
                            }
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_38_16();
                          if (v32)
                          {
                            OUTLINED_FUNCTION_0_62(v100, v101, v102, v103, v104, v105, v106, v107, v609, v610, v611, *(&v611 + 1), *v612, v108, v109);
                            if (!v110)
                            {
                              *&v13 = OUTLINED_FUNCTION_1_57();
                              v17 = 8;
                              goto LABEL_23;
                            }
                          }
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_38_16();
                        if (v32)
                        {
                          OUTLINED_FUNCTION_0_62(v89, v90, v91, v92, v93, v94, v95, v96, v609, v610, v611, *(&v611 + 1), *v612, v97, v98);
                          if (!v99)
                          {
                            *&v13 = OUTLINED_FUNCTION_1_57();
                            v17 = 7;
                            goto LABEL_23;
                          }
                        }
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_38_16();
                      if (v32)
                      {
                        OUTLINED_FUNCTION_0_62(v78, v79, v80, v81, v82, v83, v84, v85, v609, v610, v611, *(&v611 + 1), *v612, v86, v87);
                        if (!v88)
                        {
                          *&v13 = OUTLINED_FUNCTION_1_57();
                          v17 = 6;
                          goto LABEL_23;
                        }
                      }
                    }
                  }

                  else if (!v612[40])
                  {
                    v19 = 0;
                    v18 = 0;
                    v15 = v611;
                    v17 = v611 & 1;
                    v14 = 4;
                    goto LABEL_23;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_38_16();
                  if (v32)
                  {
                    OUTLINED_FUNCTION_0_62(v67, v68, v69, v70, v71, v72, v73, v74, v609, v610, v611, *(&v611 + 1), *v612, v75, v76);
                    if (!v77)
                    {
                      *&v13 = OUTLINED_FUNCTION_1_57();
                      v17 = 5;
                      goto LABEL_23;
                    }
                  }
                }
              }

              else
              {
                OUTLINED_FUNCTION_38_16();
                if (v32)
                {
                  OUTLINED_FUNCTION_0_62(v56, v57, v58, v59, v60, v61, v62, v63, v609, v610, v611, *(&v611 + 1), *v612, v64, v65);
                  if (!v66)
                  {
                    *&v13 = OUTLINED_FUNCTION_1_57();
                    v17 = 4;
                    goto LABEL_23;
                  }
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_38_16();
              if (v32)
              {
                OUTLINED_FUNCTION_0_62(v45, v46, v47, v48, v49, v50, v51, v52, v609, v610, v611, *(&v611 + 1), *v612, v53, v54);
                if (!v55)
                {
                  *&v13 = OUTLINED_FUNCTION_1_57();
                  v17 = 3;
                  goto LABEL_23;
                }
              }
            }
          }

          else if (v612[40] == 8)
          {
            OUTLINED_FUNCTION_82_5();
            v14 = 3;
            goto LABEL_23;
          }
        }

        else
        {
          OUTLINED_FUNCTION_38_16();
          if (v32)
          {
            OUTLINED_FUNCTION_0_62(v34, v35, v36, v37, v38, v39, v40, v41, v609, v610, v611, *(&v611 + 1), *v612, v42, v43);
            if (!v44)
            {
              *&v13 = OUTLINED_FUNCTION_1_57();
              v17 = 2;
              goto LABEL_23;
            }
          }
        }
      }

      else if (v612[40] == 6)
      {
        OUTLINED_FUNCTION_79_6();
        v14 = 2;
        goto LABEL_23;
      }
    }

    else if (v612[40] == 5)
    {
      OUTLINED_FUNCTION_79_6();
      v14 = 1;
      goto LABEL_23;
    }
  }

  else
  {
    OUTLINED_FUNCTION_38_16();
    if (v32)
    {
      OUTLINED_FUNCTION_0_62(v22, v23, v24, v25, v26, v27, v28, v29, v609, v610, v611, *(&v611 + 1), *v612, v30, v31);
      if (!v33)
      {
        *&v13 = OUTLINED_FUNCTION_1_57();
        v17 = 1;
        goto LABEL_23;
      }
    }
  }

LABEL_361:
  sub_1C8EB0D2C(&v611);
  sub_1C8EB0D5C();
  swift_allocError();
  *v608 = 1;
  swift_willThrow();
}

double SystemToolProtocol.init(from:metadata:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1;
  sub_1C8EAAE40(v4);
  v5 = v12;
  v9 = v11[1];
  v10 = v11[0];
  v6 = swift_unknownObjectRetain();
  sub_1C8EAC4D4(v6, v11);
  v13[1] = v9;
  v13[0] = v10;
  v14 = v5;
  SystemToolProtocol.init(from:metadata:)(v13, v11, v15);

  swift_unknownObjectRelease();
  if (!v2)
  {
    v8 = v15[1];
    *a2 = v15[0];
    a2[1] = v8;
    a2[2] = v16[0];
    result = *(v16 + 9);
    *(a2 + 41) = *(v16 + 9);
  }

  return result;
}

void sub_1C8EAAE40(void *a1)
{
  v5 = sub_1C9063D3C();
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_93_4();
  v11 = *MEMORY[0x1E69AC528];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  v13 = v13 && v2 == v12;
  if (v13)
  {

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_8:
    v14 = 6;
    goto LABEL_9;
  }

  v15 = *MEMORY[0x1E69AC4A0];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v16)
  {

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_17:
    v14 = 7;
    goto LABEL_9;
  }

  v18 = *MEMORY[0x1E69AC518];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v19)
  {

    goto LABEL_25;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_25:
    v14 = 8;
    goto LABEL_9;
  }

  v21 = *MEMORY[0x1E69AC358];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v22)
  {

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_33:
    v14 = 9;
    goto LABEL_9;
  }

  v24 = *MEMORY[0x1E69AC3E0];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v25)
  {

    goto LABEL_41;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_41:
    v14 = 10;
    goto LABEL_9;
  }

  v27 = *MEMORY[0x1E69AC338];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v28)
  {

    goto LABEL_49;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_49:
    v14 = 11;
    goto LABEL_9;
  }

  v30 = *MEMORY[0x1E69AC458];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v31)
  {

    goto LABEL_57;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_57:
    v14 = 12;
    goto LABEL_9;
  }

  v33 = *MEMORY[0x1E69AC430];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v34)
  {

    goto LABEL_65;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_65:
    v14 = 13;
    goto LABEL_9;
  }

  v36 = *MEMORY[0x1E69AC388];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v37)
  {

    goto LABEL_73;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_73:
    v14 = 16;
    goto LABEL_9;
  }

  v39 = *MEMORY[0x1E69AC368];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v40)
  {

    goto LABEL_81;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_81:
    v14 = 17;
    goto LABEL_9;
  }

  v42 = *MEMORY[0x1E69AC410];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v43)
  {

    goto LABEL_89;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_89:
    v14 = 18;
    goto LABEL_9;
  }

  v45 = *MEMORY[0x1E69AC330];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v46)
  {

    goto LABEL_97;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_97:
    v14 = 19;
    goto LABEL_9;
  }

  v48 = *MEMORY[0x1E69AC460];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v49)
  {

    goto LABEL_105;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_105:
    v14 = 20;
    goto LABEL_9;
  }

  v51 = *MEMORY[0x1E69AC478];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v52)
  {

    goto LABEL_113;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_113:
    v14 = 21;
    goto LABEL_9;
  }

  v54 = *MEMORY[0x1E69AC520];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v55)
  {

    goto LABEL_121;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_121:
    v14 = 22;
    goto LABEL_9;
  }

  v57 = *MEMORY[0x1E69AC538];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v58)
  {

    goto LABEL_129;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_129:
    v14 = 23;
    goto LABEL_9;
  }

  v60 = *MEMORY[0x1E69AC348];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v61)
  {

    goto LABEL_137;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_137:
    v14 = 24;
    goto LABEL_9;
  }

  v63 = *MEMORY[0x1E69AC378];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v64)
  {

    goto LABEL_145;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_145:
    v14 = 25;
    goto LABEL_9;
  }

  v66 = *MEMORY[0x1E69AC390];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v67)
  {

    goto LABEL_153;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_153:
    v14 = 26;
    goto LABEL_9;
  }

  v69 = *MEMORY[0x1E69AC3A0];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v70)
  {

    goto LABEL_161;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_161:
    v14 = 27;
    goto LABEL_9;
  }

  v72 = *MEMORY[0x1E69AC3A8];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v73)
  {

    goto LABEL_169;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_169:
    v14 = 28;
    goto LABEL_9;
  }

  v75 = *MEMORY[0x1E69AC3C8];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v76)
  {

    goto LABEL_177;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_177:
    v14 = 29;
    goto LABEL_9;
  }

  v78 = *MEMORY[0x1E69AC408];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v79)
  {

    goto LABEL_185;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_185:
    v14 = 30;
    goto LABEL_9;
  }

  v81 = *MEMORY[0x1E69AC428];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v82)
  {

    goto LABEL_193;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_193:
    v14 = 31;
    goto LABEL_9;
  }

  v84 = *MEMORY[0x1E69AC470];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v85)
  {

    goto LABEL_201;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_201:
    v14 = 32;
    goto LABEL_9;
  }

  v87 = *MEMORY[0x1E69AC450];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v88)
  {

    goto LABEL_209;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_209:
    v14 = 33;
    goto LABEL_9;
  }

  v90 = *MEMORY[0x1E69AC420];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v91)
  {

    goto LABEL_217;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_217:
    v14 = 34;
    goto LABEL_9;
  }

  v93 = *MEMORY[0x1E69AC320];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v94)
  {

    goto LABEL_225;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_225:
    v14 = 35;
    goto LABEL_9;
  }

  v96 = *MEMORY[0x1E69AC318];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v97)
  {

    goto LABEL_233;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_233:
    v14 = 36;
    goto LABEL_9;
  }

  v99 = *MEMORY[0x1E69AC448];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v100)
  {

    goto LABEL_241;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_241:
    v14 = 37;
    goto LABEL_9;
  }

  v102 = *MEMORY[0x1E69AC4E0];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v103)
  {

    goto LABEL_249;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_249:
    v14 = 38;
    goto LABEL_9;
  }

  v105 = *MEMORY[0x1E69AC4E8];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v106)
  {

    goto LABEL_257;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_257:
    v14 = 39;
    goto LABEL_9;
  }

  v108 = *MEMORY[0x1E69AC418];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v109)
  {

    goto LABEL_265;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_265:
    v14 = 40;
    goto LABEL_9;
  }

  v111 = *MEMORY[0x1E69AC468];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v112)
  {

    goto LABEL_273;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_273:
    v14 = 41;
    goto LABEL_9;
  }

  v114 = *MEMORY[0x1E69AC3B0];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v115)
  {

    goto LABEL_281;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_281:
    v14 = 42;
    goto LABEL_9;
  }

  v117 = *MEMORY[0x1E69AC3C0];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v118)
  {

    goto LABEL_289;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_289:
    v14 = 43;
    goto LABEL_9;
  }

  v120 = *MEMORY[0x1E69AC3D8];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v121)
  {

    goto LABEL_297;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_297:
    v14 = 44;
    goto LABEL_9;
  }

  v123 = *MEMORY[0x1E69AC530];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v124)
  {

    goto LABEL_305;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_305:
    v14 = 45;
    goto LABEL_9;
  }

  v126 = *MEMORY[0x1E69AC360];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v127)
  {

    goto LABEL_313;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_313:
    v14 = 46;
    goto LABEL_9;
  }

  v129 = *MEMORY[0x1E69AC480];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v130)
  {

    goto LABEL_321;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_321:
    v14 = 47;
    goto LABEL_9;
  }

  v132 = *MEMORY[0x1E69AC4C8];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v133)
  {

    goto LABEL_329;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_329:
    v14 = 48;
    goto LABEL_9;
  }

  v135 = *MEMORY[0x1E69AC4D0];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v136)
  {

    goto LABEL_337;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_337:
    v14 = 49;
    goto LABEL_9;
  }

  v138 = *MEMORY[0x1E69AC4B8];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v139)
  {

    goto LABEL_345;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_345:
    v14 = 50;
    goto LABEL_9;
  }

  v141 = *MEMORY[0x1E69AC4C0];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v142)
  {

    goto LABEL_353;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_353:
    v14 = 51;
    goto LABEL_9;
  }

  v144 = *MEMORY[0x1E69AC3E8];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v145)
  {

    goto LABEL_361;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_361:
    v14 = 52;
    goto LABEL_9;
  }

  v147 = *MEMORY[0x1E69AC3F8];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v148)
  {

    goto LABEL_369;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_369:
    v14 = 53;
    goto LABEL_9;
  }

  v150 = *MEMORY[0x1E69AC4F8];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v151)
  {

    goto LABEL_377;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_377:
    v14 = 54;
    goto LABEL_9;
  }

  v153 = *MEMORY[0x1E69AC510];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v154)
  {

    goto LABEL_385;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_385:
    v14 = 55;
    goto LABEL_9;
  }

  v156 = *MEMORY[0x1E69AC328];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v157)
  {

    goto LABEL_393;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_393:
    v14 = 56;
    goto LABEL_9;
  }

  v159 = *MEMORY[0x1E69AC4D8];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v160)
  {

    goto LABEL_401;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_401:
    v14 = 57;
    goto LABEL_9;
  }

  v162 = *MEMORY[0x1E69AC3B8];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v163)
  {

    goto LABEL_409;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_409:
    v14 = 58;
    goto LABEL_9;
  }

  v165 = *MEMORY[0x1E69AC440];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v166)
  {

    goto LABEL_417;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_417:
    v14 = 60;
    goto LABEL_9;
  }

  v168 = *MEMORY[0x1E69AC490];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v169)
  {

    goto LABEL_425;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_425:
    v14 = 61;
    goto LABEL_9;
  }

  v171 = *MEMORY[0x1E69AC4A8];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v172)
  {

    goto LABEL_433;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_433:
    v14 = 62;
    goto LABEL_9;
  }

  v174 = *MEMORY[0x1E69AC308];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v175)
  {
    goto LABEL_445;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {
LABEL_444:

LABEL_446:
    v14 = 1;
    goto LABEL_9;
  }

  v177 = *MEMORY[0x1E69AC310];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v178)
  {
LABEL_445:

    goto LABEL_446;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {
    goto LABEL_444;
  }

  v180 = *MEMORY[0x1E69AC500];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v181)
  {

    goto LABEL_454;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_454:
    v14 = 4;
    goto LABEL_9;
  }

  v183 = *MEMORY[0x1E69AC4B0];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_31_16();
  OUTLINED_FUNCTION_36_14();
  if (v13 && v2 == v184)
  {

    goto LABEL_462;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_67_9();

  if (v3)
  {

LABEL_462:
    v14 = 15;
    goto LABEL_9;
  }

  v186 = *MEMORY[0x1E69E1110];
  sub_1C906371C();
  v187 = swift_allocObject();
  *(v187 + 16) = a1;
  v201 = a1;
  v200 = sub_1C9063D1C();
  v188 = sub_1C906444C();
  v189 = swift_allocObject();
  *(v189 + 16) = 32;
  v190 = swift_allocObject();
  *(v190 + 16) = 8;
  v191 = swift_allocObject();
  *(v191 + 16) = sub_1C8EB5898;
  *(v191 + 24) = v187;
  v192 = swift_allocObject();
  *(v192 + 16) = sub_1C8EB58A0;
  *(v192 + 24) = v191;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3163E8, &qword_1C9085028);
  inited = swift_initStackObject();
  sub_1C8E1AA70(inited, 3);
  *v194 = sub_1C8E1AA80;
  v194[1] = v189;
  v194[2] = sub_1C8E1BB4C;
  v194[3] = v190;
  v194[4] = sub_1C8EB58A8;
  v194[5] = v192;

  if (os_log_type_enabled(v200, v188))
  {
    v195 = sub_1C8D1CE50();
    v196 = swift_slowAlloc();
    v202 = v196;
    *v195 = 136315138;
    v197 = sub_1C9063EEC();
    v199 = sub_1C8CACE04(v197, v198, &v202);

    *(v195 + 4) = v199;
    _os_log_impl(&dword_1C8C9B000, v200, v188, "Found unknown system protocol, please add me: %s", v195, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v196);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
  }

  (*(v8 + 8))(v1, v5);
  v14 = 0;
LABEL_9:
  OUTLINED_FUNCTION_111_3(v14);
  OUTLINED_FUNCTION_163();
}

void sub_1C8EAC4D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1C9063D3C();
  v7 = OUTLINED_FUNCTION_11(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_93_4();
  if (a1)
  {
    objc_opt_self();
    if (OUTLINED_FUNCTION_101_4())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      objc_opt_self();
      v15 = OUTLINED_FUNCTION_101_4();
      if (v15)
      {
        LOBYTE(v12) = [v15 persistState];
        swift_unknownObjectRelease();
        v14 = 0;
        v13 = 0;
        goto LABEL_11;
      }

      objc_opt_self();
      v16 = OUTLINED_FUNCTION_101_4();
      if (v16)
      {
        v6 = [v16 supportedCategories];
        v12 = sub_1C906419C();
        swift_unknownObjectRelease();

        v13 = v12 & 0xFFFFFFFFFFFFFF00;
        v14 = 1;
        goto LABEL_11;
      }

      objc_opt_self();
      v17 = OUTLINED_FUNCTION_101_4();
      if (v17)
      {
        v6 = [v17 searchScopes];
        v12 = sub_1C906419C();
        swift_unknownObjectRelease();

        v13 = v12 & 0xFFFFFFFFFFFFFF00;
        v14 = 2;
        goto LABEL_11;
      }

      objc_opt_self();
      v18 = OUTLINED_FUNCTION_101_4();
      if (v18)
      {
        v3 = [v18 entityIdentifier];
        v12 = sub_1C9063EEC();
        v6 = v19;
        swift_unknownObjectRelease();

        v13 = v12 & 0xFFFFFFFFFFFFFF00;
        v14 = 3;
        goto LABEL_11;
      }

      objc_opt_self();
      v20 = OUTLINED_FUNCTION_101_4();
      if (v20)
      {
        v21 = v20;
        v22 = [v20 entityIdentifier];
        v12 = sub_1C9063EEC();
        v6 = v23;

        v24 = [v21 entityProperty];
        v3 = sub_1C9063EEC();
        v9 = v25;
        swift_unknownObjectRelease();

        v13 = v12 & 0xFFFFFFFFFFFFFF00;
        v14 = 4;
        goto LABEL_11;
      }

      v26 = *MEMORY[0x1E69E1110];
      sub_1C906371C();
      swift_unknownObjectRetain();
      v27 = sub_1C9063D1C();
      v28 = sub_1C906444C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v27, v28))
      {
        v36 = v28;
        v29 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v37 = v35;
        *v29 = 136315138;
        v30 = [a1 description];
        v31 = sub_1C9063EEC();
        v33 = v32;

        v34 = sub_1C8CACE04(v31, v33, &v37);

        *(v29 + 4) = v34;
        _os_log_impl(&dword_1C8C9B000, v27, v36, "Found unknown system protocol metadata, please add me: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        OUTLINED_FUNCTION_25_0();
        OUTLINED_FUNCTION_25_0();
      }

      swift_unknownObjectRelease();

      (*(v9 + 8))(v2, v6);
    }
  }

  v6 = 0;
  v3 = 0;
  v9 = 0;
  LOBYTE(v12) = 0;
  v13 = 0;
  v14 = 10;
LABEL_11:
  *a2 = v13 | v12;
  *(a2 + 8) = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v9;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *(a2 + 56) = v14;
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8EAC8B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8EAC94C()
{
  OUTLINED_FUNCTION_109_2();
  if (v2 == 0x696669746E656469 && v1 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_319();
    OUTLINED_FUNCTION_420();
    v4 = v0 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8EAC9B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001C90CC100 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6564695679616C70 && a2 == 0xE90000000000006FLL;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001CLL && 0x80000001C90CC280 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7055797469746E65 && a2 == 0xEE00676E69746164;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79747265706F7270 && a2 == 0xEF72657461647055;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E65746E49707061 && a2 == 0xE900000000000074;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4974694B69726973 && a2 == 0xED0000746E65746ELL;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6566664565646973 && a2 == 0xEA00000000007463;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000001C90CC340 == a2;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x6E61747369737361 && a2 == 0xEF616D6568635374)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C9064C2C();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1C8EACD3C(char a1)
{
  result = 0x7974706D65;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x6564695679616C70;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0x7055797469746E65;
      break;
    case 5:
      result = 0x79747265706F7270;
      break;
    case 6:
      result = 0x6E65746E49707061;
      break;
    case 7:
      result = 0x4974694B69726973;
      break;
    case 8:
      result = 0x6566664565646973;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6E61747369737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8EACEB8()
{
  OUTLINED_FUNCTION_109_2();
  if (v2 == 0x5374736973726570 && v0 == 0xEC00000065746174)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_319();
    OUTLINED_FUNCTION_420();
    v4 = v1 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8EACF20(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_76_6();
  v5 = v5 && v4 == a2;
  if (v5)
  {

    v6 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_319();
    OUTLINED_FUNCTION_420();
    v6 = v2 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1C8EACF88(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_76_6();
  v5 = v5 && v4 == a2;
  if (v5)
  {

    v6 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_319();
    OUTLINED_FUNCTION_420();
    v6 = v2 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1C8EACFF0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_76_6();
  v5 = v5 && v4 == a2;
  if (v5 || (v6 = v3, (OUTLINED_FUNCTION_319() & 1) != 0))
  {

    return 0;
  }

  else if (v6 == 0x7250797469746E65 && a2 == 0xEE0079747265706FLL)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_319();
    OUTLINED_FUNCTION_420();
    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8EAD0A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E65746E69 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8EAD138()
{
  OUTLINED_FUNCTION_109_2();
  v2 = OUTLINED_FUNCTION_105_3();
  if (v4 == (v2 & 0xFFFFFFFFFFFFLL | 0x6353000000000000) && v0 == v3)
  {

    v6 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_319();
    OUTLINED_FUNCTION_420();
    v6 = v1 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1C8EAD198()
{
  OUTLINED_FUNCTION_109_2();
  if (v2 == 0x6C43746E65746E69 && v0 == 0xEF656D614E737361)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_319();
    OUTLINED_FUNCTION_420();
    v4 = v1 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8EAD208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EAC8B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8EAD234(uint64_t a1)
{
  v2 = sub_1C8EB0F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EAD270(uint64_t a1)
{
  v2 = sub_1C8EB0F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EAD2AC(uint64_t a1)
{
  v2 = sub_1C8EB0E04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EAD2E8(uint64_t a1)
{
  v2 = sub_1C8EB0E04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EAD32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EAC9B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EAD354(uint64_t a1)
{
  v2 = sub_1C8EB0DB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EAD390(uint64_t a1)
{
  v2 = sub_1C8EB0DB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EAD3CC(uint64_t a1)
{
  v2 = sub_1C8EB10F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EAD408(uint64_t a1)
{
  v2 = sub_1C8EB10F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EAD444(uint64_t a1)
{
  v2 = sub_1C8EB114C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EAD480(uint64_t a1)
{
  v2 = sub_1C8EB114C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EAD4BC(uint64_t a1)
{
  v2 = sub_1C8EB0FFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EAD4F8(uint64_t a1)
{
  v2 = sub_1C8EB0FFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EAD534(uint64_t a1)
{
  v2 = sub_1C8EB10A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EAD570(uint64_t a1)
{
  v2 = sub_1C8EB10A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EAD5AC(uint64_t a1)
{
  v2 = sub_1C8EB0FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EAD5E8(uint64_t a1)
{
  v2 = sub_1C8EB0FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EAD628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EAD0A8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8EAD654(uint64_t a1)
{
  v2 = sub_1C8EB0E58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EAD690(uint64_t a1)
{
  v2 = sub_1C8EB0E58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EAD6CC(uint64_t a1)
{
  v2 = sub_1C8EB1050();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EAD708(uint64_t a1)
{
  v2 = sub_1C8EB1050();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EAD744(uint64_t a1)
{
  v2 = sub_1C8EB0EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EAD780(uint64_t a1)
{
  v2 = sub_1C8EB0EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EAD7BC(uint64_t a1)
{
  v2 = sub_1C8EB0F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EAD7F8(uint64_t a1)
{
  v2 = sub_1C8EB0F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemToolProtocol.Metadata.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  a10 = v21;
  v25 = v24;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A48, &qword_1C9097628);
  OUTLINED_FUNCTION_11(v129);
  v109[5] = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_97();
  v127 = v30;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A50, &qword_1C9097630);
  OUTLINED_FUNCTION_11(v128);
  v109[4] = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_97();
  v126 = v35;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A58, &qword_1C9097638);
  OUTLINED_FUNCTION_11(v125);
  v109[3] = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_97();
  v124 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A60, &qword_1C9097640);
  OUTLINED_FUNCTION_4_22(v41, &a18);
  v109[2] = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A68, &qword_1C9097648);
  OUTLINED_FUNCTION_4_22(v47, &a14);
  v109[1] = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A70, &qword_1C9097650);
  OUTLINED_FUNCTION_4_22(v53, &a16);
  v122 = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A78, &qword_1C9097658);
  OUTLINED_FUNCTION_4_22(v59, &a11);
  v119 = v60;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A80, &qword_1C9097660);
  OUTLINED_FUNCTION_4_22(v65, &a10);
  v118 = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A88, &qword_1C9097668);
  OUTLINED_FUNCTION_4_22(v71, &v140);
  v115 = v72;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A90, &qword_1C9097670);
  OUTLINED_FUNCTION_4_22(v77, &v138);
  v112 = v78;
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v81);
  v83 = v109 - v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A98, &qword_1C9097678);
  OUTLINED_FUNCTION_11(v84);
  v111 = v85;
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_233();
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318AA0, &qword_1C9097680);
  OUTLINED_FUNCTION_11(v136);
  v134 = v89;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v92);
  v94 = v109 - v93;
  v95 = *v20;
  v132 = v20[1];
  v133 = v95;
  v96 = *(v20 + 1);
  v110 = *(v20 + 2);
  v130 = v96;
  v97 = v20[6];
  v98 = *(v20 + 56);
  v99 = v25;
  v101 = v25[3];
  v100 = v25[4];
  __swift_project_boxed_opaque_existential_1(v99, v101);
  sub_1C8EB0DB0();
  v135 = v94;
  sub_1C9064E1C();
  switch(v98)
  {
    case 1:
      OUTLINED_FUNCTION_110_5();
      sub_1C8EB10A4();
      v83 = v114;
      OUTLINED_FUNCTION_17_24();
      v137 = v133;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_21_2(&qword_1EDA6B530);
      OUTLINED_FUNCTION_74_3();
      OUTLINED_FUNCTION_24_22(&v140);
      sub_1C9064B8C();
      v102 = &v139 + 1;
      goto LABEL_15;
    case 2:
      OUTLINED_FUNCTION_118_3();
      sub_1C8EB1050();
      v83 = v116;
      OUTLINED_FUNCTION_17_24();
      v137 = v133;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_21_2(&qword_1EDA6B530);
      OUTLINED_FUNCTION_74_3();
      OUTLINED_FUNCTION_24_22(&a10);
      sub_1C9064B8C();
      v102 = &v142;
      goto LABEL_15;
    case 3:
      OUTLINED_FUNCTION_122_6();
      sub_1C8EB0FFC();
      v83 = v117;
      OUTLINED_FUNCTION_17_24();
      OUTLINED_FUNCTION_41_13(&a11);
      sub_1C9064B2C();
      v102 = &a9;
      goto LABEL_15;
    case 4:
      OUTLINED_FUNCTION_115_3();
      sub_1C8EB0FA8();
      v83 = v121;
      OUTLINED_FUNCTION_17_24();
      LOBYTE(v137) = 0;
      OUTLINED_FUNCTION_41_13(&a16);
      v103 = a10;
      sub_1C9064B2C();
      if (!v103)
      {
        OUTLINED_FUNCTION_68_5();
        OUTLINED_FUNCTION_69_0();
        sub_1C9064B2C();
      }

      v102 = &a15;
      goto LABEL_15;
    case 5:
      OUTLINED_FUNCTION_119_7();
      sub_1C8EB0F54();
      v83 = v120;
      OUTLINED_FUNCTION_17_24();
      OUTLINED_FUNCTION_41_13(&a14);
      sub_1C9064B2C();
      v102 = &v129;
      goto LABEL_15;
    case 6:
      OUTLINED_FUNCTION_114_3();
      sub_1C8EB0F00();
      v83 = v123;
      OUTLINED_FUNCTION_17_24();
      OUTLINED_FUNCTION_41_13(&a18);
      sub_1C9064B2C();
      v102 = &v130;
      goto LABEL_15;
    case 7:
      OUTLINED_FUNCTION_113_4();
      sub_1C8EB0EAC();
      v83 = v124;
      OUTLINED_FUNCTION_17_24();
      v137 = v133;
      LOBYTE(v138) = v132 & 1;
      sub_1C8EAF754();
      v97 = v125;
      OUTLINED_FUNCTION_62_8();
      sub_1C9064B8C();
      v102 = &v130 + 1;
      goto LABEL_15;
    case 8:
      OUTLINED_FUNCTION_112_4();
      sub_1C8EB0E58();
      v83 = v126;
      OUTLINED_FUNCTION_17_24();
      v137 = v133;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_21_2(&qword_1EDA6B530);
      OUTLINED_FUNCTION_74_3();
      v97 = v128;
      OUTLINED_FUNCTION_62_8();
      sub_1C9064B8C();
      v102 = &v131;
      goto LABEL_15;
    case 9:
      OUTLINED_FUNCTION_124_5();
      sub_1C8EB0E04();
      v83 = v127;
      OUTLINED_FUNCTION_17_24();
      v137 = v133;
      v138 = v132;
      v139 = v130;
      v140 = v110;
      v141 = v97;
      sub_1C8E28354();
      v97 = v129;
      OUTLINED_FUNCTION_62_8();
      sub_1C9064B8C();
      v102 = &v132;
      goto LABEL_15;
    case 10:
      LOBYTE(v137) = 0;
      sub_1C8EB114C();
      v105 = v135;
      v104 = v136;
      sub_1C9064ACC();
      v106 = OUTLINED_FUNCTION_13_22(&v136);
      v107(v106, v84);
      (*(v134 + 8))(v105, v104);
      goto LABEL_16;
    default:
      OUTLINED_FUNCTION_68_5();
      sub_1C8EB10F8();
      OUTLINED_FUNCTION_17_24();
      v97 = v113;
      OUTLINED_FUNCTION_62_8();
      sub_1C9064B3C();
      v102 = &v137;
LABEL_15:
      OUTLINED_FUNCTION_296(v102);
      v108(v83, v97);
      (*(v134 + 8))(v101, v98);
LABEL_16:
      OUTLINED_FUNCTION_198();
      return;
  }
}

void SystemToolProtocol.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v21;
  a20 = v22;
  v218 = v20;
  v24 = v23;
  v212 = v25;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318B08, &qword_1C9097688);
  OUTLINED_FUNCTION_11(v205);
  v213 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_97();
  v211 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318B10, &qword_1C9097690);
  OUTLINED_FUNCTION_4_22(v31, &a18);
  v204 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_97();
  v210 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318B18, &qword_1C9097698);
  OUTLINED_FUNCTION_4_22(v37, &a16);
  v203 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_97();
  v216 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318B20, &qword_1C90976A0);
  OUTLINED_FUNCTION_4_22(v43, &a14);
  v202 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_97();
  v215 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318B28, &qword_1C90976A8);
  OUTLINED_FUNCTION_4_22(v49, &a11);
  v201 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_97();
  v214 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318B30, &qword_1C90976B0);
  OUTLINED_FUNCTION_4_22(v55, &a12);
  v200 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_97();
  v209 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318B38, &qword_1C90976B8);
  OUTLINED_FUNCTION_4_22(v61, &v226);
  v199 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_97();
  v208 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318B40, &qword_1C90976C0);
  OUTLINED_FUNCTION_4_22(v67, &v224);
  v198 = v68;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_97();
  v207 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318B48, &qword_1C90976C8);
  OUTLINED_FUNCTION_4_22(v73, &v222);
  v197 = v74;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_97();
  v206 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318B50, &qword_1C90976D0);
  OUTLINED_FUNCTION_4_22(v79, &v220);
  v195 = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v187 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318B58, &qword_1C90976D8);
  OUTLINED_FUNCTION_11(v86);
  v194 = v87;
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v187 - v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318B60, &qword_1C90976E0);
  OUTLINED_FUNCTION_11(v93);
  v95 = v94;
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v187 - v99;
  v101 = v24[3];
  v102 = v24[4];
  v217 = v24;
  __swift_project_boxed_opaque_existential_1(v24, v101);
  sub_1C8EB0DB0();
  v103 = v218;
  sub_1C9064DEC();
  if (v103)
  {
    goto LABEL_8;
  }

  v191 = v92;
  v190 = v86;
  v192 = v85;
  v104 = v214;
  v105 = v215;
  v106 = v216;
  v218 = v95;
  v107 = sub_1C9064A9C();
  sub_1C8CB8914(v107, 0);
  if (v109 == v110 >> 1)
  {
LABEL_7:
    v119 = sub_1C90647DC();
    swift_allocError();
    v121 = v120;
    v122 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v121 = &type metadata for SystemToolProtocol.Metadata;
    sub_1C906499C();
    OUTLINED_FUNCTION_43_4();
    v123 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v119);
    (*(v124 + 104))(v121);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_33_14();
    v125 = OUTLINED_FUNCTION_332();
    v126(v125);
LABEL_8:
    v116 = v217;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v116);
    OUTLINED_FUNCTION_198();
    return;
  }

  v193 = v93;
  v189 = 0;
  if (v109 < (v110 >> 1))
  {
    v188 = *(v108 + v109);
    sub_1C8CB891C(v109 + 1);
    v112 = v111;
    v114 = v113;
    swift_unknownObjectRelease();
    v115 = v213;
    if (v112 == v114 >> 1)
    {
      v116 = v193;
      v117 = v189;
      switch(v188)
      {
        case 1:
          OUTLINED_FUNCTION_68_5();
          sub_1C8EB10F8();
          LOBYTE(v106) = v192;
          OUTLINED_FUNCTION_23_21();
          OUTLINED_FUNCTION_19_23();
          v127 = v196;
          v128 = sub_1C9064A1C();
          if (!v117)
          {
            v114 = v128;
            swift_unknownObjectRelease();
            v161 = OUTLINED_FUNCTION_6_26(&v219);
            v162(v161, v127);
            OUTLINED_FUNCTION_11_27();
            OUTLINED_FUNCTION_69_7();
            v163();
            v143 = 0;
            v140 = 0;
            v141 = 0;
            v104 = v114 & 1;
            goto LABEL_22;
          }

          swift_unknownObjectRelease();
          v129 = OUTLINED_FUNCTION_6_26(&v219);
          v131(v129, v127);
          OUTLINED_FUNCTION_11_27();
          OUTLINED_FUNCTION_69_7();
          v132();
          goto LABEL_9;
        case 2:
          OUTLINED_FUNCTION_110_5();
          sub_1C8EB10A4();
          OUTLINED_FUNCTION_23_21();
          v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
          OUTLINED_FUNCTION_22_1(&unk_1EDA6B520);
          OUTLINED_FUNCTION_40_15();
          OUTLINED_FUNCTION_64_6();
          swift_unknownObjectRelease();
          v151 = OUTLINED_FUNCTION_54(&v221);
          v152(v151, v106);
          v153 = OUTLINED_FUNCTION_11_27();
          v154(v153, v116);
          OUTLINED_FUNCTION_80_4();
          v143 = 1;
          v116 = v217;
          goto LABEL_22;
        case 3:
          OUTLINED_FUNCTION_118_3();
          sub_1C8EB1050();
          OUTLINED_FUNCTION_23_21();
          OUTLINED_FUNCTION_19_23();
          v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
          OUTLINED_FUNCTION_22_1(&unk_1EDA6B520);
          OUTLINED_FUNCTION_40_15();
          OUTLINED_FUNCTION_64_6();
          swift_unknownObjectRelease();
          v155 = OUTLINED_FUNCTION_54(&v223);
          v156(v155, v106);
          OUTLINED_FUNCTION_11_27();
          OUTLINED_FUNCTION_69_7();
          v157();
          OUTLINED_FUNCTION_80_4();
          v143 = 2;
          goto LABEL_22;
        case 4:
          OUTLINED_FUNCTION_122_6();
          sub_1C8EB0FFC();
          OUTLINED_FUNCTION_23_21();
          OUTLINED_FUNCTION_19_23();
          OUTLINED_FUNCTION_61_10(&v226);
          OUTLINED_FUNCTION_102_5();
          v145 = OUTLINED_FUNCTION_8_0(&v225);
          v146(v145, v105);
          OUTLINED_FUNCTION_11_27();
          OUTLINED_FUNCTION_69_7();
          v147();
          OUTLINED_FUNCTION_92_4();
          v143 = 3;
          goto LABEL_22;
        case 5:
          OUTLINED_FUNCTION_115_3();
          sub_1C8EB0FA8();
          v130 = v209;
          OUTLINED_FUNCTION_23_21();
          OUTLINED_FUNCTION_19_23();
          LOBYTE(v219) = 0;
          v104 = OUTLINED_FUNCTION_61_10(&a12);
          LOBYTE(v106) = v164;
          v216 = v100;
          OUTLINED_FUNCTION_68_5();
          v165 = sub_1C9064A0C();
          v166 = (v200 + 8);
          v189 = 0;
          v114 = v165;
          v184 = v183;
          swift_unknownObjectRelease();
          (*v166)(v130, v105);
          v185 = OUTLINED_FUNCTION_116_6();
          v186(v185);
          OUTLINED_FUNCTION_92_4();
          *&v142 = v184;
          v143 = 4;
          goto LABEL_22;
        case 6:
          OUTLINED_FUNCTION_119_7();
          sub_1C8EB0F54();
          OUTLINED_FUNCTION_23_21();
          OUTLINED_FUNCTION_19_23();
          OUTLINED_FUNCTION_61_10(&a11);
          OUTLINED_FUNCTION_102_5();
          v167 = OUTLINED_FUNCTION_8_0(&a10);
          v168(v167, v105);
          OUTLINED_FUNCTION_11_27();
          OUTLINED_FUNCTION_69_7();
          v169();
          OUTLINED_FUNCTION_92_4();
          v143 = 5;
          goto LABEL_22;
        case 7:
          OUTLINED_FUNCTION_114_3();
          sub_1C8EB0F00();
          OUTLINED_FUNCTION_23_21();
          OUTLINED_FUNCTION_19_23();
          OUTLINED_FUNCTION_61_10(&a14);
          OUTLINED_FUNCTION_102_5();
          v158 = OUTLINED_FUNCTION_8_0(&a13);
          v159(v158, v105);
          OUTLINED_FUNCTION_11_27();
          OUTLINED_FUNCTION_69_7();
          v160();
          OUTLINED_FUNCTION_92_4();
          v143 = 6;
          goto LABEL_22;
        case 8:
          OUTLINED_FUNCTION_113_4();
          sub_1C8EB0EAC();
          OUTLINED_FUNCTION_23_21();
          OUTLINED_FUNCTION_19_23();
          sub_1C8EB0CD8();
          OUTLINED_FUNCTION_126_3();
          v114 = v203 + 8;
          v144 = (v218 + 8);
          swift_unknownObjectRelease();
          v176 = *v114;
          v177 = OUTLINED_FUNCTION_278();
          v178(v177);
          v179 = *v144;
          v180 = OUTLINED_FUNCTION_78_7();
          v181(v180);
          v140 = 0;
          v104 = v219;
          LOBYTE(v106) = v220;
          a10 = v220;
          v141 = v219 & 0xFFFFFFFFFFFFFF00;
          v143 = 7;
          goto LABEL_22;
        case 9:
          OUTLINED_FUNCTION_112_4();
          sub_1C8EB0E58();
          OUTLINED_FUNCTION_23_21();
          OUTLINED_FUNCTION_19_23();
          v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
          OUTLINED_FUNCTION_22_1(&unk_1EDA6B520);
          OUTLINED_FUNCTION_40_15();
          OUTLINED_FUNCTION_64_6();
          swift_unknownObjectRelease();
          v148 = OUTLINED_FUNCTION_54(&a17);
          v149(v148, v106);
          OUTLINED_FUNCTION_11_27();
          OUTLINED_FUNCTION_69_7();
          v150();
          OUTLINED_FUNCTION_80_4();
          v143 = 8;
          goto LABEL_22;
        case 10:
          OUTLINED_FUNCTION_124_5();
          sub_1C8EB0E04();
          OUTLINED_FUNCTION_23_21();
          OUTLINED_FUNCTION_19_23();
          sub_1C8E28C20();
          OUTLINED_FUNCTION_126_3();
          v133 = v218;
          swift_unknownObjectRelease();
          v170 = *(v115 + 8);
          v171 = OUTLINED_FUNCTION_278();
          v172(v171);
          v173 = *(v133 + 8);
          v174 = OUTLINED_FUNCTION_78_7();
          v175(v174);
          v104 = v219;
          LOBYTE(v106) = v220;
          v114 = v221;
          OUTLINED_FUNCTION_92_4();
          v143 = 9;
          goto LABEL_22;
        default:
          LOBYTE(v219) = 0;
          sub_1C8EB114C();
          OUTLINED_FUNCTION_23_21();
          v118 = v116;
          v116 = v217;
          swift_unknownObjectRelease();
          v134 = OUTLINED_FUNCTION_6_26(&v218);
          v135(v134, v190);
          v136 = OUTLINED_FUNCTION_11_27();
          v137(v136, v118);
          v114 = 0;
          v138 = 0;
          v139 = 0;
          LOBYTE(v106) = 0;
          v140 = 0;
          v104 = 0;
          v141 = 0;
          v142 = 0uLL;
          v143 = 10;
LABEL_22:
          v182 = v212;
          *v212 = v141 | v104;
          v182[1] = v140 | v106;
          v182[2] = v114;
          *(v182 + 3) = v142;
          v182[5] = v138;
          v182[6] = v139;
          *(v182 + 56) = v143;
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t SystemToolProtocol.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 8);
  switch(*(v1 + 56))
  {
    case 1:
      *a1 = result;
      *(a1 + 8) = v3;
      v4 = 5;
      goto LABEL_11;
    case 2:
      *a1 = result;
      *(a1 + 8) = v3;
      v4 = 6;
      goto LABEL_11;
    case 3:
      *a1 = result;
      v5 = 8;
      goto LABEL_9;
    case 4:
      *a1 = result & 1;
      *(a1 + 56) = 0;
      return result;
    case 5:
      *a1 = result;
      v5 = 1;
      goto LABEL_9;
    case 6:
      *a1 = result;
      v5 = 2;
LABEL_9:
      *(a1 + 56) = v5;
      goto LABEL_12;
    case 7:
      *a1 = result;
      *(a1 + 8) = v3;
      v4 = 3;
LABEL_11:
      *(a1 + 56) = v4;
      goto LABEL_12;
    case 8:
      v6 = *(v1 + 16);
      v7 = *(v1 + 24);
      *a1 = result;
      *(a1 + 8) = v3;
      *(a1 + 16) = v6;
      *(a1 + 24) = v7;
      *(a1 + 56) = 4;

LABEL_12:

    case 9:
      *a1 = result;
      *(a1 + 8) = v3 & 1;
      v8 = 7;
      goto LABEL_17;
    default:
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      v8 = 10;
LABEL_17:
      *(a1 + 56) = v8;
      return result;
  }
}

uint64_t sub_1C8EAF510()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_1C8D2FDBC();
}

uint64_t sub_1C8EAF5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v9 = *(a1 + 32);
  v6 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v6;
  v11 = *(a2 + 32);
  return sub_1C8E5AFC8(v8, v10, a3, a4, a5) & 1;
}

void sub_1C8EAF5FC(void *a1@<X8>)
{
  SystemToolProtocol.Identifier.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1C8EAF624(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C8EAF644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318518, &qword_1C9097200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C8EAF6AC()
{
  result = qword_1EDA6CB60;
  if (!qword_1EDA6CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB60);
  }

  return result;
}

unint64_t sub_1C8EAF700()
{
  result = qword_1EDA6B460;
  if (!qword_1EDA6B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B460);
  }

  return result;
}

unint64_t sub_1C8EAF754()
{
  result = qword_1EDA636E8;
  if (!qword_1EDA636E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636E8);
  }

  return result;
}

unint64_t sub_1C8EAF7A8()
{
  result = qword_1EC318728;
  if (!qword_1EC318728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318728);
  }

  return result;
}

unint64_t sub_1C8EAF7FC()
{
  result = qword_1EC318730;
  if (!qword_1EC318730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318730);
  }

  return result;
}

unint64_t sub_1C8EAF850()
{
  result = qword_1EDA66510;
  if (!qword_1EDA66510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66510);
  }

  return result;
}

unint64_t sub_1C8EAF8A4()
{
  result = qword_1EDA66538;
  if (!qword_1EDA66538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66538);
  }

  return result;
}

unint64_t sub_1C8EAF8F8()
{
  result = qword_1EDA6B438;
  if (!qword_1EDA6B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B438);
  }

  return result;
}

unint64_t sub_1C8EAF94C()
{
  result = qword_1EC318738;
  if (!qword_1EC318738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318738);
  }

  return result;
}

unint64_t sub_1C8EAF9A0()
{
  result = qword_1EDA66528;
  if (!qword_1EDA66528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66528);
  }

  return result;
}

unint64_t sub_1C8EAF9F4()
{
  result = qword_1EC318740;
  if (!qword_1EC318740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318740);
  }

  return result;
}

unint64_t sub_1C8EAFA48()
{
  result = qword_1EC318748;
  if (!qword_1EC318748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318748);
  }

  return result;
}

unint64_t sub_1C8EAFA9C()
{
  result = qword_1EDA664E8;
  if (!qword_1EDA664E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA664E8);
  }

  return result;
}

unint64_t sub_1C8EAFAF0()
{
  result = qword_1EC318750;
  if (!qword_1EC318750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318750);
  }

  return result;
}

unint64_t sub_1C8EAFB44()
{
  result = qword_1EDA6B400;
  if (!qword_1EDA6B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B400);
  }

  return result;
}

unint64_t sub_1C8EAFB98()
{
  result = qword_1EC318758;
  if (!qword_1EC318758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318758);
  }

  return result;
}

unint64_t sub_1C8EAFBEC()
{
  result = qword_1EC318760;
  if (!qword_1EC318760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318760);
  }

  return result;
}

unint64_t sub_1C8EAFC40()
{
  result = qword_1EC318768;
  if (!qword_1EC318768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318768);
  }

  return result;
}

unint64_t sub_1C8EAFC94()
{
  result = qword_1EDA66568;
  if (!qword_1EDA66568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66568);
  }

  return result;
}

unint64_t sub_1C8EAFCE8()
{
  result = qword_1EC318770;
  if (!qword_1EC318770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318770);
  }

  return result;
}

unint64_t sub_1C8EAFD3C()
{
  result = qword_1EDA664F0;
  if (!qword_1EDA664F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA664F0);
  }

  return result;
}

unint64_t sub_1C8EAFD90()
{
  result = qword_1EDA66500;
  if (!qword_1EDA66500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66500);
  }

  return result;
}

unint64_t sub_1C8EAFDE4()
{
  result = qword_1EC318778;
  if (!qword_1EC318778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318778);
  }

  return result;
}

unint64_t sub_1C8EAFE38()
{
  result = qword_1EC318780;
  if (!qword_1EC318780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318780);
  }

  return result;
}

unint64_t sub_1C8EAFE8C()
{
  result = qword_1EC318788;
  if (!qword_1EC318788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318788);
  }

  return result;
}

unint64_t sub_1C8EAFEE0()
{
  result = qword_1EC318790;
  if (!qword_1EC318790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318790);
  }

  return result;
}

unint64_t sub_1C8EAFF34()
{
  result = qword_1EC318798;
  if (!qword_1EC318798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318798);
  }

  return result;
}

unint64_t sub_1C8EAFF88()
{
  result = qword_1EC3187A0;
  if (!qword_1EC3187A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3187A0);
  }

  return result;
}

unint64_t sub_1C8EAFFDC()
{
  result = qword_1EC3187A8;
  if (!qword_1EC3187A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3187A8);
  }

  return result;
}

unint64_t sub_1C8EB0030()
{
  result = qword_1EC3187B0;
  if (!qword_1EC3187B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3187B0);
  }

  return result;
}

unint64_t sub_1C8EB0084()
{
  result = qword_1EDA66530;
  if (!qword_1EDA66530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66530);
  }

  return result;
}

unint64_t sub_1C8EB00D8()
{
  result = qword_1EC3187B8;
  if (!qword_1EC3187B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3187B8);
  }

  return result;
}

unint64_t sub_1C8EB012C()
{
  result = qword_1EDA664E0;
  if (!qword_1EDA664E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA664E0);
  }

  return result;
}

unint64_t sub_1C8EB0180()
{
  result = qword_1EC3187C0;
  if (!qword_1EC3187C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3187C0);
  }

  return result;
}

unint64_t sub_1C8EB01D4()
{
  result = qword_1EC3187C8;
  if (!qword_1EC3187C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3187C8);
  }

  return result;
}

unint64_t sub_1C8EB0228()
{
  result = qword_1EDA6B468;
  if (!qword_1EDA6B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B468);
  }

  return result;
}

unint64_t sub_1C8EB027C()
{
  result = qword_1EDA66520;
  if (!qword_1EDA66520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66520);
  }

  return result;
}

unint64_t sub_1C8EB02D0()
{
  result = qword_1EC3187D0;
  if (!qword_1EC3187D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3187D0);
  }

  return result;
}

unint64_t sub_1C8EB0324()
{
  result = qword_1EDA66540;
  if (!qword_1EDA66540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66540);
  }

  return result;
}

unint64_t sub_1C8EB0378()
{
  result = qword_1EC3187D8;
  if (!qword_1EC3187D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3187D8);
  }

  return result;
}

unint64_t sub_1C8EB03CC()
{
  result = qword_1EDA66548;
  if (!qword_1EDA66548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66548);
  }

  return result;
}

unint64_t sub_1C8EB0420()
{
  result = qword_1EDA66550;
  if (!qword_1EDA66550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66550);
  }

  return result;
}

unint64_t sub_1C8EB0474()
{
  result = qword_1EC3187E0;
  if (!qword_1EC3187E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3187E0);
  }

  return result;
}

unint64_t sub_1C8EB04C8()
{
  result = qword_1EC3187E8;
  if (!qword_1EC3187E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3187E8);
  }

  return result;
}

unint64_t sub_1C8EB051C()
{
  result = qword_1EC3187F0;
  if (!qword_1EC3187F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3187F0);
  }

  return result;
}

unint64_t sub_1C8EB0570()
{
  result = qword_1EDA66570;
  if (!qword_1EDA66570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66570);
  }

  return result;
}

unint64_t sub_1C8EB05C4()
{
  result = qword_1EC3187F8;
  if (!qword_1EC3187F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3187F8);
  }

  return result;
}

unint64_t sub_1C8EB0618()
{
  result = qword_1EC318800;
  if (!qword_1EC318800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318800);
  }

  return result;
}

unint64_t sub_1C8EB066C()
{
  result = qword_1EC318808;
  if (!qword_1EC318808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318808);
  }

  return result;
}

unint64_t sub_1C8EB06C0()
{
  result = qword_1EC318810;
  if (!qword_1EC318810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318810);
  }

  return result;
}

unint64_t sub_1C8EB0714()
{
  result = qword_1EC318818;
  if (!qword_1EC318818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318818);
  }

  return result;
}

unint64_t sub_1C8EB0768()
{
  result = qword_1EC318820;
  if (!qword_1EC318820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318820);
  }

  return result;
}

unint64_t sub_1C8EB07BC()
{
  result = qword_1EC318828;
  if (!qword_1EC318828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318828);
  }

  return result;
}

unint64_t sub_1C8EB0810()
{
  result = qword_1EDA664F8;
  if (!qword_1EDA664F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA664F8);
  }

  return result;
}

unint64_t sub_1C8EB0864()
{
  result = qword_1EDA664D8;
  if (!qword_1EDA664D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA664D8);
  }

  return result;
}

unint64_t sub_1C8EB08B8()
{
  result = qword_1EC318830;
  if (!qword_1EC318830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318830);
  }

  return result;
}

unint64_t sub_1C8EB090C()
{
  result = qword_1EDA6B430;
  if (!qword_1EDA6B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B430);
  }

  return result;
}

unint64_t sub_1C8EB0960()
{
  result = qword_1EDA66508;
  if (!qword_1EDA66508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66508);
  }

  return result;
}

unint64_t sub_1C8EB09B4()
{
  result = qword_1EDA66558;
  if (!qword_1EDA66558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66558);
  }

  return result;
}

unint64_t sub_1C8EB0A08()
{
  result = qword_1EDA66590;
  if (!qword_1EDA66590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66590);
  }

  return result;
}

unint64_t sub_1C8EB0A5C()
{
  result = qword_1EDA66580;
  if (!qword_1EDA66580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66580);
  }

  return result;
}

unint64_t sub_1C8EB0AB0()
{
  result = qword_1EDA66588;
  if (!qword_1EDA66588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66588);
  }

  return result;
}

unint64_t sub_1C8EB0B04()
{
  result = qword_1EDA6CA68;
  if (!qword_1EDA6CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA68);
  }

  return result;
}

unint64_t sub_1C8EB0B58()
{
  result = qword_1EDA66518;
  if (!qword_1EDA66518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66518);
  }

  return result;
}

unint64_t sub_1C8EB0BAC()
{
  result = qword_1EDA6B418;
  if (!qword_1EDA6B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B418);
  }

  return result;
}

unint64_t sub_1C8EB0C00()
{
  result = qword_1EDA66560;
  if (!qword_1EDA66560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66560);
  }

  return result;
}

uint64_t sub_1C8EB0C54()
{
  v0 = sub_1C9063EEC();
  v2 = v1;
  if (v0 == sub_1C9063EEC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1C9064C2C();
  }

  return v5 & 1;
}

unint64_t sub_1C8EB0CD8()
{
  result = qword_1EDA636E0;
  if (!qword_1EDA636E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636E0);
  }

  return result;
}

unint64_t sub_1C8EB0D5C()
{
  result = qword_1EC318A40;
  if (!qword_1EC318A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318A40);
  }

  return result;
}

unint64_t sub_1C8EB0DB0()
{
  result = qword_1EC318AA8;
  if (!qword_1EC318AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318AA8);
  }

  return result;
}

unint64_t sub_1C8EB0E04()
{
  result = qword_1EC318AB0;
  if (!qword_1EC318AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318AB0);
  }

  return result;
}

unint64_t sub_1C8EB0E58()
{
  result = qword_1EC318AB8;
  if (!qword_1EC318AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318AB8);
  }

  return result;
}

unint64_t sub_1C8EB0EAC()
{
  result = qword_1EC318AC0;
  if (!qword_1EC318AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318AC0);
  }

  return result;
}

unint64_t sub_1C8EB0F00()
{
  result = qword_1EC318AC8;
  if (!qword_1EC318AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318AC8);
  }

  return result;
}

unint64_t sub_1C8EB0F54()
{
  result = qword_1EC318AD0;
  if (!qword_1EC318AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318AD0);
  }

  return result;
}

unint64_t sub_1C8EB0FA8()
{
  result = qword_1EC318AD8;
  if (!qword_1EC318AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318AD8);
  }

  return result;
}

unint64_t sub_1C8EB0FFC()
{
  result = qword_1EC318AE0;
  if (!qword_1EC318AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318AE0);
  }

  return result;
}

unint64_t sub_1C8EB1050()
{
  result = qword_1EC318AE8;
  if (!qword_1EC318AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318AE8);
  }

  return result;
}

unint64_t sub_1C8EB10A4()
{
  result = qword_1EC318AF0;
  if (!qword_1EC318AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318AF0);
  }

  return result;
}

unint64_t sub_1C8EB10F8()
{
  result = qword_1EC318AF8;
  if (!qword_1EC318AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318AF8);
  }

  return result;
}

unint64_t sub_1C8EB114C()
{
  result = qword_1EC318B00;
  if (!qword_1EC318B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318B00);
  }

  return result;
}

unint64_t sub_1C8EB11A4()
{
  result = qword_1EC318B68;
  if (!qword_1EC318B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318B68);
  }

  return result;
}

unint64_t sub_1C8EB11FC()
{
  result = qword_1EDA69328;
  if (!qword_1EDA69328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69328);
  }

  return result;
}

uint64_t sub_1C8EB125C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF6 && *(a1 + 57))
    {
      v2 = *a1 + 245;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 <= 0xA)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8EB129C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemToolProtocol.Metadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemToolProtocol.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xC1)
  {
    if (a2 + 63 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 63) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 64;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x40;
  v5 = v6 - 64;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SystemToolProtocol.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 63) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xC1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xC0)
  {
    v6 = ((a2 - 193) >> 8) + 1;
    *result = a2 + 63;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 63;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8EB19C4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8EB1AC0(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C8EB1B70()
{
  result = qword_1EC318B70;
  if (!qword_1EC318B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318B70);
  }

  return result;
}

unint64_t sub_1C8EB1BC8()
{
  result = qword_1EC318B78;
  if (!qword_1EC318B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318B78);
  }

  return result;
}

unint64_t sub_1C8EB1C20()
{
  result = qword_1EC318B80;
  if (!qword_1EC318B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318B80);
  }

  return result;
}

unint64_t sub_1C8EB1C78()
{
  result = qword_1EC318B88;
  if (!qword_1EC318B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318B88);
  }

  return result;
}

unint64_t sub_1C8EB1CD0()
{
  result = qword_1EC318B90;
  if (!qword_1EC318B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318B90);
  }

  return result;
}

unint64_t sub_1C8EB1D28()
{
  result = qword_1EC318B98;
  if (!qword_1EC318B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318B98);
  }

  return result;
}

unint64_t sub_1C8EB1D80()
{
  result = qword_1EC318BA0;
  if (!qword_1EC318BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318BA0);
  }

  return result;
}

unint64_t sub_1C8EB1DD8()
{
  result = qword_1EC318BA8;
  if (!qword_1EC318BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318BA8);
  }

  return result;
}

unint64_t sub_1C8EB1E30()
{
  result = qword_1EC318BB0;
  if (!qword_1EC318BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318BB0);
  }

  return result;
}

unint64_t sub_1C8EB1E88()
{
  result = qword_1EC318BB8;
  if (!qword_1EC318BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318BB8);
  }

  return result;
}

unint64_t sub_1C8EB1EE0()
{
  result = qword_1EC318BC0;
  if (!qword_1EC318BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318BC0);
  }

  return result;
}

unint64_t sub_1C8EB1F38()
{
  result = qword_1EC318BC8;
  if (!qword_1EC318BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318BC8);
  }

  return result;
}

unint64_t sub_1C8EB1F90()
{
  result = qword_1EC318BD0;
  if (!qword_1EC318BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318BD0);
  }

  return result;
}

unint64_t sub_1C8EB1FE8()
{
  result = qword_1EC318BD8;
  if (!qword_1EC318BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318BD8);
  }

  return result;
}

unint64_t sub_1C8EB2040()
{
  result = qword_1EC318BE0;
  if (!qword_1EC318BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318BE0);
  }

  return result;
}

unint64_t sub_1C8EB2098()
{
  result = qword_1EC318BE8;
  if (!qword_1EC318BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318BE8);
  }

  return result;
}

unint64_t sub_1C8EB20F0()
{
  result = qword_1EC318BF0;
  if (!qword_1EC318BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318BF0);
  }

  return result;
}

unint64_t sub_1C8EB2148()
{
  result = qword_1EC318BF8;
  if (!qword_1EC318BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318BF8);
  }

  return result;
}

unint64_t sub_1C8EB21A0()
{
  result = qword_1EC318C00;
  if (!qword_1EC318C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C00);
  }

  return result;
}

unint64_t sub_1C8EB21F8()
{
  result = qword_1EC318C08;
  if (!qword_1EC318C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C08);
  }

  return result;
}

unint64_t sub_1C8EB2250()
{
  result = qword_1EC318C10;
  if (!qword_1EC318C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C10);
  }

  return result;
}

unint64_t sub_1C8EB22A8()
{
  result = qword_1EC318C18;
  if (!qword_1EC318C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C18);
  }

  return result;
}

unint64_t sub_1C8EB2300()
{
  result = qword_1EC318C20;
  if (!qword_1EC318C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C20);
  }

  return result;
}

unint64_t sub_1C8EB2358()
{
  result = qword_1EC318C28;
  if (!qword_1EC318C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C28);
  }

  return result;
}

unint64_t sub_1C8EB23B0()
{
  result = qword_1EC318C30;
  if (!qword_1EC318C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C30);
  }

  return result;
}

unint64_t sub_1C8EB2408()
{
  result = qword_1EC318C38;
  if (!qword_1EC318C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C38);
  }

  return result;
}

unint64_t sub_1C8EB2460()
{
  result = qword_1EC318C40;
  if (!qword_1EC318C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C40);
  }

  return result;
}

unint64_t sub_1C8EB24B8()
{
  result = qword_1EC318C48;
  if (!qword_1EC318C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C48);
  }

  return result;
}

unint64_t sub_1C8EB2510()
{
  result = qword_1EC318C50;
  if (!qword_1EC318C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C50);
  }

  return result;
}

unint64_t sub_1C8EB2568()
{
  result = qword_1EC318C58;
  if (!qword_1EC318C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C58);
  }

  return result;
}

unint64_t sub_1C8EB25C0()
{
  result = qword_1EC318C60;
  if (!qword_1EC318C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C60);
  }

  return result;
}

unint64_t sub_1C8EB2618()
{
  result = qword_1EC318C68;
  if (!qword_1EC318C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C68);
  }

  return result;
}

unint64_t sub_1C8EB2670()
{
  result = qword_1EC318C70;
  if (!qword_1EC318C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C70);
  }

  return result;
}

unint64_t sub_1C8EB26C8()
{
  result = qword_1EC318C78;
  if (!qword_1EC318C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C78);
  }

  return result;
}

unint64_t sub_1C8EB2720()
{
  result = qword_1EC318C80;
  if (!qword_1EC318C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C80);
  }

  return result;
}

unint64_t sub_1C8EB2778()
{
  result = qword_1EC318C88;
  if (!qword_1EC318C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C88);
  }

  return result;
}

unint64_t sub_1C8EB27D0()
{
  result = qword_1EC318C90;
  if (!qword_1EC318C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C90);
  }

  return result;
}

unint64_t sub_1C8EB2828()
{
  result = qword_1EC318C98;
  if (!qword_1EC318C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318C98);
  }

  return result;
}

unint64_t sub_1C8EB2880()
{
  result = qword_1EC318CA0;
  if (!qword_1EC318CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318CA0);
  }

  return result;
}

unint64_t sub_1C8EB28D8()
{
  result = qword_1EC318CA8;
  if (!qword_1EC318CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318CA8);
  }

  return result;
}

unint64_t sub_1C8EB2930()
{
  result = qword_1EC318CB0;
  if (!qword_1EC318CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318CB0);
  }

  return result;
}

unint64_t sub_1C8EB2988()
{
  result = qword_1EC318CB8;
  if (!qword_1EC318CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318CB8);
  }

  return result;
}

unint64_t sub_1C8EB29E0()
{
  result = qword_1EC318CC0;
  if (!qword_1EC318CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318CC0);
  }

  return result;
}

unint64_t sub_1C8EB2A38()
{
  result = qword_1EC318CC8;
  if (!qword_1EC318CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318CC8);
  }

  return result;
}

unint64_t sub_1C8EB2A90()
{
  result = qword_1EC318CD0;
  if (!qword_1EC318CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318CD0);
  }

  return result;
}

unint64_t sub_1C8EB2AE8()
{
  result = qword_1EC318CD8;
  if (!qword_1EC318CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318CD8);
  }

  return result;
}

unint64_t sub_1C8EB2B40()
{
  result = qword_1EC318CE0;
  if (!qword_1EC318CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318CE0);
  }

  return result;
}

unint64_t sub_1C8EB2B98()
{
  result = qword_1EDA6CA90;
  if (!qword_1EDA6CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA90);
  }

  return result;
}

unint64_t sub_1C8EB2BF0()
{
  result = qword_1EDA6CA98;
  if (!qword_1EDA6CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA98);
  }

  return result;
}

unint64_t sub_1C8EB2C48()
{
  result = qword_1EDA6C888;
  if (!qword_1EDA6C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C888);
  }

  return result;
}

unint64_t sub_1C8EB2CA0()
{
  result = qword_1EDA6C890;
  if (!qword_1EDA6C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C890);
  }

  return result;
}

unint64_t sub_1C8EB2CF8()
{
  result = qword_1EDA6C8F8;
  if (!qword_1EDA6C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C8F8);
  }

  return result;
}

unint64_t sub_1C8EB2D50()
{
  result = qword_1EDA6C900;
  if (!qword_1EDA6C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C900);
  }

  return result;
}

unint64_t sub_1C8EB2DA8()
{
  result = qword_1EDA6CA58;
  if (!qword_1EDA6CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA58);
  }

  return result;
}

unint64_t sub_1C8EB2E00()
{
  result = qword_1EDA6CA60;
  if (!qword_1EDA6CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA60);
  }

  return result;
}

unint64_t sub_1C8EB2E58()
{
  result = qword_1EDA6CB78;
  if (!qword_1EDA6CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB78);
  }

  return result;
}

unint64_t sub_1C8EB2EB0()
{
  result = qword_1EDA6CB80;
  if (!qword_1EDA6CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB80);
  }

  return result;
}

unint64_t sub_1C8EB2F08()
{
  result = qword_1EDA6CB68;
  if (!qword_1EDA6CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB68);
  }

  return result;
}

unint64_t sub_1C8EB2F60()
{
  result = qword_1EDA6CB70;
  if (!qword_1EDA6CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB70);
  }

  return result;
}

unint64_t sub_1C8EB2FB8()
{
  result = qword_1EDA6B470;
  if (!qword_1EDA6B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B470);
  }

  return result;
}

unint64_t sub_1C8EB3010()
{
  result = qword_1EDA6B478;
  if (!qword_1EDA6B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B478);
  }

  return result;
}

unint64_t sub_1C8EB3068()
{
  result = qword_1EDA6CA70;
  if (!qword_1EDA6CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA70);
  }

  return result;
}

unint64_t sub_1C8EB30C0()
{
  result = qword_1EDA6CA78;
  if (!qword_1EDA6CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA78);
  }

  return result;
}

unint64_t sub_1C8EB3118()
{
  result = qword_1EDA6C8C8;
  if (!qword_1EDA6C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C8C8);
  }

  return result;
}

unint64_t sub_1C8EB3170()
{
  result = qword_1EDA6C8D0;
  if (!qword_1EDA6C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C8D0);
  }

  return result;
}

unint64_t sub_1C8EB31C8()
{
  result = qword_1EDA6C8B8;
  if (!qword_1EDA6C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C8B8);
  }

  return result;
}

unint64_t sub_1C8EB3220()
{
  result = qword_1EDA6C8C0;
  if (!qword_1EDA6C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C8C0);
  }

  return result;
}

unint64_t sub_1C8EB3278()
{
  result = qword_1EDA6C848;
  if (!qword_1EDA6C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C848);
  }

  return result;
}

unint64_t sub_1C8EB32D0()
{
  result = qword_1EDA6C850;
  if (!qword_1EDA6C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C850);
  }

  return result;
}

unint64_t sub_1C8EB3328()
{
  result = qword_1EDA6C808;
  if (!qword_1EDA6C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C808);
  }

  return result;
}

unint64_t sub_1C8EB3380()
{
  result = qword_1EDA6C810;
  if (!qword_1EDA6C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C810);
  }

  return result;
}

unint64_t sub_1C8EB33D8()
{
  result = qword_1EDA6C868;
  if (!qword_1EDA6C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C868);
  }

  return result;
}

unint64_t sub_1C8EB3430()
{
  result = qword_1EDA6C870;
  if (!qword_1EDA6C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C870);
  }

  return result;
}

unint64_t sub_1C8EB3488()
{
  result = qword_1EDA6C8A8;
  if (!qword_1EDA6C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C8A8);
  }

  return result;
}

unint64_t sub_1C8EB34E0()
{
  result = qword_1EDA6C8B0;
  if (!qword_1EDA6C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C8B0);
  }

  return result;
}

unint64_t sub_1C8EB3538()
{
  result = qword_1EDA6B420;
  if (!qword_1EDA6B420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B420);
  }

  return result;
}

unint64_t sub_1C8EB3590()
{
  result = qword_1EDA6B428;
  if (!qword_1EDA6B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B428);
  }

  return result;
}

unint64_t sub_1C8EB35E8()
{
  result = qword_1EDA6B440;
  if (!qword_1EDA6B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B440);
  }

  return result;
}

unint64_t sub_1C8EB3640()
{
  result = qword_1EDA6B448;
  if (!qword_1EDA6B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B448);
  }

  return result;
}

unint64_t sub_1C8EB3698()
{
  result = qword_1EDA6CB40;
  if (!qword_1EDA6CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB40);
  }

  return result;
}

unint64_t sub_1C8EB36F0()
{
  result = qword_1EDA6CB48;
  if (!qword_1EDA6CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB48);
  }

  return result;
}

unint64_t sub_1C8EB3748()
{
  result = qword_1EDA6CB30;
  if (!qword_1EDA6CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB30);
  }

  return result;
}

unint64_t sub_1C8EB37A0()
{
  result = qword_1EDA6CB38;
  if (!qword_1EDA6CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB38);
  }

  return result;
}

unint64_t sub_1C8EB37F8()
{
  result = qword_1EDA6CB00;
  if (!qword_1EDA6CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB00);
  }

  return result;
}

unint64_t sub_1C8EB3850()
{
  result = qword_1EDA6CB08;
  if (!qword_1EDA6CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB08);
  }

  return result;
}

unint64_t sub_1C8EB38A8()
{
  result = qword_1EDA6CAE0;
  if (!qword_1EDA6CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CAE0);
  }

  return result;
}

unint64_t sub_1C8EB3900()
{
  result = qword_1EDA6CAE8;
  if (!qword_1EDA6CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CAE8);
  }

  return result;
}

unint64_t sub_1C8EB3958()
{
  result = qword_1EDA6CAD0;
  if (!qword_1EDA6CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CAD0);
  }

  return result;
}

unint64_t sub_1C8EB39B0()
{
  result = qword_1EDA6CAD8;
  if (!qword_1EDA6CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CAD8);
  }

  return result;
}

unint64_t sub_1C8EB3A08()
{
  result = qword_1EDA6CAC0;
  if (!qword_1EDA6CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CAC0);
  }

  return result;
}

unint64_t sub_1C8EB3A60()
{
  result = qword_1EDA6CAC8;
  if (!qword_1EDA6CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CAC8);
  }

  return result;
}

unint64_t sub_1C8EB3AB8()
{
  result = qword_1EDA6CB20;
  if (!qword_1EDA6CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB20);
  }

  return result;
}

unint64_t sub_1C8EB3B10()
{
  result = qword_1EDA6CB28;
  if (!qword_1EDA6CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB28);
  }

  return result;
}

unint64_t sub_1C8EB3B68()
{
  result = qword_1EDA6CB10;
  if (!qword_1EDA6CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB10);
  }

  return result;
}

unint64_t sub_1C8EB3BC0()
{
  result = qword_1EDA6CB18;
  if (!qword_1EDA6CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB18);
  }

  return result;
}

unint64_t sub_1C8EB3C18()
{
  result = qword_1EDA6C9D8;
  if (!qword_1EDA6C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C9D8);
  }

  return result;
}

unint64_t sub_1C8EB3C70()
{
  result = qword_1EDA6C9E0;
  if (!qword_1EDA6C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C9E0);
  }

  return result;
}

unint64_t sub_1C8EB3CC8()
{
  result = qword_1EDA6C9A8;
  if (!qword_1EDA6C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C9A8);
  }

  return result;
}

unint64_t sub_1C8EB3D20()
{
  result = qword_1EDA6C9B0;
  if (!qword_1EDA6C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C9B0);
  }

  return result;
}

unint64_t sub_1C8EB3D78()
{
  result = qword_1EDA6CA48;
  if (!qword_1EDA6CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA48);
  }

  return result;
}

unint64_t sub_1C8EB3DD0()
{
  result = qword_1EDA6CA50;
  if (!qword_1EDA6CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA50);
  }

  return result;
}

unint64_t sub_1C8EB3E28()
{
  result = qword_1EDA6C998;
  if (!qword_1EDA6C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C998);
  }

  return result;
}

unint64_t sub_1C8EB3E80()
{
  result = qword_1EDA6C9A0;
  if (!qword_1EDA6C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C9A0);
  }

  return result;
}

unint64_t sub_1C8EB3ED8()
{
  result = qword_1EDA6C8E8;
  if (!qword_1EDA6C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C8E8);
  }

  return result;
}

unint64_t sub_1C8EB3F30()
{
  result = qword_1EDA6C8F0;
  if (!qword_1EDA6C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C8F0);
  }

  return result;
}

unint64_t sub_1C8EB3F88()
{
  result = qword_1EDA6C908;
  if (!qword_1EDA6C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C908);
  }

  return result;
}

unint64_t sub_1C8EB3FE0()
{
  result = qword_1EDA6C910;
  if (!qword_1EDA6C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C910);
  }

  return result;
}

unint64_t sub_1C8EB4038()
{
  result = qword_1EDA6CA08;
  if (!qword_1EDA6CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA08);
  }

  return result;
}

unint64_t sub_1C8EB4090()
{
  result = qword_1EDA6CA10;
  if (!qword_1EDA6CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA10);
  }

  return result;
}

unint64_t sub_1C8EB40E8()
{
  result = qword_1EDA6C948;
  if (!qword_1EDA6C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C948);
  }

  return result;
}

unint64_t sub_1C8EB4140()
{
  result = qword_1EDA6C950;
  if (!qword_1EDA6C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C950);
  }

  return result;
}

unint64_t sub_1C8EB4198()
{
  result = qword_1EDA6C9F8;
  if (!qword_1EDA6C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C9F8);
  }

  return result;
}

unint64_t sub_1C8EB41F0()
{
  result = qword_1EDA6CA00;
  if (!qword_1EDA6CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA00);
  }

  return result;
}

unint64_t sub_1C8EB4248()
{
  result = qword_1EDA6C828;
  if (!qword_1EDA6C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C828);
  }

  return result;
}

unint64_t sub_1C8EB42A0()
{
  result = qword_1EDA6C830;
  if (!qword_1EDA6C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C830);
  }

  return result;
}

unint64_t sub_1C8EB42F8()
{
  result = qword_1EDA6CA38;
  if (!qword_1EDA6CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA38);
  }

  return result;
}

unint64_t sub_1C8EB4350()
{
  result = qword_1EDA6CA40;
  if (!qword_1EDA6CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA40);
  }

  return result;
}

unint64_t sub_1C8EB43A8()
{
  result = qword_1EDA6C968;
  if (!qword_1EDA6C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C968);
  }

  return result;
}

unint64_t sub_1C8EB4400()
{
  result = qword_1EDA6C970;
  if (!qword_1EDA6C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C970);
  }

  return result;
}

unint64_t sub_1C8EB4458()
{
  result = qword_1EDA6C928;
  if (!qword_1EDA6C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C928);
  }

  return result;
}

unint64_t sub_1C8EB44B0()
{
  result = qword_1EDA6C930;
  if (!qword_1EDA6C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C930);
  }

  return result;
}

unint64_t sub_1C8EB4508()
{
  result = qword_1EDA6C7F8;
  if (!qword_1EDA6C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C7F8);
  }

  return result;
}

unint64_t sub_1C8EB4560()
{
  result = qword_1EDA6C800;
  if (!qword_1EDA6C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C800);
  }

  return result;
}

unint64_t sub_1C8EB45B8()
{
  result = qword_1EDA6CA28;
  if (!qword_1EDA6CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA28);
  }

  return result;
}

unint64_t sub_1C8EB4610()
{
  result = qword_1EDA6CA30;
  if (!qword_1EDA6CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA30);
  }

  return result;
}

unint64_t sub_1C8EB4668()
{
  result = qword_1EDA6C978;
  if (!qword_1EDA6C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C978);
  }

  return result;
}

unint64_t sub_1C8EB46C0()
{
  result = qword_1EDA6C980;
  if (!qword_1EDA6C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C980);
  }

  return result;
}

unint64_t sub_1C8EB4718()
{
  result = qword_1EDA6C988;
  if (!qword_1EDA6C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C988);
  }

  return result;
}

unint64_t sub_1C8EB4770()
{
  result = qword_1EDA6C990;
  if (!qword_1EDA6C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C990);
  }

  return result;
}

unint64_t sub_1C8EB47C8()
{
  result = qword_1EDA6C938;
  if (!qword_1EDA6C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C938);
  }

  return result;
}

unint64_t sub_1C8EB4820()
{
  result = qword_1EDA6C940;
  if (!qword_1EDA6C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C940);
  }

  return result;
}

unint64_t sub_1C8EB4878()
{
  result = qword_1EDA6C9C8;
  if (!qword_1EDA6C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C9C8);
  }

  return result;
}

unint64_t sub_1C8EB48D0()
{
  result = qword_1EDA6C9D0;
  if (!qword_1EDA6C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C9D0);
  }

  return result;
}

unint64_t sub_1C8EB4928()
{
  result = qword_1EDA6CA18;
  if (!qword_1EDA6CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA18);
  }

  return result;
}

unint64_t sub_1C8EB4980()
{
  result = qword_1EDA6CA20;
  if (!qword_1EDA6CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA20);
  }

  return result;
}

unint64_t sub_1C8EB49D8()
{
  result = qword_1EDA6C878;
  if (!qword_1EDA6C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C878);
  }

  return result;
}

unint64_t sub_1C8EB4A30()
{
  result = qword_1EDA6C880;
  if (!qword_1EDA6C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C880);
  }

  return result;
}

unint64_t sub_1C8EB4A88()
{
  result = qword_1EDA6C858;
  if (!qword_1EDA6C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C858);
  }

  return result;
}

unint64_t sub_1C8EB4AE0()
{
  result = qword_1EDA6C860;
  if (!qword_1EDA6C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C860);
  }

  return result;
}

unint64_t sub_1C8EB4B38()
{
  result = qword_1EDA6B408;
  if (!qword_1EDA6B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B408);
  }

  return result;
}

unint64_t sub_1C8EB4B90()
{
  result = qword_1EDA6B410;
  if (!qword_1EDA6B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B410);
  }

  return result;
}

unint64_t sub_1C8EB4BE8()
{
  result = qword_1EDA6CAB0;
  if (!qword_1EDA6CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CAB0);
  }

  return result;
}

unint64_t sub_1C8EB4C40()
{
  result = qword_1EDA6CAB8;
  if (!qword_1EDA6CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CAB8);
  }

  return result;
}

unint64_t sub_1C8EB4C98()
{
  result = qword_1EDA6C7D8;
  if (!qword_1EDA6C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C7D8);
  }

  return result;
}

unint64_t sub_1C8EB4CF0()
{
  result = qword_1EDA6C7E0;
  if (!qword_1EDA6C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C7E0);
  }

  return result;
}

unint64_t sub_1C8EB4D48()
{
  result = qword_1EDA6C7C0;
  if (!qword_1EDA6C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C7C0);
  }

  return result;
}

unint64_t sub_1C8EB4DA0()
{
  result = qword_1EDA6C7B8;
  if (!qword_1EDA6C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C7B8);
  }

  return result;
}

unint64_t sub_1C8EB4DF8()
{
  result = qword_1EDA6C7E8;
  if (!qword_1EDA6C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C7E8);
  }

  return result;
}

unint64_t sub_1C8EB4E50()
{
  result = qword_1EDA6C7F0;
  if (!qword_1EDA6C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C7F0);
  }

  return result;
}

unint64_t sub_1C8EB4EA8()
{
  result = qword_1EDA6C7D0;
  if (!qword_1EDA6C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C7D0);
  }

  return result;
}

unint64_t sub_1C8EB4F00()
{
  result = qword_1EDA6C7C8;
  if (!qword_1EDA6C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C7C8);
  }

  return result;
}

unint64_t sub_1C8EB4F58()
{
  result = qword_1EDA6C9B8;
  if (!qword_1EDA6C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C9B8);
  }

  return result;
}

unint64_t sub_1C8EB4FB0()
{
  result = qword_1EDA6C9C0;
  if (!qword_1EDA6C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C9C0);
  }

  return result;
}

unint64_t sub_1C8EB5008()
{
  result = qword_1EDA6C838;
  if (!qword_1EDA6C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C838);
  }

  return result;
}

unint64_t sub_1C8EB5060()
{
  result = qword_1EDA6C840;
  if (!qword_1EDA6C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C840);
  }

  return result;
}

unint64_t sub_1C8EB50B8()
{
  result = qword_1EDA6CAF0;
  if (!qword_1EDA6CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CAF0);
  }

  return result;
}

unint64_t sub_1C8EB5110()
{
  result = qword_1EDA6CAF8;
  if (!qword_1EDA6CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CAF8);
  }

  return result;
}

unint64_t sub_1C8EB5168()
{
  result = qword_1EDA6CAA0;
  if (!qword_1EDA6CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CAA0);
  }

  return result;
}

unint64_t sub_1C8EB51C0()
{
  result = qword_1EDA6CAA8;
  if (!qword_1EDA6CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CAA8);
  }

  return result;
}

unint64_t sub_1C8EB5218()
{
  result = qword_1EDA6C958;
  if (!qword_1EDA6C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C958);
  }

  return result;
}

unint64_t sub_1C8EB5270()
{
  result = qword_1EDA6C960;
  if (!qword_1EDA6C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C960);
  }

  return result;
}

unint64_t sub_1C8EB52C8()
{
  result = qword_1EDA6C898;
  if (!qword_1EDA6C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C898);
  }

  return result;
}

unint64_t sub_1C8EB5320()
{
  result = qword_1EDA6C8A0;
  if (!qword_1EDA6C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C8A0);
  }

  return result;
}

unint64_t sub_1C8EB5378()
{
  result = qword_1EDA6C918;
  if (!qword_1EDA6C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C918);
  }

  return result;
}

unint64_t sub_1C8EB53D0()
{
  result = qword_1EDA6C920;
  if (!qword_1EDA6C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C920);
  }

  return result;
}

unint64_t sub_1C8EB5428()
{
  result = qword_1EDA6B450;
  if (!qword_1EDA6B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B450);
  }

  return result;
}

unint64_t sub_1C8EB5480()
{
  result = qword_1EDA6B458;
  if (!qword_1EDA6B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B458);
  }

  return result;
}

unint64_t sub_1C8EB54D8()
{
  result = qword_1EDA6C8D8;
  if (!qword_1EDA6C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C8D8);
  }

  return result;
}

unint64_t sub_1C8EB5530()
{
  result = qword_1EDA6C8E0;
  if (!qword_1EDA6C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C8E0);
  }

  return result;
}

unint64_t sub_1C8EB5588()
{
  result = qword_1EDA6CA80;
  if (!qword_1EDA6CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA80);
  }

  return result;
}

unint64_t sub_1C8EB55E0()
{
  result = qword_1EDA6CA88;
  if (!qword_1EDA6CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CA88);
  }

  return result;
}

unint64_t sub_1C8EB5638()
{
  result = qword_1EDA6C818;
  if (!qword_1EDA6C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C818);
  }

  return result;
}

unint64_t sub_1C8EB5690()
{
  result = qword_1EDA6C820;
  if (!qword_1EDA6C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C820);
  }

  return result;
}

unint64_t sub_1C8EB56E8()
{
  result = qword_1EDA6C9E8;
  if (!qword_1EDA6C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C9E8);
  }

  return result;
}

unint64_t sub_1C8EB5740()
{
  result = qword_1EDA6C9F0;
  if (!qword_1EDA6C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C9F0);
  }

  return result;
}

unint64_t sub_1C8EB5798()
{
  result = qword_1EDA6CB50;
  if (!qword_1EDA6CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB50);
  }

  return result;
}

unint64_t sub_1C8EB57F0()
{
  result = qword_1EDA6CB58;
  if (!qword_1EDA6CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB58);
  }

  return result;
}

unint64_t sub_1C8EB5844()
{
  result = qword_1EDA66578;
  if (!qword_1EDA66578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66578);
  }

  return result;
}

uint64_t sub_1C8EB58B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_10_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_23_21()
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_61_10@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1C9064A0C();
}

uint64_t OUTLINED_FUNCTION_78_7()
{
  result = v0;
  v3 = *(v1 - 416);
  return result;
}

uint64_t OUTLINED_FUNCTION_116_6()
{
  v2 = *v0;
  result = *(v1 - 168);
  v4 = *(v1 - 416);
  return result;
}

uint64_t sub_1C8EB5B70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8EB5BB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8EB5C28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C90CB5C0 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001C90CB5E0 == a2;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001C90CC380 == a2;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001C90CC3A0 == a2;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7470697263736564 && a2 == 0xEF65746F4E6E6F69;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x80000001C90CC3C0 == a2;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x80000001C90CC060 == a2;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000011 && 0x80000001C90CBCC0 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C9064C2C();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1C8EB5F78(char a1)
{
  result = 0x64496C6F6F74;
  switch(a1)
  {
    case 1:
      result = 0x656C61636F6CLL;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
    case 9:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x7470697263736564;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8EB60B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D20, &unk_1C909C280);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v36[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8EB7284();
  sub_1C9064E1C();
  v14 = *v3;
  v36[15] = 0;
  sub_1C9064B9C();
  if (!v2)
  {
    v15 = v3[1];
    v16 = v3[2];
    v36[14] = 1;
    OUTLINED_FUNCTION_2_53();
    sub_1C9064B2C();
    v17 = v3[3];
    v18 = v3[4];
    v36[13] = 2;
    OUTLINED_FUNCTION_2_53();
    sub_1C9064B2C();
    v19 = v3[5];
    v20 = v3[6];
    v36[12] = 3;
    OUTLINED_FUNCTION_2_53();
    sub_1C9064ADC();
    v21 = v3[7];
    v22 = v3[8];
    v36[11] = 4;
    OUTLINED_FUNCTION_2_53();
    sub_1C9064ADC();
    v23 = v3[9];
    v24 = v3[10];
    v36[10] = 5;
    OUTLINED_FUNCTION_2_53();
    sub_1C9064ADC();
    v25 = v3[11];
    v26 = v3[12];
    v36[9] = 6;
    OUTLINED_FUNCTION_2_53();
    sub_1C9064ADC();
    v27 = v3[13];
    v28 = v3[14];
    v36[8] = 7;
    OUTLINED_FUNCTION_2_53();
    sub_1C9064ADC();
    v29 = v3[15];
    v30 = v3[16];
    v36[7] = 8;
    OUTLINED_FUNCTION_2_53();
    sub_1C9064ADC();
    v31 = v3[17];
    v32 = v3[18];
    v36[6] = 9;
    OUTLINED_FUNCTION_2_53();
    sub_1C9064ADC();
    v33 = v3[19];
    v34 = v3[20];
    v36[5] = 10;
    OUTLINED_FUNCTION_2_53();
    sub_1C9064B2C();
  }

  return (*(v8 + 8))(v12, v5);
}

void *sub_1C8EB6320@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D18, &qword_1C909C278);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v39 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1C8EB7284();
  sub_1C9064DEC();
  if (!v2)
  {
    v15 = v8;
    v56 = a2;
    LOBYTE(v59[0]) = 0;
    v16 = sub_1C9064A7C();
    OUTLINED_FUNCTION_0_63(1);
    v17 = sub_1C9064A0C();
    v54 = v18;
    OUTLINED_FUNCTION_0_63(2);
    v55 = sub_1C9064A0C();
    v53 = v19;
    OUTLINED_FUNCTION_0_63(3);
    v46 = sub_1C90649AC();
    v52 = v20;
    OUTLINED_FUNCTION_0_63(4);
    v45 = sub_1C90649AC();
    v51 = v21;
    OUTLINED_FUNCTION_0_63(5);
    v44 = sub_1C90649AC();
    v50 = v22;
    OUTLINED_FUNCTION_0_63(6);
    v43 = sub_1C90649AC();
    v49 = v23;
    OUTLINED_FUNCTION_0_63(7);
    v42 = sub_1C90649AC();
    v47 = v24;
    OUTLINED_FUNCTION_0_63(8);
    v41 = sub_1C90649AC();
    v48 = v25;
    OUTLINED_FUNCTION_0_63(9);
    v26 = sub_1C90649AC();
    v40 = v27;
    v28 = v26;
    v60 = 10;
    v29 = sub_1C9064A0C();
    v39 = v30;
    v31 = v29;
    v32 = *(v15 + 8);
    v33 = OUTLINED_FUNCTION_7_32();
    v34(v33);
    v58[0] = v16;
    v58[1] = v17;
    v35 = v55;
    v58[2] = v54;
    v58[3] = v55;
    v36 = v47;
    v58[4] = v53;
    v58[5] = v46;
    v58[6] = v52;
    v58[7] = v45;
    v58[8] = v51;
    v58[9] = v44;
    v37 = v49;
    v58[10] = v50;
    v58[11] = v43;
    v58[12] = v49;
    v58[13] = v42;
    v58[14] = v47;
    v58[15] = v41;
    v58[16] = v48;
    v58[17] = v28;
    v58[18] = v40;
    v58[19] = v31;
    v58[20] = v39;
    sub_1C8EB72D8(v58, v59);
    __swift_destroy_boxed_opaque_existential_1(v57);
    v59[0] = v16;
    v59[1] = v17;
    v59[2] = v54;
    v59[3] = v35;
    v59[4] = v53;
    v59[5] = v46;
    v59[6] = v52;
    v59[7] = v45;
    v59[8] = v51;
    v59[9] = v44;
    v59[10] = v50;
    v59[11] = v43;
    v59[12] = v37;
    v59[13] = v42;
    v59[14] = v36;
    v59[15] = v41;
    v59[16] = v48;
    v59[17] = v28;
    v59[18] = v40;
    v59[19] = v31;
    v59[20] = v39;
    sub_1C8D80800(v59);
    return memcpy(v56, v58, 0xA8uLL);
  }

  OUTLINED_FUNCTION_3_40();
  result = __swift_destroy_boxed_opaque_existential_1(v57);
  if (!v14)
  {
    if (!v12)
    {
      goto LABEL_10;
    }

LABEL_5:

    if (v55)
    {
      goto LABEL_11;
    }

LABEL_6:
    if (!v56)
    {
      return result;
    }
  }

  if (v12)
  {
    goto LABEL_5;
  }

LABEL_10:
  if (!v55)
  {
    goto LABEL_6;
  }

LABEL_11:

  if (v56)
  {
  }

  return result;
}

uint64_t sub_1C8EB68D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EB5C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EB6900(uint64_t a1)
{
  v2 = sub_1C8EB7284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EB693C(uint64_t a1)
{
  v2 = sub_1C8EB7284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C8EB6978@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C8EB6320(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0xA8uLL);
  }

  return result;
}

uint64_t sub_1C8EB69DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8D80A10();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C8EB6A40()
{
  sub_1C8EB714C();

  return sub_1C9062B4C();
}

uint64_t sub_1C8EB6B38()
{
  if (qword_1EC311498 != -1)
  {
    swift_once();
  }

  v1 = sub_1C9062E6C();
  __swift_project_value_buffer(v1, qword_1EDA6E6A8);
  sub_1C9062E5C();
  v2 = *v0;
  v25 = MEMORY[0x1E69E7360];
  v26 = MEMORY[0x1E69A01D0];
  v23 = v2;
  v3 = sub_1C9062BFC();
  if (qword_1EDA6C790 != -1)
  {
    v3 = swift_once();
  }

  OUTLINED_FUNCTION_6_23(v3, qword_1EDA6EBF8);
  OUTLINED_FUNCTION_11_6();
  v5 = v0[1];
  v4 = v0[2];
  v6 = MEMORY[0x1E69E6158];
  v7 = MEMORY[0x1E69A0138];
  v25 = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1E69A0138];
  v23 = v5;
  v24 = v4;

  v8 = OUTLINED_FUNCTION_1_0();
  if (qword_1EDA691E8 != -1)
  {
    v8 = swift_once();
  }

  OUTLINED_FUNCTION_6_23(v8, qword_1EDA6EA48);
  OUTLINED_FUNCTION_11_6();
  v10 = v0[3];
  v9 = v0[4];
  v25 = v6;
  v26 = v7;
  v23 = v10;
  v24 = v9;

  v11 = OUTLINED_FUNCTION_1_0();
  if (qword_1EC3114A0 != -1)
  {
    v11 = swift_once();
  }

  OUTLINED_FUNCTION_6_23(v11, qword_1EC390CC8);
  OUTLINED_FUNCTION_11_6();
  v33 = *(v0 + 5);
  if (!*(&v33 + 1))
  {
    OUTLINED_FUNCTION_11_11();
  }

  OUTLINED_FUNCTION_11_28();
  sub_1C8D29F88(&v33, &v32);
  v12 = OUTLINED_FUNCTION_1_0();
  if (qword_1EC3114A8 != -1)
  {
    v12 = swift_once();
  }

  OUTLINED_FUNCTION_6_23(v12, qword_1EC390CE0);
  OUTLINED_FUNCTION_11_6();
  v32 = *(v0 + 7);
  if (!*(&v32 + 1))
  {
    OUTLINED_FUNCTION_11_11();
  }

  OUTLINED_FUNCTION_11_28();
  sub_1C8D29F88(&v32, &v31);
  v13 = OUTLINED_FUNCTION_1_0();
  if (qword_1EC3114B0 != -1)
  {
    v13 = swift_once();
  }

  OUTLINED_FUNCTION_6_23(v13, qword_1EC390CF8);
  OUTLINED_FUNCTION_11_6();
  v31 = *(v0 + 9);
  if (!*(&v31 + 1))
  {
    OUTLINED_FUNCTION_11_11();
  }

  OUTLINED_FUNCTION_11_28();
  sub_1C8D29F88(&v31, &v30);
  v14 = OUTLINED_FUNCTION_1_0();
  if (qword_1EC3114B8 != -1)
  {
    v14 = swift_once();
  }

  OUTLINED_FUNCTION_6_23(v14, qword_1EC390D10);
  OUTLINED_FUNCTION_11_6();
  v30 = *(v0 + 11);
  if (!*(&v30 + 1))
  {
    OUTLINED_FUNCTION_11_11();
  }

  OUTLINED_FUNCTION_11_28();
  sub_1C8D29F88(&v30, &v29);
  v15 = OUTLINED_FUNCTION_1_0();
  if (qword_1EC3114C0 != -1)
  {
    v15 = swift_once();
  }

  OUTLINED_FUNCTION_6_23(v15, qword_1EC390D28);
  OUTLINED_FUNCTION_11_6();
  v29 = *(v0 + 13);
  if (!*(&v29 + 1))
  {
    OUTLINED_FUNCTION_11_11();
  }

  OUTLINED_FUNCTION_11_28();
  sub_1C8D29F88(&v29, &v28);
  v16 = OUTLINED_FUNCTION_1_0();
  if (qword_1EC3114C8 != -1)
  {
    v16 = swift_once();
  }

  OUTLINED_FUNCTION_6_23(v16, qword_1EC390D40);
  OUTLINED_FUNCTION_11_6();
  v28 = *(v0 + 15);
  if (!*(&v28 + 1))
  {
    OUTLINED_FUNCTION_11_11();
  }

  OUTLINED_FUNCTION_11_28();
  sub_1C8D29F88(&v28, &v27);
  v17 = OUTLINED_FUNCTION_1_0();
  if (qword_1EC3114D0 != -1)
  {
    v17 = swift_once();
  }

  OUTLINED_FUNCTION_6_23(v17, qword_1EC390D58);
  OUTLINED_FUNCTION_11_6();
  v27 = *(v0 + 17);
  if (!*(&v27 + 1))
  {
    OUTLINED_FUNCTION_11_11();
  }

  OUTLINED_FUNCTION_11_28();
  sub_1C8D29F88(&v27, v22);
  v18 = OUTLINED_FUNCTION_1_0();
  if (qword_1EDA624D8 != -1)
  {
    v18 = swift_once();
  }

  OUTLINED_FUNCTION_6_23(v18, qword_1EDA6E6C0);
  v20 = v0[19];
  v19 = v0[20];
  v25 = v6;
  v26 = v7;
  v23 = v20;
  v24 = v19;

  return sub_1C9062BFC();
}

unint64_t sub_1C8EB70B4()
{
  result = qword_1EC318CF8;
  if (!qword_1EC318CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318CF8);
  }

  return result;
}

unint64_t sub_1C8EB710C(void *a1)
{
  a1[1] = sub_1C8D8065C();
  a1[2] = sub_1C8EB714C();
  a1[3] = sub_1C8D80A10();
  result = sub_1C8EB71A0();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8EB714C()
{
  result = qword_1EC318D00;
  if (!qword_1EC318D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318D00);
  }

  return result;
}

unint64_t sub_1C8EB71A0()
{
  result = qword_1EC318D08;
  if (!qword_1EC318D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318D08);
  }

  return result;
}

uint64_t sub_1C8EB71F4()
{
  v0 = qword_1EC318CE8;

  return v0;
}

unint64_t sub_1C8EB7230()
{
  result = qword_1EC318D10;
  if (!qword_1EC318D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318D10);
  }

  return result;
}

unint64_t sub_1C8EB7284()
{
  result = qword_1EDA6C7A8;
  if (!qword_1EDA6C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C7A8);
  }

  return result;
}

uint64_t sub_1C8EB73C0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_1C8EB7284();
  return sub_1C9062E8C();
}

_BYTE *storeEnumTagSinglePayload for ToolLocalizationRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8EB751C()
{
  result = qword_1EC318D28;
  if (!qword_1EC318D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318D28);
  }

  return result;
}

unint64_t sub_1C8EB7574()
{
  result = qword_1EDA6C798;
  if (!qword_1EDA6C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C798);
  }

  return result;
}

unint64_t sub_1C8EB75CC()
{
  result = qword_1EDA6C7A0;
  if (!qword_1EDA6C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C7A0);
  }

  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.toolsExist(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_196();
  v32 = v1;
  v4 = v3;
  v29 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313278, &qword_1C90C63C0);
  OUTLINED_FUNCTION_11(v6);
  v31 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  OUTLINED_FUNCTION_11(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  v30 = type metadata accessor for ToolRecord();
  if (qword_1EDA68E98 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_1EDA6EA10);
  if (qword_1EDA69668 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v21 = sub_1C9062E6C();
  __swift_project_value_buffer(v21, qword_1EDA6EB50);
  v34[3] = v21;
  v34[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v34);
  OUTLINED_FUNCTION_10_0(v21);
  (*(v22 + 16))();
  v33[3] = MEMORY[0x1E69E6158];
  v33[4] = MEMORY[0x1E69A0130];
  v33[0] = v29;
  v33[1] = v4;
  v23 = sub_1C90627EC();
  OUTLINED_FUNCTION_45_1(v23, MEMORY[0x1E699FE60]);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_3_41();
  sub_1C8EB7944(v33);
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_1C8EB7A04(&qword_1EDA69380);
  sub_1C906292C();
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1C8EB79AC();
  sub_1C8EB7A04(&qword_1EDA69390);
  sub_1C906253C();
  (*(v31 + 8))(v12, v6);
  v24 = *(v32 + 16);
  v25 = sub_1C9062C2C();
  (*(v15 + 8))(v20, v13);
  if (!v2)
  {
    v26 = v25 > 0;
  }

  OUTLINED_FUNCTION_2_54(v26);
  OUTLINED_FUNCTION_198();
  return result;
}

uint64_t sub_1C8EB7944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313248, &unk_1C906B540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C8EB79AC()
{
  result = qword_1EDA6B220;
  if (!qword_1EDA6B220)
  {
    type metadata accessor for ToolRecord();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B220);
  }

  return result;
}

uint64_t sub_1C8EB7A04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313278, &qword_1C90C63C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.containerExists(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_7_33();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D38, &qword_1C90C6380);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_73();
  if (qword_1EDA69668 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v8 = sub_1C9062E6C();
  __swift_project_value_buffer(v8, qword_1EDA6EB50);
  v16[3] = v8;
  v16[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_10_0(v8);
  (*(v9 + 16))();
  v15[3] = MEMORY[0x1E69E6158];
  v15[4] = MEMORY[0x1E69A0130];
  v15[0] = v3;
  v15[1] = v2;
  v10 = sub_1C90627EC();
  OUTLINED_FUNCTION_45_1(v10, MEMORY[0x1E699FE60]);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_3_41();
  sub_1C8EB7944(v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  sub_1C8D24BA0();
  sub_1C90624DC();
  __swift_destroy_boxed_opaque_existential_1(v17);
  OUTLINED_FUNCTION_9_27();
  v11 = OUTLINED_FUNCTION_5_38();
  v12(v11);
  if (!v1)
  {
    v13 = &unk_1F48A86A0 > 0;
  }

  OUTLINED_FUNCTION_2_54(v13);
  OUTLINED_FUNCTION_198();
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.launchServicesStateExists(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_7_33();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D40, &qword_1C909C3A8);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_73();
  if (qword_1EDA607A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1C9062E6C();
  __swift_project_value_buffer(v8, qword_1EDA6E560);
  v16[3] = v8;
  v16[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_10_0(v8);
  (*(v9 + 16))();
  v15[3] = MEMORY[0x1E69E6158];
  v15[4] = MEMORY[0x1E69A0130];
  v15[0] = v3;
  v15[1] = v2;
  v10 = sub_1C90627EC();
  OUTLINED_FUNCTION_45_1(v10, MEMORY[0x1E699FE60]);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_3_41();
  sub_1C8EB7944(v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  sub_1C8E7F154();
  sub_1C90624DC();
  __swift_destroy_boxed_opaque_existential_1(v17);
  OUTLINED_FUNCTION_9_27();
  v11 = OUTLINED_FUNCTION_5_38();
  v12(v11);
  if (!v1)
  {
    v13 = &type metadata for LaunchServicesStateRecord > 0;
  }

  OUTLINED_FUNCTION_2_54(v13);
  OUTLINED_FUNCTION_198();
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.toolExists(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_196();
  v4 = v1;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  OUTLINED_FUNCTION_11(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_73();
  type metadata accessor for ToolRecord();
  if (qword_1EDA68E08 != -1)
  {
    swift_once();
  }

  v15 = sub_1C9062E6C();
  __swift_project_value_buffer(v15, qword_1EDA6E8D8);
  v23[3] = v15;
  v23[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_10_0(v15);
  (*(v16 + 16))();
  v22[3] = MEMORY[0x1E69E6158];
  v22[4] = MEMORY[0x1E69A0130];
  v22[0] = v8;
  v22[1] = v6;
  v17 = sub_1C90627EC();
  OUTLINED_FUNCTION_45_1(v17, MEMORY[0x1E699FE60]);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_3_41();
  sub_1C8EB7944(v22);
  __swift_destroy_boxed_opaque_existential_1(v23);
  sub_1C8EB79AC();
  sub_1C90624DC();
  __swift_destroy_boxed_opaque_existential_1(v24);
  v18 = *(v4 + 16);
  v19 = sub_1C9062C2C();
  (*(v11 + 8))(v3, v9);
  if (!v2)
  {
    v20 = v19 > 0;
  }

  OUTLINED_FUNCTION_2_54(v20);
  OUTLINED_FUNCTION_198();
  return result;
}

BOOL sub_1C8EB7FAC(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1C8EB8018()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318D48);
  __swift_project_value_buffer(v0, qword_1EC318D48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "stateByBundleIdentifier";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoLaunchServicesSnapshot.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_5_39();
      sub_1C8EB8360();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_39();
      sub_1C8EB8268();
    }
  }

  return result;
}

uint64_t sub_1C8EB8268()
{
  sub_1C90637BC();
  type metadata accessor for ToolKitProtoLaunchServicesSnapshot.State(0);
  sub_1C8ECA390(&qword_1EDA611B8, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.State);
  sub_1C8ECA390(&qword_1EDA611B0, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.State);
  return sub_1C90638CC();
}

uint64_t sub_1C8EB8360()
{
  v0 = *(type metadata accessor for ToolKitProtoLaunchServicesSnapshot(0) + 20);
  type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version(0);
  sub_1C8ECA390(qword_1EDA61168, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version);
  return sub_1C9063A4C();
}

void ToolKitProtoLaunchServicesSnapshot.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!*(*v0 + 16) || (sub_1C90637BC(), type metadata accessor for ToolKitProtoLaunchServicesSnapshot.State(0), sub_1C8ECA390(&qword_1EDA611B8, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.State), sub_1C8ECA390(&qword_1EDA611B0, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.State), OUTLINED_FUNCTION_46_11(), !v1))
  {
    v2 = OUTLINED_FUNCTION_2_55();
    sub_1C8EB8518(v2, v3, v4, v5);
    if (!v1)
    {
      v6 = *(type metadata accessor for ToolKitProtoLaunchServicesSnapshot(0) + 24);
      OUTLINED_FUNCTION_13_23();
    }
  }

  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C8EB8518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D8, &unk_1C909DFC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoLaunchServicesSnapshot(0) + 20);
  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC3129D8, &unk_1C909DFC0);
  }

  sub_1C8ECA3D8();
  sub_1C8ECA390(qword_1EDA61168, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version);
  sub_1C9063BCC();
  return sub_1C8ECA430(v11, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version);
}

void static ToolKitProtoLaunchServicesSnapshot.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version(0);
  v6 = OUTLINED_FUNCTION_13_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D8, &unk_1C909DFC0);
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_73();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129E0, &unk_1C9068DC0);
  OUTLINED_FUNCTION_13_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  v22 = *v4;
  v23 = *v2;
  sub_1C8F57AC8();
  if ((v24 & 1) == 0)
  {
    goto LABEL_22;
  }

  v40 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot(0);
  v25 = *(v40 + 20);
  v26 = *(v16 + 48);
  OUTLINED_FUNCTION_44_18();
  sub_1C8ECA488();
  OUTLINED_FUNCTION_44_18();
  sub_1C8ECA488();
  OUTLINED_FUNCTION_191(v21);
  if (v31)
  {
    OUTLINED_FUNCTION_191(&v21[v26]);
    if (v31)
    {
      sub_1C8D16D78(v21, &qword_1EC3129D8, &unk_1C909DFC0);
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8ECA488();
  OUTLINED_FUNCTION_191(&v21[v26]);
  if (v31)
  {
    sub_1C8ECA430(v0, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version);
LABEL_11:
    v32 = &qword_1EC3129E0;
    v33 = &unk_1C9068DC0;
LABEL_21:
    sub_1C8D16D78(v21, v32, v33);
LABEL_22:
    v30 = 0;
    goto LABEL_23;
  }

  sub_1C8ECA3D8();
  v34 = *v0 == *v11 && v0[1] == v11[1];
  if (!v34 && (sub_1C9064C2C() & 1) == 0 || v0[2] != v11[2])
  {
    sub_1C8ECA430(v11, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version);
    sub_1C8ECA430(v0, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version);
    v32 = &qword_1EC3129D8;
    v33 = &unk_1C909DFC0;
    goto LABEL_21;
  }

  v35 = *(v5 + 24);
  sub_1C90637EC();
  OUTLINED_FUNCTION_0_64();
  sub_1C8ECA390(v36, v37);
  v38 = sub_1C9063EAC();
  sub_1C8ECA430(v11, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version);
  sub_1C8ECA430(v0, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version);
  sub_1C8D16D78(v21, &qword_1EC3129D8, &unk_1C909DFC0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_7:
  v27 = *(v40 + 24);
  sub_1C90637EC();
  OUTLINED_FUNCTION_0_64();
  sub_1C8ECA390(v28, v29);
  v30 = sub_1C9063EAC();
LABEL_23:
  OUTLINED_FUNCTION_50_0(v30);
  OUTLINED_FUNCTION_163();
}

uint64_t (*sub_1C8EB8AB4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C8EB8B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC319150, type metadata accessor for ToolKitProtoLaunchServicesSnapshot);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EB8B88(uint64_t a1)
{
  v2 = sub_1C8ECA390(qword_1EDA61128, type metadata accessor for ToolKitProtoLaunchServicesSnapshot);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EB8BF8()
{
  sub_1C8ECA390(qword_1EDA61128, type metadata accessor for ToolKitProtoLaunchServicesSnapshot);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EB8CB8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318D70);
  __swift_project_value_buffer(v0, qword_1EC318D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleId";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "persistentIdentifier";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8EB8F30(void (*a1)(void))
{
  sub_1C9064D7C();
  a1(0);
  v2 = OUTLINED_FUNCTION_100();
  sub_1C8ECA390(v2, v3);
  sub_1C9063E7C();
  return sub_1C9064DBC();
}

uint64_t sub_1C8EB8FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC319148, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.State);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EB905C(uint64_t a1)
{
  v2 = sub_1C8ECA390(&qword_1EDA611B8, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.State);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EB90CC()
{
  sub_1C8ECA390(&qword_1EDA611B8, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.State);

  return sub_1C9063ABC();
}

void sub_1C8EB9170(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  OUTLINED_FUNCTION_68_6();
  *a4 = v7;
  *a5 = v8;
}

uint64_t sub_1C8EB91EC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318D98);
  __swift_project_value_buffer(v0, qword_1EC318D98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sequenceNumber";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoLaunchServicesSnapshot.Version.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B8C(), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B5C(), !v0))
    {
      v4 = *(type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version(0) + 24);
      return OUTLINED_FUNCTION_13_23();
    }
  }

  return result;
}

uint64_t static ToolKitProtoLaunchServicesSnapshot.Version.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_6_33(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1C9064C2C() & 1) == 0 || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v7 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version(0);
  OUTLINED_FUNCTION_64_7(v7);
  OUTLINED_FUNCTION_0_64();
  sub_1C8ECA390(v8, v9);
  return OUTLINED_FUNCTION_12_28() & 1;
}

uint64_t sub_1C8EB9598(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC319140, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EB9618(uint64_t a1)
{
  v2 = sub_1C8ECA390(qword_1EDA61168, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EB9688()
{
  sub_1C8ECA390(qword_1EDA61168, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version);

  return sub_1C9063ABC();
}

uint64_t ToolKitProtoLinkSnapshot.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_5_39();
      sub_1C8EB97A8();
    }
  }

  return result;
}

uint64_t sub_1C8EB97A8()
{
  sub_1C90637BC();
  type metadata accessor for ToolKitProtoLinkSnapshot.State(0);
  sub_1C8ECA390(&qword_1EC318F70, type metadata accessor for ToolKitProtoLinkSnapshot.State);
  sub_1C8ECA390(&qword_1EC318F78, type metadata accessor for ToolKitProtoLinkSnapshot.State);
  return sub_1C90638CC();
}

void ToolKitProtoLinkSnapshot.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!*(*v0 + 16) || (sub_1C90637BC(), type metadata accessor for ToolKitProtoLinkSnapshot.State(0), sub_1C8ECA390(&qword_1EC318F70, type metadata accessor for ToolKitProtoLinkSnapshot.State), sub_1C8ECA390(&qword_1EC318F78, type metadata accessor for ToolKitProtoLinkSnapshot.State), OUTLINED_FUNCTION_46_11(), !v1))
  {
    v2 = *(type metadata accessor for ToolKitProtoLinkSnapshot(0) + 20);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_18_4();
}

uint64_t (*sub_1C8EB9A34(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C8EB9A88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC319138, type metadata accessor for ToolKitProtoLinkSnapshot);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EB9B08(uint64_t a1)
{
  v2 = sub_1C8ECA390(&qword_1EC319028, type metadata accessor for ToolKitProtoLinkSnapshot);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EB9B78()
{
  sub_1C8ECA390(&qword_1EC319028, type metadata accessor for ToolKitProtoLinkSnapshot);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EB9BF8()
{
  result = MEMORY[0x1CCA81A90](0x65746174532ELL, 0xE600000000000000);
  qword_1EC318DC8 = 0xD000000000000014;
  unk_1EC318DD0 = 0x80000001C90CC400;
  return result;
}

uint64_t sub_1C8EB9C80()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318DD8);
  __swift_project_value_buffer(v0, qword_1EC318DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "containerId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "installIdentifier";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8EB9EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_1_6();
  if (!v7 || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B8C(), !v4))
  {
    if (sub_1C8EB7FAC(*(v5 + 16), *(v5 + 24)) || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B3C(), !v4))
    {
      v9 = *(a4(0) + 24);
      return OUTLINED_FUNCTION_13_23();
    }
  }

  return result;
}

uint64_t sub_1C8EB9F7C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_6_33(a1, a2);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1C9064C2C() & 1) == 0 || (MEMORY[0x1CCA7F9A0](*(v4 + 16), *(v4 + 24), *(v3 + 16), *(v3 + 24)) & 1) == 0)
  {
    return 0;
  }

  v9 = a3(0);
  OUTLINED_FUNCTION_64_7(v9);
  OUTLINED_FUNCTION_0_64();
  sub_1C8ECA390(v10, v11);
  return OUTLINED_FUNCTION_12_28() & 1;
}

uint64_t sub_1C8EBA084(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC319130, type metadata accessor for ToolKitProtoLinkSnapshot.State);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EBA104(uint64_t a1)
{
  v2 = sub_1C8ECA390(&qword_1EC318F70, type metadata accessor for ToolKitProtoLinkSnapshot.State);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EBA174()
{
  sub_1C8ECA390(&qword_1EC318F70, type metadata accessor for ToolKitProtoLinkSnapshot.State);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EBA20C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318DF0);
  __swift_project_value_buffer(v0, qword_1EC318DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "full";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "partial";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "noneVariant";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoChangeset.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 5:
        goto LABEL_9;
      case 4:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8EBA4B8(v3, v4, v5, v6);
        break;
      case 3:
LABEL_9:
        OUTLINED_FUNCTION_5_39();
        sub_1C8EBA9AC();
        break;
    }
  }
}

uint64_t sub_1C8EBA4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A4C0, &unk_1C909DFD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for ToolKitProtoChangesetKind(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191C8, &qword_1C909DFB8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  __swift_storeEnumTagSinglePayload(&v31 - v24, 1, 1, v5);
  v33 = a1;
  sub_1C8ECA488();
  v32 = v14;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v13, &qword_1EC31A4C0, &unk_1C909DFD0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (__swift_getEnumTagSinglePayload(v17, 2, v5))
    {
      sub_1C8ECA430(v17, type metadata accessor for ToolKitProtoChangesetKind);
    }

    else
    {
      sub_1C8D16D78(v25, &qword_1EC3191C8, &qword_1C909DFB8);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }
  }

  sub_1C8ECA390(qword_1EDA62300, type metadata accessor for ToolKitProtoChangeset.Partial);
  v27 = v36;
  sub_1C9063A4C();
  if (v27)
  {
    v28 = v25;
    return sub_1C8D16D78(v28, &qword_1EC3191C8, &qword_1C909DFB8);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_1C8D16D78(v25, &qword_1EC3191C8, &qword_1C909DFB8);
    v28 = v22;
    return sub_1C8D16D78(v28, &qword_1EC3191C8, &qword_1C909DFB8);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v25, &qword_1EC3191C8, &qword_1C909DFB8);
  v30 = v33;
  sub_1C8D16D78(v33, &qword_1EC31A4C0, &unk_1C909DFD0);
  sub_1C8ECA3D8();
  __swift_storeEnumTagSinglePayload(v30, 0, 2, v5);
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v32);
}

void sub_1C8EBA9AC()
{
  OUTLINED_FUNCTION_196();
  v19 = v4;
  OUTLINED_FUNCTION_223();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A4C0, &unk_1C909DFD0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191B0, &qword_1C909DFA0);
  v10 = OUTLINED_FUNCTION_9(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_48_13();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_69_8();
  OUTLINED_FUNCTION_60_10(v14);
  OUTLINED_FUNCTION_16_23();
  sub_1C8ECA390(v15, v16);
  OUTLINED_FUNCTION_54_8();
  if (v1 || (OUTLINED_FUNCTION_52_12(), sub_1C8ECA488(), OUTLINED_FUNCTION_62_9(), v2 == 1))
  {
    sub_1C8D16D78(v3, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  else
  {
    OUTLINED_FUNCTION_73_5();
    v17 = type metadata accessor for ToolKitProtoChangesetKind(0);
    OUTLINED_FUNCTION_59_12(v17);
    if (&qword_1C909DFA0 != 1)
    {
      sub_1C90638EC();
    }

    sub_1C8D16D78(v3, &qword_1EC3191B0, &qword_1C909DFA0);
    sub_1C8D16D78(v0, &qword_1EC31A4C0, &unk_1C909DFD0);
    v18 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
    __swift_storeEnumTagSinglePayload(v0, v19, 2, v18);
    OUTLINED_FUNCTION_71_7();
  }

  OUTLINED_FUNCTION_198();
}

uint64_t ToolKitProtoChangeset.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_43_15();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A4C0, &unk_1C909DFD0);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_30_20();
  v7 = type metadata accessor for ToolKitProtoChangesetKind(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    goto LABEL_2;
  }

  v10 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 2, v10);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      v12 = OUTLINED_FUNCTION_3_4();
      result = sub_1C8EBACD4(v12, v13, v14, v15);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_3_4();
      result = sub_1C8EBB108(v21, v22, v23, v24);
    }

    if (!v1)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_3_4();
    sub_1C8EBAF04(v16, v17, v18, v19);
    OUTLINED_FUNCTION_37_17();
    result = sub_1C8ECA430(v2, v20);
    if (!v1)
    {
LABEL_2:
      v8 = v0 + *(type metadata accessor for ToolKitProtoChangeset(0) + 20);
      OUTLINED_FUNCTION_22_0();
      return sub_1C90637CC();
    }
  }

  return result;
}

uint64_t sub_1C8EBACD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A4C0, &unk_1C909DFD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v17 - v11;
  sub_1C8ECA488();
  v13 = type metadata accessor for ToolKitProtoChangesetKind(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    result = sub_1C8D16D78(v12, &qword_1EC31A4C0, &unk_1C909DFD0);
  }

  else
  {
    v14 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 2, v14);
    result = sub_1C8ECA430(v12, type metadata accessor for ToolKitProtoChangesetKind);
    if (EnumTagSinglePayload == 1)
    {
      sub_1C906372C();
      sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EBAF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A4C0, &unk_1C909DFD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v12 = type metadata accessor for ToolKitProtoChangesetKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC31A4C0, &unk_1C909DFD0);
  }

  else
  {
    if (!__swift_getEnumTagSinglePayload(v7, 2, v8))
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(qword_1EDA62300, type metadata accessor for ToolKitProtoChangeset.Partial);
      sub_1C9063BCC();
      return sub_1C8ECA430(v11, type metadata accessor for ToolKitProtoChangeset.Partial);
    }

    result = sub_1C8ECA430(v7, type metadata accessor for ToolKitProtoChangesetKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EBB108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A4C0, &unk_1C909DFD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v17 - v11;
  sub_1C8ECA488();
  v13 = type metadata accessor for ToolKitProtoChangesetKind(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    result = sub_1C8D16D78(v12, &qword_1EC31A4C0, &unk_1C909DFD0);
  }

  else
  {
    v14 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 2, v14);
    result = sub_1C8ECA430(v12, type metadata accessor for ToolKitProtoChangesetKind);
    if (EnumTagSinglePayload == 2)
    {
      sub_1C906372C();
      sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

void static ToolKitProtoChangeset.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = OUTLINED_FUNCTION_24_2();
  v4 = type metadata accessor for ToolKitProtoChangesetKind(v3);
  v5 = OUTLINED_FUNCTION_13_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_23();
  v8 = OUTLINED_FUNCTION_124();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_73();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318F88, &qword_1C909C470);
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_22(v18);
  OUTLINED_FUNCTION_47_13();
  OUTLINED_FUNCTION_14_2(v0);
  if (v19)
  {
    OUTLINED_FUNCTION_14_2(v0 + v2);
    if (v19)
    {
      sub_1C8D16D78(v0, &qword_1EC31A4C0, &unk_1C909DFD0);
LABEL_12:
      v24 = type metadata accessor for ToolKitProtoChangeset(0);
      OUTLINED_FUNCTION_63_10(v24);
      OUTLINED_FUNCTION_0_64();
      sub_1C8ECA390(v25, v26);
      v21 = OUTLINED_FUNCTION_12_28();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8ECA488();
  OUTLINED_FUNCTION_14_2(v0 + v2);
  if (v19)
  {
    OUTLINED_FUNCTION_37_17();
    sub_1C8ECA430(v1, v20);
LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC318F88, &qword_1C909C470);
    goto LABEL_10;
  }

  sub_1C8ECA3D8();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoChangesetKind.== infix(_:_:)();
  OUTLINED_FUNCTION_61_11();
  v22 = OUTLINED_FUNCTION_125();
  sub_1C8ECA430(v22, v23);
  sub_1C8D16D78(v0, &qword_1EC31A4C0, &unk_1C909DFD0);
  if (&qword_1EC31A4C0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v21);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8EBB5D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC319128, type metadata accessor for ToolKitProtoChangeset);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EBB650(uint64_t a1)
{
  v2 = sub_1C8ECA390(&qword_1EDA65F00, type metadata accessor for ToolKitProtoChangeset);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EBB6C0()
{
  sub_1C8ECA390(&qword_1EDA65F00, type metadata accessor for ToolKitProtoChangeset);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EBB78C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318E18);
  __swift_project_value_buffer(v0, qword_1EC318E18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "LaunchServicesSnapshot";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "appIntentsDatabaseChanged";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "appProtectionChanged";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "cascadeSync";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}