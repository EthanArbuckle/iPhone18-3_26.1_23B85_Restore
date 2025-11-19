uint64_t PlatformUtilities_iOS::ProductIsMuseDevice(PlatformUtilities_iOS *this)
{
  {
    v2 = MGGetBoolAnswer();
    v4 = (v2 & 1) != 0 || (ProductType = PlatformUtilities_iOS::GetProductType(v2), ProductType == 173) || PlatformUtilities_iOS::GetProductType(ProductType) == 188;
    PlatformUtilities_iOS::ProductIsMuseDevice(void)::isMuseDevice = v4;
  }

  return PlatformUtilities_iOS::ProductIsMuseDevice(void)::isMuseDevice;
}

uint64_t PlatformUtilities_iOS::GetProductType(PlatformUtilities_iOS *this)
{
  if (PlatformUtilities_iOS::GetProductType(void)::sCompletedCheck == 1)
  {
    return PlatformUtilities_iOS::GetProductType(void)::sType;
  }

  PlatformUtilities_iOS::GetProductType(void)::sCompletedCheck = 1;
  v2 = MGGetProductType();
  if (v2 > 2158787295)
  {
    if (v2 > 3196158496)
    {
      if (v2 > 3711192743)
      {
        if (v2 > 3885279869)
        {
          if (v2 <= 4068102501)
          {
            if (v2 > 3953847431)
            {
              if (v2 > 4055323050)
              {
                if (v2 == 4055323051)
                {
                  result = 58;
                  goto LABEL_483;
                }

                if (v2 == 4067129264)
                {
                  result = 139;
                  goto LABEL_483;
                }
              }

              else
              {
                if (v2 == 3953847432)
                {
                  result = 170;
                  goto LABEL_483;
                }

                if (v2 == 4025247511)
                {
                  result = 133;
                  goto LABEL_483;
                }
              }

              goto LABEL_482;
            }

            if (v2 == 3885279870)
            {
              result = 32;
              goto LABEL_483;
            }

            if (v2 != 3933865620)
            {
              if (v2 == 3933982784)
              {
                result = 53;
                goto LABEL_483;
              }

              goto LABEL_482;
            }

            goto LABEL_373;
          }

          if (v2 <= 4231109336)
          {
            switch(v2)
            {
              case 4068102502:
                result = 168;
                goto LABEL_483;
              case 4172444931:
                result = 132;
                goto LABEL_483;
              case 4201643249:
                result = 35;
                goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 > 4240173201)
          {
            if (v2 == 4240173202)
            {
              result = 2;
              goto LABEL_483;
            }

            if (v2 == 4242862982)
            {
              result = 80;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 != 4231109337)
          {
            if (v2 == 4232256925)
            {
              result = 114;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_391:
          result = 198;
          goto LABEL_483;
        }

        if (v2 <= 3825599859)
        {
          if (v2 <= 3767261005)
          {
            switch(v2)
            {
              case 3711192744:
                result = 84;
                goto LABEL_483;
              case 3742999858:
                result = 159;
                goto LABEL_483;
              case 3743999268:
                result = 24;
                goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 == 3767261006)
          {
            result = 153;
            goto LABEL_483;
          }

          if (v2 != 3801472101)
          {
            if (v2 == 3819635030)
            {
              result = 160;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_346;
        }

        if (v2 <= 3863625341)
        {
          switch(v2)
          {
            case 3825599860:
              result = 20;
              goto LABEL_483;
            case 3839750255:
              result = 169;
              goto LABEL_483;
            case 3856877970:
              result = 110;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 > 3865922941)
        {
          if (v2 == 3865922942)
          {
            result = 56;
            goto LABEL_483;
          }

          if (v2 == 3867318491)
          {
            result = 162;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 != 3863625342)
        {
          if (v2 == 3865897231)
          {
            result = 79;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_392;
      }

      if (v2 > 3455223060)
      {
        if (v2 <= 3637438249)
        {
          if (v2 <= 3571532205)
          {
            if (v2 == 3455223061)
            {
              result = 83;
              goto LABEL_483;
            }

            if (v2 == 3540156652)
            {
              result = 93;
              goto LABEL_483;
            }

            v8 = 3543203160;
            goto LABEL_276;
          }

          if (v2 <= 3599094682)
          {
            if (v2 == 3571532206)
            {
              result = 151;
              goto LABEL_483;
            }

            if (v2 == 3585085679)
            {
              result = 10;
              goto LABEL_483;
            }

LABEL_482:
            result = 0;
            goto LABEL_483;
          }

          if (v2 != 3599094683)
          {
            if (v2 != 3636345305)
            {
              goto LABEL_482;
            }

            goto LABEL_355;
          }

LABEL_392:
          result = 97;
          goto LABEL_483;
        }

        if (v2 <= 3670339450)
        {
          if (v2 == 3637438250)
          {
            result = 52;
            goto LABEL_483;
          }

          if (v2 != 3645319985)
          {
            if (v2 == 3663011141)
            {
              result = 156;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_400;
        }

        if (v2 > 3683904381)
        {
          if (v2 == 3683904382)
          {
            result = 137;
            goto LABEL_483;
          }

          v4 = 3707345671;
          goto LABEL_367;
        }

        if (v2 == 3670339451)
        {
          goto LABEL_373;
        }

        if (v2 != 3677894691)
        {
          goto LABEL_482;
        }

LABEL_390:
        result = 102;
        goto LABEL_483;
      }

      if (v2 > 3242623366)
      {
        if (v2 <= 3361025852)
        {
          switch(v2)
          {
            case 3242623367:
              result = 15;
              goto LABEL_483;
            case 3300281076:
              result = 54;
              goto LABEL_483;
            case 3348380076:
              result = 4;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 <= 3402870383)
        {
          if (v2 != 3361025853)
          {
            if (v2 == 3397214291)
            {
              result = 74;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_397;
        }

        if (v2 == 3402870384)
        {
          result = 70;
          goto LABEL_483;
        }

        v6 = 3417429877;
LABEL_371:
        if (v2 != v6)
        {
          goto LABEL_482;
        }

        goto LABEL_372;
      }

      if (v2 <= 3217792189)
      {
        if (v2 != 3196158497)
        {
          if (v2 == 3196805751)
          {
            result = 7;
            goto LABEL_483;
          }

          if (v2 == 3215673114)
          {
            result = 75;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_355;
      }

      if (v2 == 3217792190)
      {
        goto LABEL_373;
      }

      if (v2 == 3228373941)
      {
        goto LABEL_393;
      }

      if (v2 != 3241053352)
      {
        goto LABEL_482;
      }

LABEL_405:
      result = 107;
      goto LABEL_483;
    }

    if (v2 > 2673319455)
    {
      if (v2 > 2903084587)
      {
        if (v2 <= 3054476160)
        {
          if (v2 <= 2943112656)
          {
            switch(v2)
            {
              case 2903084588:
                result = 85;
                goto LABEL_483;
              case 2940697645:
                result = 38;
                goto LABEL_483;
              case 2941181571:
                result = 41;
                goto LABEL_483;
            }
          }

          else if (v2 > 2979575959)
          {
            if (v2 == 2979575960)
            {
              result = 155;
              goto LABEL_483;
            }

            if (v2 == 3001488778)
            {
              result = 34;
              goto LABEL_483;
            }
          }

          else
          {
            if (v2 == 2943112657)
            {
              result = 149;
              goto LABEL_483;
            }

            if (v2 == 2959111092)
            {
              result = 95;
              goto LABEL_483;
            }
          }

          goto LABEL_482;
        }

        if (v2 <= 3128362814)
        {
          if (v2 == 3054476161)
          {
            goto LABEL_252;
          }

          if (v2 == 3101941570)
          {
            goto LABEL_282;
          }

          v10 = 3104290450;
LABEL_322:
          if (v2 == v10)
          {
            result = 197;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 <= 3143587591)
        {
          if (v2 != 3128362815)
          {
            if (v2 == 3133873109)
            {
              result = 62;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_372:
          result = 196;
          goto LABEL_483;
        }

        if (v2 == 3143587592)
        {
          result = 166;
          goto LABEL_483;
        }

        v9 = 3184375231;
LABEL_336:
        if (v2 == v9)
        {
          result = 77;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 > 2751865417)
      {
        if (v2 <= 2795618602)
        {
          switch(v2)
          {
            case 2751865418:
              result = 143;
              goto LABEL_483;
            case 2781508713:
              result = 6;
              goto LABEL_483;
            case 2793418701:
              result = 19;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 <= 2823174121)
        {
          if (v2 == 2795618603)
          {
            result = 42;
            goto LABEL_483;
          }

          if (v2 == 2797549163)
          {
            result = 113;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 != 2823174122)
        {
          v4 = 2880863278;
          goto LABEL_367;
        }

        goto LABEL_394;
      }

      if (v2 > 2702125346)
      {
        switch(v2)
        {
          case 2702125347:
            result = 3;
            goto LABEL_483;
          case 2722529672:
            result = 28;
            goto LABEL_483;
          case 2730762296:
            result = 112;
            goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 != 2673319456)
      {
        if (v2 == 2688879999)
        {
          result = 39;
          goto LABEL_483;
        }

        v7 = 2692844695;
LABEL_298:
        if (v2 == v7)
        {
          result = 199;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_403;
    }

    if (v2 > 2454275342)
    {
      if (v2 > 2614323574)
      {
        if (v2 > 2625074842)
        {
          if (v2 <= 2634105756)
          {
            if (v2 == 2625074843)
            {
              result = 161;
              goto LABEL_483;
            }

            v5 = 2628394914;
LABEL_208:
            if (v2 != v5)
            {
              goto LABEL_482;
            }

LABEL_252:
            result = 101;
            goto LABEL_483;
          }

          if (v2 != 2634105757)
          {
            if (v2 == 2644487444)
            {
              result = 92;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_390;
        }

        if (v2 != 2614323575)
        {
          if (v2 != 2619317134)
          {
            if (v2 != 2622433984)
            {
              goto LABEL_482;
            }

            goto LABEL_319;
          }

          goto LABEL_402;
        }

LABEL_399:
        result = 50;
        goto LABEL_483;
      }

      if (v2 > 2487868871)
      {
        if (v2 == 2487868872)
        {
          goto LABEL_405;
        }

        if (v2 != 2516717268)
        {
          if (v2 == 2566016329)
          {
            result = 94;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

LABEL_403:
        result = 73;
        goto LABEL_483;
      }

      if (v2 == 2454275343)
      {
        result = 63;
        goto LABEL_483;
      }

      if (v2 != 2458172802)
      {
        v3 = 2468178735;
LABEL_187:
        if (v2 == v3)
        {
          result = 120;
          goto LABEL_483;
        }

        goto LABEL_482;
      }
    }

    else
    {
      if (v2 > 2288107368)
      {
        if (v2 <= 2336512886)
        {
          if (v2 != 2288107369)
          {
            if (v2 == 2309863438)
            {
              result = 37;
              goto LABEL_483;
            }

            if (v2 == 2311900306)
            {
              result = 14;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_406;
        }

        if (v2 > 2418348557)
        {
          if (v2 == 2418348558)
          {
            result = 135;
            goto LABEL_483;
          }

          if (v2 == 2445473385)
          {
            result = 124;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 == 2336512887)
        {
          goto LABEL_398;
        }

        if (v2 != 2385671069)
        {
          goto LABEL_482;
        }

        goto LABEL_399;
      }

      if (v2 <= 2236272847)
      {
        if (v2 != 2158787296)
        {
          if (v2 == 2159747553)
          {
            result = 26;
            goto LABEL_483;
          }

          if (v2 != 2162679683)
          {
            goto LABEL_482;
          }

          goto LABEL_401;
        }

LABEL_232:
        result = 69;
        goto LABEL_483;
      }

      if (v2 != 2236272848)
      {
        if (v2 != 2262113699)
        {
          if (v2 == 2270970153)
          {
            result = 21;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_404;
      }
    }

LABEL_355:
    result = 87;
    goto LABEL_483;
  }

  if (v2 <= 1302273957)
  {
    if (v2 > 676119127)
    {
      if (v2 > 952317140)
      {
        if (v2 <= 1169082143)
        {
          if (v2 > 1085318933)
          {
            if (v2 <= 1114644380)
            {
              if (v2 == 1085318934)
              {
                result = 131;
                goto LABEL_483;
              }

              if (v2 == 1110205732)
              {
                result = 48;
                goto LABEL_483;
              }

              goto LABEL_482;
            }

            if (v2 == 1114644381)
            {
              result = 82;
              goto LABEL_483;
            }

            v4 = 1119807502;
LABEL_367:
            if (v2 == v4)
            {
              result = 51;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 != 952317141)
          {
            if (v2 != 1036038801)
            {
              if (v2 == 1060988941)
              {
                result = 9;
                goto LABEL_483;
              }

              goto LABEL_482;
            }

            goto LABEL_290;
          }

LABEL_398:
          result = 121;
          goto LABEL_483;
        }

        if (v2 <= 1280441782)
        {
          switch(v2)
          {
            case 1169082144:
              result = 33;
              goto LABEL_483;
            case 1234705395:
              result = 125;
              goto LABEL_483;
            case 1260109173:
              result = 45;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 > 1293446024)
        {
          if (v2 != 1293446025)
          {
            if (v2 == 1294429942)
            {
              result = 147;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_389;
        }

        if (v2 != 1280441783)
        {
          if (v2 == 1280909812)
          {
            result = 152;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

LABEL_396:
        result = 78;
        goto LABEL_483;
      }

      if (v2 > 776033018)
      {
        if (v2 > 851437780)
        {
          if (v2 <= 910181309)
          {
            if (v2 == 851437781)
            {
              result = 29;
              goto LABEL_483;
            }

            if (v2 == 896202454)
            {
              result = 71;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 == 910181310)
          {
            goto LABEL_395;
          }

          v10 = 910313402;
          goto LABEL_322;
        }

        if (v2 == 776033019)
        {
          result = 57;
          goto LABEL_483;
        }

        if (v2 != 810906663)
        {
          if (v2 != 820711327)
          {
            goto LABEL_482;
          }

          goto LABEL_232;
        }

LABEL_319:
        result = 98;
        goto LABEL_483;
      }

      if (v2 <= 746003605)
      {
        if (v2 == 676119128)
        {
          result = 146;
          goto LABEL_483;
        }

        if (v2 == 689804742)
        {
          result = 36;
          goto LABEL_483;
        }

        v6 = 698697055;
        goto LABEL_371;
      }

      if (v2 == 746003606)
      {
        goto LABEL_252;
      }

      if (v2 == 749116821)
      {
        result = 165;
        goto LABEL_483;
      }

      if (v2 != 761631964)
      {
        goto LABEL_482;
      }

LABEL_394:
      result = 109;
      goto LABEL_483;
    }

    if (v2 <= 337183580)
    {
      if (v2 > 133314239)
      {
        if (v2 <= 228444037)
        {
          if (v2 == 133314240)
          {
            result = 40;
            goto LABEL_483;
          }

          if (v2 != 157833461)
          {
            if (v2 == 173258742)
            {
              result = 59;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_396;
        }

        if (v2 > 262180326)
        {
          if (v2 == 262180327)
          {
            result = 123;
            goto LABEL_483;
          }

          if (v2 == 330877086)
          {
            result = 43;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 != 228444038)
        {
          v3 = 253148925;
          goto LABEL_187;
        }

LABEL_400:
        result = 72;
        goto LABEL_483;
      }

      if (v2 <= 42878381)
      {
        switch(v2)
        {
          case 23433786:
            result = 61;
            goto LABEL_483;
          case 33245053:
            result = 68;
            goto LABEL_483;
          case 40511012:
            result = 134;
            goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 == 42878382)
      {
        result = 12;
        goto LABEL_483;
      }

      if (v2 != 79936591)
      {
        v9 = 88647037;
        goto LABEL_336;
      }

LABEL_404:
      result = 76;
      goto LABEL_483;
    }

    if (v2 <= 363237282)
    {
      if (v2 > 344862119)
      {
        switch(v2)
        {
          case 344862120:
            result = 115;
            goto LABEL_483;
          case 355234908:
            result = 129;
            goto LABEL_483;
          case 358923952:
            result = 126;
            goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 == 337183581)
      {
        result = 11;
        goto LABEL_483;
      }

      if (v2 == 340218669)
      {
        result = 111;
        goto LABEL_483;
      }

      if (v2 != 341800273)
      {
        goto LABEL_482;
      }

      goto LABEL_346;
    }

    if (v2 <= 502329936)
    {
      if (v2 != 363237283)
      {
        if (v2 == 425046865)
        {
          result = 157;
          goto LABEL_483;
        }

        if (v2 == 445396642)
        {
          result = 117;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_373;
    }

    if (v2 <= 555503453)
    {
      if (v2 == 502329937)
      {
        result = 22;
        goto LABEL_483;
      }

      v4 = 551446205;
      goto LABEL_367;
    }

    if (v2 != 555503454)
    {
      if (v2 == 574536383)
      {
        result = 30;
        goto LABEL_483;
      }

      goto LABEL_482;
    }

LABEL_402:
    result = 106;
    goto LABEL_483;
  }

  if (v2 > 1733600852)
  {
    if (v2 > 2023824666)
    {
      if (v2 <= 2085054104)
      {
        if (v2 > 2078329140)
        {
          if (v2 <= 2081274471)
          {
            if (v2 == 2078329141)
            {
              result = 31;
              goto LABEL_483;
            }

            if (v2 == 2080700391)
            {
              result = 46;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 != 2081274472)
          {
            if (v2 == 2084894489)
            {
              result = 164;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_401:
          result = 122;
          goto LABEL_483;
        }

        if (v2 == 2023824667)
        {
          goto LABEL_282;
        }

        if (v2 != 2032616841)
        {
          if (v2 == 2048538371)
          {
            result = 60;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

LABEL_395:
        result = 25;
        goto LABEL_483;
      }

      if (v2 > 2103978417)
      {
        if (v2 <= 2141052861)
        {
          if (v2 != 2103978418)
          {
            if (v2 == 2132302344)
            {
              result = 148;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_389:
          result = 96;
          goto LABEL_483;
        }

        if (v2 != 2141052862)
        {
          v6 = 2144123136;
          goto LABEL_371;
        }

LABEL_373:
        result = 195;
        goto LABEL_483;
      }

      if (v2 == 2085054105)
      {
        result = 158;
        goto LABEL_483;
      }

      if (v2 != 2089455188)
      {
        v7 = 2095883268;
        goto LABEL_298;
      }

LABEL_397:
      result = 105;
      goto LABEL_483;
    }

    if (v2 > 1868379042)
    {
      if (v2 <= 1908832378)
      {
        if (v2 != 1868379043)
        {
          if (v2 == 1878257790)
          {
            result = 81;
            goto LABEL_483;
          }

          if (v2 == 1895344378)
          {
            result = 86;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_282;
      }

      if (v2 > 2001966016)
      {
        if (v2 != 2001966017)
        {
          if (v2 == 2021146989)
          {
            result = 18;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_346;
      }

      if (v2 != 1908832379)
      {
        if (v2 == 1990293942)
        {
          result = 140;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_391;
    }

    if (v2 <= 1756509289)
    {
      if (v2 == 1733600853)
      {
        result = 128;
        goto LABEL_483;
      }

      if (v2 == 1737882206)
      {
        result = 116;
        goto LABEL_483;
      }

      v8 = 1744899922;
LABEL_276:
      if (v2 != v8)
      {
        goto LABEL_482;
      }

      goto LABEL_373;
    }

    if (v2 == 1756509290)
    {
      result = 144;
      goto LABEL_483;
    }

    if (v2 == 1770142589)
    {
      result = 163;
      goto LABEL_483;
    }

    v5 = 1834147427;
    goto LABEL_208;
  }

  if (v2 <= 1429914405)
  {
    if (v2 > 1373516432)
    {
      if (v2 > 1408738133)
      {
        if (v2 > 1415625991)
        {
          if (v2 == 1415625992)
          {
            result = 136;
            goto LABEL_483;
          }

          if (v2 == 1419435331)
          {
            result = 142;
            goto LABEL_483;
          }
        }

        else
        {
          if (v2 == 1408738134)
          {
            result = 150;
            goto LABEL_483;
          }

          if (v2 == 1412429328)
          {
            result = 65;
            goto LABEL_483;
          }
        }

        goto LABEL_482;
      }

      if (v2 != 1373516433)
      {
        if (v2 == 1380747801)
        {
          result = 127;
          goto LABEL_483;
        }

        if (v2 == 1402208364)
        {
          result = 130;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

LABEL_282:
      result = 100;
      goto LABEL_483;
    }

    if (v2 <= 1353145732)
    {
      if (v2 != 1302273958)
      {
        if (v2 == 1309571158)
        {
          result = 141;
          goto LABEL_483;
        }

        if (v2 == 1325975682)
        {
          result = 67;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

LABEL_406:
      result = 108;
      goto LABEL_483;
    }

    if (v2 != 1353145733)
    {
      if (v2 != 1364038516)
      {
        if (v2 == 1371389549)
        {
          result = 27;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_372;
    }

LABEL_346:
    result = 88;
    goto LABEL_483;
  }

  if (v2 > 1573906121)
  {
    if (v2 > 1625227433)
    {
      if (v2 > 1701146936)
      {
        if (v2 == 1701146937)
        {
          result = 49;
          goto LABEL_483;
        }

        if (v2 == 1721691077)
        {
          result = 16;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 != 1625227434)
      {
        if (v2 == 1644180312)
        {
          result = 145;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

LABEL_393:
      result = 104;
      goto LABEL_483;
    }

    if (v2 == 1573906122)
    {
      result = 138;
      goto LABEL_483;
    }

    if (v2 == 1602181456)
    {
      result = 154;
      goto LABEL_483;
    }

    if (v2 != 1608945770)
    {
      goto LABEL_482;
    }

LABEL_290:
    result = 192;
    goto LABEL_483;
  }

  if (v2 <= 1540760352)
  {
    switch(v2)
    {
      case 1429914406:
        result = 23;
        goto LABEL_483;
      case 1434404433:
        result = 17;
        goto LABEL_483;
      case 1517755655:
        result = 171;
        goto LABEL_483;
    }

    goto LABEL_482;
  }

  if (v2 > 1554479184)
  {
    if (v2 == 1554479185)
    {
      result = 167;
      goto LABEL_483;
    }

    if (v2 == 1559256613)
    {
      result = 55;
      goto LABEL_483;
    }

    goto LABEL_482;
  }

  if (v2 == 1540760353)
  {
    result = 5;
    goto LABEL_483;
  }

  if (v2 != 1549248876)
  {
    goto LABEL_482;
  }

  result = 172;
LABEL_483:
  PlatformUtilities_iOS::GetProductType(void)::sType = result;
  return result;
}

uint64_t PlatformUtilities_iOS::IsTelephonyCaptureAllowed(caulk::build::detail *a1)
{
  v1 = a1;
  kind = caulk::build::detail::get_kind(a1);
  if ((kind & 1) == 0 && (caulk::build::detail::get_kind(kind) & 2) == 0)
  {
    return 0;
  }

  CFPreferencesAppSynchronize(@"com.apple.coreaudio");
  result = CACFPreferencesGetAppIntegerValue(@"EnableTelephonyMonitor", @"com.apple.coreaudio", 0);
  if (result)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        v4 = @"com.apple.coreaudio";
        CFPreferencesAppSynchronize(@"com.apple.coreaudio");
        v5 = @"EnableHALTelephonyMonitor";
        return CACFPreferencesGetAppIntegerValue(v5, v4, 0) != 0;
      }

      if (v1 == 3)
      {
        v4 = @"com.apple.audio.virtualaudio";
        CFPreferencesAppSynchronize(@"com.apple.audio.virtualaudio");
        v5 = @"EnableEANCTelephonyMonitor";
        return CACFPreferencesGetAppIntegerValue(v5, v4, 0) != 0;
      }
    }

    else
    {
      if (!v1)
      {
        v4 = @"com.apple.coreaudio";
        CFPreferencesAppSynchronize(@"com.apple.coreaudio");
        v5 = @"EnableVPTelephonyMonitor";
        return CACFPreferencesGetAppIntegerValue(v5, v4, 0) != 0;
      }

      if (v1 == 1)
      {
        v4 = @"com.apple.audio.virtualaudio";
        CFPreferencesAppSynchronize(@"com.apple.audio.virtualaudio");
        v5 = @"EnableVADTelephonyMonitor";
        return CACFPreferencesGetAppIntegerValue(v5, v4, 0) != 0;
      }
    }

    v6 = CAVerboseAbort();
    return PlatformUtilities_iOS::ProductSupportsTelephonyOverUSB(v6);
  }

  return result;
}

uint64_t PlatformUtilities_iOS::ProductSupportsTelephonyOverUSB(PlatformUtilities_iOS *this)
{
  result = MGGetBoolAnswer();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

void PlatformUtilities_iOS::TrimHardwareModelShortName(__CFString *this, __CFString *a2)
{
  if (!this)
  {
    return;
  }

  v3 = @"AP";
  if (CFStringHasSuffix(this, @"AP") || (v3 = @"DEV", CFStringHasSuffix(this, @"DEV")) || (v3 = @"ap", CFStringHasSuffix(this, @"ap")) || (v3 = @"dev", CFStringHasSuffix(this, @"dev")))
  {
    CFStringTrim(this, v3);
  }

  suffix = 0;
  v10 = 1;
  v4 = MGGetProductType();
  if (v4 == 952317141)
  {
    v7 = CFStringCreateWithCString(0, "u", 0x600u);
    v8 = 1;
    CACFString::operator=(&suffix, &v7);
  }

  else
  {
    if (v4 != 2081274472 && v4 != 2468178735)
    {
      goto LABEL_14;
    }

    v7 = CFStringCreateWithCString(0, "m", 0x600u);
    v8 = 1;
    CACFString::operator=(&suffix, &v7);
  }

  CACFString::~CACFString(&v7);
LABEL_14:
  v5 = suffix;
  if (suffix)
  {
    if (CFStringHasSuffix(this, suffix))
    {
      Length = CFStringGetLength(this);
      v11.length = CFStringGetLength(v5);
      v11.location = Length - v11.length;
      CFStringFindAndReplace(this, v5, &stru_1F595EA00, v11, 1uLL);
    }
  }

  CACFString::~CACFString(&suffix);
}

void sub_1DE1E3E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  CACFString::~CACFString(&a9);
  CACFString::~CACFString(&a11);
  _Unwind_Resume(a1);
}

uint64_t CACFString::operator=(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 != *a1)
  {
    if (*a1 && (*(a1 + 8) & 1) != 0)
    {
      CFRelease(*a1);
      v3 = *a2;
    }

    *a1 = v3;
    v5 = *(a2 + 8);
    *(a1 + 8) = v5;
    if (v5 == 1 && v3 != 0)
    {
      CFRetain(v3);
    }
  }

  return a1;
}

void CACFString::~CACFString(CACFString *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

uint64_t PlatformUtilities_iOS::GetBuiltInMicCount(PlatformUtilities_iOS *this)
{
  {
    PlatformUtilities_iOS::GetBuiltInMicCount(void)::sMicCount = PlatformUtilities_iOS::GetBuiltInMicCount(void)::$_0::operator()();
  }

  return PlatformUtilities_iOS::GetBuiltInMicCount(void)::sMicCount;
}

const __CFNumber *PlatformUtilities_iOS::GetBuiltInMicCount(void)::$_0::operator()()
{
  result = MGCopyAnswer();
  valuePtr = 0;
  if (result)
  {
    v1 = result;
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v1);
    return valuePtr;
  }

  return result;
}

CFStringRef PlatformUtilities_iOS::CopyAcousticIDFilePrefix(PlatformUtilities_iOS *this)
{
  if (MGIsQuestionValid())
  {
    v32 = MGGetSInt32Answer();
  }

  else
  {
    v32 = 0;
  }

  v46[6] = 0;
  v1 = MEMORY[0x1E69E5560] + 104;
  v46[0] = MEMORY[0x1E69E5560] + 104;
  v2 = MEMORY[0x1E69E5560] + 64;
  v36 = MEMORY[0x1E69E5560] + 64;
  v3 = MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 24);
  v35[0] = *(MEMORY[0x1E69E54D8] + 16);
  *(v35 + *(v35[0] - 24)) = v4;
  v35[1] = 0;
  v5 = (v35 + *(v35[0] - 24));
  std::ios_base::init(v5, &v37);
  v6 = MEMORY[0x1E69E5560] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  v7 = v3[5];
  v36 = v3[4];
  *(&v36 + *(v36 - 24)) = v7;
  v35[0] = v3[1];
  *(v35 + *(v35[0] - 24)) = v3[6];
  v46[0] = v1;
  v35[0] = v6;
  v8 = MEMORY[0x1E69E5538] + 16;
  v36 = v2;
  v37 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E12BF390](&v38);
  __src[1] = 0;
  v42 = 0u;
  v9 = MEMORY[0x1E69E5548] + 16;
  memset(&__p, 0, sizeof(__p));
  v45 = 24;
  p_p = &__p;
  v37 = MEMORY[0x1E69E5548] + 16;
  v39 = &__p;
  v40 = &__p;
  __src[0] = &__p;
  std::string::resize(&__p, 0x16uLL, 0);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  __src[1] = &__p;
  *&v42 = &__p;
  *(&v42 + 1) = &__p + size;
  MEMORY[0x1E12BF2B0](&__dst, &v36);
  if (__dst == 1)
  {
    v31 = v8;
    v11 = &v36 + *(v36 - 24);
    v12 = *(v11 + 5);
    v13 = *(v11 + 2);
    v14 = *(v11 + 36);
    if (v14 == -1)
    {
      std::ios_base::getloc((&v36 + *(v36 - 24)));
      v15 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
      v14 = (v15->__vftable[2].~facet_0)(v15, 32);
      std::locale::~locale(&__b);
      *(v11 + 36) = v14;
    }

    if ((v13 & 0xB0) == 0x20)
    {
      v16 = "";
    }

    else
    {
      v16 = "AID";
    }

    if (!v12)
    {
      goto LABEL_32;
    }

    v17 = *(v11 + 3);
    v18 = v17 <= 3;
    v19 = v17 - 3;
    v20 = v18 ? 0 : v19;
    if (v16 - "AID" >= 1 && (*(*v12 + 96))(v12, "AID", v16 - "AID") != v16 - "AID")
    {
      goto LABEL_32;
    }

    if (v20 >= 1)
    {
      if (v20 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v20 >= 0x17)
      {
        operator new();
      }

      v48 = v20;
      memset(&__b, v14, v20);
      *(&__b.__locale_ + v20) = 0;
      if (v48 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v22 = (*(*v12 + 96))(v12, p_b, v20);
      if (v48 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v22 != v20)
      {
        goto LABEL_32;
      }
    }

    v23 = "AID" - v16 + 3;
    if (v23 < 1 || (*(*v12 + 96))(v12, v16, "AID" - v16 + 3) == v23)
    {
      *(v11 + 3) = 0;
      v3 = MEMORY[0x1E69E54D8];
      v8 = v31;
    }

    else
    {
LABEL_32:
      v3 = MEMORY[0x1E69E54D8];
      v8 = v31;
      std::ios_base::clear((&v36 + *(v36 - 24)), *(&__src[-1] + *(v36 - 24)) | 5);
    }
  }

  MEMORY[0x1E12BF2C0](&__dst);
  MEMORY[0x1E12BF2D0](&v36, v32);
  if ((v45 & 0x10) != 0)
  {
    v25 = p_p;
    if (p_p < v42)
    {
      p_p = v42;
      v25 = v42;
    }

    v26 = __src[1];
  }

  else
  {
    if ((v45 & 8) == 0)
    {
      v24 = 0;
      v34 = 0;
      goto LABEL_46;
    }

    v26 = v39;
    v25 = __src[0];
  }

  v24 = v25 - v26;
  if ((v25 - v26) > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v24 >= 0x17)
  {
    operator new();
  }

  v34 = v25 - v26;
  if (v24)
  {
    memmove(&__dst, v26, v24);
  }

LABEL_46:
  *(&__dst + v24) = 0;
  if (v34 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = CFStringCreateWithCString(0, p_dst, 0x600u);
  if (v34 < 0)
  {
    operator delete(__dst);
  }

  v35[0] = *v3;
  v29 = v3[9];
  *(v35 + *(v35[0] - 24)) = v3[8];
  v36 = v29;
  v37 = v9;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v37 = v8;
  std::locale::~locale(&v38);
  std::iostream::~basic_iostream();
  MEMORY[0x1E12BF3E0](v46);
  return v28;
}

void sub_1DE1E47AC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  if (*(v24 - 89) < 0)
  {
    operator delete(*(v24 - 112));
  }

  MEMORY[0x1E12BF2C0](&__p);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v23 + *(a23 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1DE1E4598);
}

void sub_1DE1E4850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __cxa_end_catch();
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  MEMORY[0x1E12BF3E0](a6);
  _Unwind_Resume(a1);
}

void sub_1DE1E4860(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v34 + 4);
  std::iostream::~basic_iostream();
  JUMPOUT(0x1DE1E48B4);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

CFStringRef PlatformUtilities_iOS::CopyProductTypeFilePrefix(int a1)
{
  v30 = *MEMORY[0x1E69E9840];
  __str[0] = 0;
  switch(a1)
  {
    case 1:
      v28 = 0;
      v1 = 184;
      goto LABEL_218;
    case 2:
      v28 = 0;
      goto LABEL_217;
    case 3:
      v28 = 97;
LABEL_217:
      v1 = 238;
      goto LABEL_218;
    case 4:
      v28 = 0;
      v1 = 520;
      goto LABEL_218;
    case 5:
      v28 = 0;
      v1 = 620;
LABEL_218:
      v24 = 98;
      goto LABEL_242;
    case 6:
      v28 = 0;
      v1 = 10;
      goto LABEL_241;
    case 7:
      v28 = 0;
      v1 = 11;
      goto LABEL_241;
    case 8:
      v28 = 0;
      v1 = 12;
      goto LABEL_241;
    case 9:
      v28 = 0;
      v1 = 16;
      goto LABEL_241;
    case 10:
      v28 = 0;
      v1 = 17;
      goto LABEL_241;
    case 11:
      v28 = 0;
      v1 = 101;
      goto LABEL_241;
    case 12:
      v28 = 0;
      v1 = 111;
      goto LABEL_241;
    case 13:
      v28 = 0;
      v1 = 121;
      goto LABEL_241;
    case 14:
      v28 = 0;
      v1 = 20;
      goto LABEL_241;
    case 15:
      v28 = 0;
      v1 = 21;
      goto LABEL_241;
    case 16:
      v28 = 0;
      v1 = 22;
      goto LABEL_241;
    case 17:
      v28 = 0;
      goto LABEL_228;
    case 18:
      v28 = 0;
      v1 = 28;
      goto LABEL_241;
    case 19:
      v28 = 0;
      v1 = 37;
      goto LABEL_241;
    case 20:
      v28 = 0;
      v1 = 38;
      goto LABEL_241;
    case 21:
      v28 = 0;
      v1 = 201;
      goto LABEL_241;
    case 22:
      v28 = 0;
      v1 = 211;
      goto LABEL_241;
    case 23:
      v28 = 0;
      v1 = 221;
      goto LABEL_241;
    case 24:
      v28 = 0;
      v1 = 32;
      goto LABEL_241;
    case 25:
      v28 = 0;
      v1 = 33;
      goto LABEL_241;
    case 26:
      v28 = 0;
      v1 = 79;
      goto LABEL_241;
    case 27:
      v28 = 0;
      v1 = 42;
      goto LABEL_241;
    case 28:
      v28 = 0;
      v1 = 43;
      goto LABEL_241;
    case 29:
      v28 = 0;
      v1 = 47;
      goto LABEL_241;
    case 30:
      v28 = 0;
      v1 = 48;
      goto LABEL_241;
    case 31:
      v28 = 0;
      v1 = 49;
      goto LABEL_241;
    case 32:
      v28 = 103;
      v1 = 52;
      goto LABEL_241;
    case 33:
      v2 = 103;
      goto LABEL_240;
    case 34:
      v2 = 112;
LABEL_240:
      v28 = v2;
      v1 = 53;
      goto LABEL_241;
    case 35:
      v28 = 112;
      v1 = 54;
      goto LABEL_241;
    case 36:
      v28 = 0;
      v1 = 63;
      goto LABEL_241;
    case 37:
      v28 = 0;
      v1 = 64;
      goto LABEL_241;
    case 38:
      v28 = 0;
      v1 = 73;
      goto LABEL_241;
    case 39:
      v28 = 0;
      v1 = 74;
      goto LABEL_241;
    case 40:
      v28 = 0;
      v1 = 83;
      goto LABEL_241;
    case 41:
      v28 = 0;
      v1 = 84;
      goto LABEL_241;
    case 42:
      v28 = 0;
      v1 = 93;
      goto LABEL_241;
    case 43:
      v28 = 0;
      v1 = 94;
      goto LABEL_241;
    case 44:
      v28 = 117;
LABEL_228:
      v1 = 27;
LABEL_241:
      v24 = 100;
      goto LABEL_242;
    case 45:
      v28 = 0;
      v1 = 59;
      goto LABEL_206;
    case 46:
      v28 = 0;
      v1 = 104;
      goto LABEL_213;
    case 47:
      v28 = 0;
      goto LABEL_53;
    case 48:
      v28 = 100;
LABEL_53:
      v1 = 42;
      goto LABEL_235;
    case 49:
      v28 = 0;
      goto LABEL_112;
    case 50:
      v3 = 98;
      goto LABEL_74;
    case 51:
      v3 = 115;
LABEL_74:
      v28 = v3;
LABEL_112:
      v1 = 71;
      goto LABEL_235;
    case 52:
      v28 = 0;
      v1 = 72;
      goto LABEL_235;
    case 53:
      v28 = 0;
      v1 = 73;
      goto LABEL_235;
    case 54:
      v28 = 0;
      v1 = 81;
      goto LABEL_235;
    case 55:
      v28 = 0;
      v1 = 82;
      goto LABEL_235;
    case 56:
      v28 = 0;
      goto LABEL_194;
    case 57:
      v28 = 109;
LABEL_194:
      v1 = 85;
      goto LABEL_235;
    case 58:
      v28 = 0;
      goto LABEL_234;
    case 59:
      v28 = 109;
LABEL_234:
      v1 = 86;
      goto LABEL_235;
    case 60:
      v28 = 0;
      goto LABEL_72;
    case 61:
      v28 = 109;
LABEL_72:
      v1 = 87;
      goto LABEL_235;
    case 62:
      v28 = 0;
      v1 = 96;
      goto LABEL_235;
    case 63:
      v28 = 0;
      v1 = 97;
      goto LABEL_235;
    case 64:
      v28 = 0;
      goto LABEL_210;
    case 65:
      v28 = 97;
LABEL_210:
      v1 = 98;
      goto LABEL_235;
    case 66:
      v28 = 0;
      goto LABEL_224;
    case 67:
      v28 = 97;
LABEL_224:
      v1 = 99;
      goto LABEL_235;
    case 68:
      v28 = 97;
      v1 = 105;
      goto LABEL_235;
    case 69:
      v28 = 0;
      v1 = 120;
      goto LABEL_235;
    case 70:
      v28 = 0;
      v1 = 127;
      goto LABEL_235;
    case 71:
      v28 = 0;
      v1 = 128;
      goto LABEL_235;
    case 72:
      v28 = 0;
      goto LABEL_152;
    case 73:
      v28 = 97;
LABEL_152:
      v1 = 171;
      goto LABEL_235;
    case 74:
      v28 = 0;
      v1 = 181;
      goto LABEL_235;
    case 75:
      v28 = 0;
      v1 = 182;
      goto LABEL_235;
    case 76:
      v28 = 0;
      v1 = 207;
      goto LABEL_235;
    case 77:
      v28 = 0;
      v1 = 210;
      goto LABEL_235;
    case 78:
      v28 = 0;
      v1 = 217;
      goto LABEL_235;
    case 79:
      v28 = 0;
      v1 = 255;
      goto LABEL_235;
    case 80:
      v28 = 0;
      v1 = 271;
      goto LABEL_235;
    case 81:
      v28 = 0;
      v1 = 272;
      goto LABEL_235;
    case 82:
      v28 = 0;
      v1 = 305;
      goto LABEL_235;
    case 83:
      v28 = 0;
      v1 = 307;
      goto LABEL_235;
    case 84:
      v28 = 0;
      v1 = 308;
      goto LABEL_235;
    case 85:
      v28 = 0;
      v1 = 310;
      goto LABEL_235;
    case 86:
      v28 = 0;
      v1 = 311;
      goto LABEL_235;
    case 87:
      v28 = 0;
      v1 = 317;
      goto LABEL_235;
    case 88:
      v28 = 0;
      v1 = 320;
      goto LABEL_235;
    case 89:
      v28 = 0;
      v1 = 348;
      goto LABEL_235;
    case 90:
      v28 = 0;
      v1 = 381;
      goto LABEL_235;
    case 91:
      v28 = 0;
      v1 = 382;
      goto LABEL_235;
    case 92:
      v28 = 0;
      v1 = 407;
      goto LABEL_235;
    case 93:
      v28 = 0;
      v1 = 408;
      goto LABEL_235;
    case 94:
      v28 = 0;
      v1 = 410;
      goto LABEL_235;
    case 95:
      v28 = 0;
      v1 = 411;
      goto LABEL_235;
    case 96:
      v28 = 0;
      v1 = 417;
      goto LABEL_235;
    case 97:
      v28 = 0;
      v1 = 420;
      goto LABEL_235;
    case 98:
      v28 = 0;
      v1 = 507;
      goto LABEL_235;
    case 99:
      v28 = 0;
      v1 = 508;
      goto LABEL_235;
    case 100:
      v28 = 0;
      v1 = 517;
      goto LABEL_235;
    case 101:
      v28 = 0;
      v1 = 522;
      goto LABEL_235;
    case 102:
      v28 = 0;
      v1 = 537;
      goto LABEL_235;
    case 103:
      v28 = 0;
      v1 = 538;
      goto LABEL_235;
    case 104:
      v28 = 0;
      v1 = 617;
      goto LABEL_235;
    case 105:
      v28 = 0;
      v1 = 620;
      goto LABEL_235;
    case 106:
      v28 = 0;
      v1 = 717;
      goto LABEL_235;
    case 107:
      v28 = 0;
      v1 = 720;
LABEL_235:
      v24 = 106;
      goto LABEL_242;
    case 108:
      v28 = 97;
      v1 = 27;
      goto LABEL_213;
    case 109:
      v28 = 97;
      v1 = 28;
      goto LABEL_213;
    case 110:
      v28 = 0;
      v1 = 41;
      goto LABEL_213;
    case 111:
      v28 = 0;
      v1 = 42;
      goto LABEL_213;
    case 112:
      v28 = 0;
      v1 = 48;
      goto LABEL_213;
    case 113:
      v28 = 0;
      v1 = 49;
      goto LABEL_213;
    case 114:
      v28 = 0;
      v1 = 51;
      goto LABEL_213;
    case 115:
      v28 = 0;
      v1 = 53;
      goto LABEL_213;
    case 116:
      v28 = 0;
      v1 = 56;
      goto LABEL_213;
    case 117:
      v28 = 0;
      v1 = 61;
      goto LABEL_213;
    case 118:
      v28 = 0;
      v1 = 64;
      goto LABEL_213;
    case 119:
      v28 = 0;
      v1 = 65;
      goto LABEL_213;
    case 120:
      v28 = 0;
      v1 = 66;
      goto LABEL_213;
    case 121:
      v28 = 0;
      v1 = 69;
      goto LABEL_213;
    case 122:
      v28 = 0;
      v1 = 71;
      goto LABEL_213;
    case 123:
      v28 = 0;
      v1 = 74;
      goto LABEL_213;
    case 124:
      v28 = 0;
      v1 = 75;
      goto LABEL_213;
    case 125:
      v28 = 0;
      v1 = 841;
      goto LABEL_213;
    case 126:
      v28 = 0;
      v1 = 102;
      goto LABEL_213;
    case 127:
      v28 = 0;
      v1 = 112;
      goto LABEL_213;
    case 128:
      v4 = 115;
      goto LABEL_61;
    case 129:
      v4 = 98;
LABEL_61:
      v28 = v4;
      v1 = 111;
      goto LABEL_213;
    case 130:
      v13 = 115;
      goto LABEL_204;
    case 131:
      v13 = 98;
LABEL_204:
      v28 = v13;
      v1 = 121;
      goto LABEL_213;
    case 132:
      v7 = 115;
      goto LABEL_82;
    case 133:
      v7 = 98;
LABEL_82:
      v28 = v7;
      v1 = 131;
      goto LABEL_213;
    case 134:
      v20 = 115;
      goto LABEL_133;
    case 135:
      v20 = 98;
LABEL_133:
      v28 = v20;
      v1 = 140;
      goto LABEL_213;
    case 136:
      v22 = 115;
      goto LABEL_135;
    case 137:
      v22 = 98;
LABEL_135:
      v28 = v22;
      v1 = 141;
      goto LABEL_213;
    case 138:
      v19 = 115;
      goto LABEL_130;
    case 139:
      v19 = 98;
LABEL_130:
      v28 = v19;
      v1 = 142;
      goto LABEL_213;
    case 140:
      v17 = 98;
      goto LABEL_168;
    case 141:
      v17 = 115;
LABEL_168:
      v28 = v17;
      v1 = 143;
      goto LABEL_213;
    case 142:
      v11 = 115;
      goto LABEL_164;
    case 143:
      v11 = 98;
LABEL_164:
      v28 = v11;
      v1 = 144;
      goto LABEL_213;
    case 144:
      v25 = 115;
      goto LABEL_185;
    case 145:
      v25 = 98;
LABEL_185:
      v28 = v25;
      v1 = 146;
      goto LABEL_213;
    case 146:
      v9 = 98;
      goto LABEL_189;
    case 147:
      v9 = 115;
LABEL_189:
      v28 = v9;
      v1 = 149;
      goto LABEL_213;
    case 148:
      v5 = 115;
      goto LABEL_199;
    case 149:
      v5 = 98;
LABEL_199:
      v28 = v5;
      v1 = 157;
      goto LABEL_213;
    case 150:
      v16 = 115;
      goto LABEL_97;
    case 151:
      v16 = 98;
LABEL_97:
      v28 = v16;
      v1 = 158;
      goto LABEL_213;
    case 152:
      v10 = 115;
      goto LABEL_191;
    case 153:
      v10 = 98;
LABEL_191:
      v28 = v10;
      v1 = 187;
      goto LABEL_213;
    case 154:
      v15 = 115;
      goto LABEL_148;
    case 155:
      v15 = 98;
LABEL_148:
      v28 = v15;
      v1 = 188;
      goto LABEL_213;
    case 156:
      v6 = 115;
      goto LABEL_166;
    case 157:
      v6 = 98;
LABEL_166:
      v28 = v6;
      v1 = 197;
      goto LABEL_213;
    case 158:
      v18 = 115;
      goto LABEL_126;
    case 159:
      v18 = 98;
LABEL_126:
      v28 = v18;
      v1 = 198;
      goto LABEL_213;
    case 160:
      v28 = 0;
      v1 = 199;
      goto LABEL_213;
    case 161:
      v8 = 115;
      goto LABEL_175;
    case 162:
      v8 = 98;
LABEL_175:
      v28 = v8;
      v1 = 207;
      goto LABEL_213;
    case 163:
      v12 = 115;
      goto LABEL_70;
    case 164:
      v12 = 98;
LABEL_70:
      v28 = v12;
      v1 = 208;
      goto LABEL_213;
    case 165:
      v14 = 115;
      goto LABEL_86;
    case 166:
      v14 = 98;
LABEL_86:
      v28 = v14;
      v1 = 217;
      goto LABEL_213;
    case 167:
      v23 = 115;
      goto LABEL_145;
    case 168:
      v23 = 98;
LABEL_145:
      v28 = v23;
      v1 = 218;
      goto LABEL_213;
    case 169:
      v28 = 0;
      v1 = 210;
      goto LABEL_213;
    case 170:
      v28 = 0;
      v1 = 101;
      goto LABEL_172;
    case 171:
      v28 = 0;
      v1 = 102;
      goto LABEL_172;
    case 172:
      v28 = 0;
      v1 = 103;
LABEL_172:
      v24 = 112;
      goto LABEL_242;
    case 173:
      v21 = 110;
      goto LABEL_177;
    case 174:
      v21 = 112;
LABEL_177:
      v28 = v21;
      v1 = 398;
      goto LABEL_178;
    case 175:
      v28 = 0;
      v1 = 456;
      goto LABEL_178;
    case 176:
      v28 = 112;
      v1 = 698;
      goto LABEL_178;
    case 177:
      v28 = 0;
      v1 = 720;
      goto LABEL_178;
    case 178:
      v28 = 0;
      v1 = 721;
      goto LABEL_178;
    case 179:
      v28 = 0;
      v1 = 734;
      goto LABEL_178;
    case 180:
      v28 = 0;
      v1 = 742;
      goto LABEL_178;
    case 181:
      v28 = 0;
      v1 = 1125;
      goto LABEL_178;
    case 182:
      v28 = 0;
      v1 = 1153;
      goto LABEL_178;
    case 183:
      v28 = 0;
      v1 = 1232;
      goto LABEL_178;
    case 184:
      v28 = 0;
      v1 = 1250;
      goto LABEL_178;
    case 185:
      v28 = 0;
      v1 = 1251;
      goto LABEL_178;
    case 186:
      v28 = 0;
      v1 = 1252;
      goto LABEL_178;
    case 187:
      v28 = 0;
      v1 = 1253;
      goto LABEL_178;
    case 188:
      snprintf(__str, 0x18uLL, "%c%d%c", 116, 698, 116);
      goto LABEL_243;
    case 189:
      v28 = 0;
      v1 = 6502;
      goto LABEL_178;
    case 190:
      v28 = 0;
      v1 = 6809;
LABEL_178:
      v24 = 116;
      goto LABEL_242;
    case 191:
      v28 = 0;
      v1 = 100;
      v24 = 113;
      goto LABEL_242;
    case 192:
      v28 = 0;
      v1 = 301;
LABEL_213:
      v24 = 110;
      goto LABEL_242;
    case 193:
      v28 = 0;
      v1 = 314;
      goto LABEL_139;
    case 194:
      v28 = 0;
      v1 = 317;
LABEL_139:
      v24 = 122;
      goto LABEL_242;
    case 195:
      v28 = 0;
      v1 = 101;
      goto LABEL_206;
    case 196:
      v28 = 0;
      v1 = 201;
      goto LABEL_206;
    case 197:
      v28 = 0;
      v1 = 301;
      goto LABEL_206;
    case 198:
      v28 = 0;
      v1 = 401;
      goto LABEL_206;
    case 199:
      v28 = 0;
      v1 = 501;
LABEL_206:
      v24 = 118;
LABEL_242:
      snprintf(__str, 0x18uLL, "%c%d%c", v24, v1, v28);
LABEL_243:
      if (!__str[0])
      {
        goto LABEL_245;
      }

      result = CFStringCreateWithCString(0, __str, 0x600u);
      break;
    default:
LABEL_245:
      result = 0;
      break;
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CADeprecated::CAPThread::SetTimeConstraints(uint64_t this, int a2, int a3, int a4, char a5)
{
  *(this + 108) = a2;
  *(this + 112) = a3;
  *(this + 116) = a4;
  *(this + 120) = a5;
  *(this + 121) = 1;
  if (atomic_load((this + 8)))
  {
    *policy_info = *(this + 108);
    v6 = *(this + 120);
    v11 = *(this + 116);
    v12 = v6;
    v7 = atomic_load((this + 8));
    v8 = pthread_mach_thread_np(v7);
    this = thread_policy_set(v8, 2u, policy_info, 4u);
    if (this)
    {
      v9 = CAVerboseAbort();
      CADeprecated::CAPThread::~CAPThread(v9);
    }
  }

  return this;
}

CADeprecated::CAPThread *CADeprecated::CAPThread::CAPThread(CADeprecated::CAPThread *this, void *(*a2)(void *), void *a3, int a4, int a5, int a6, char a7, char a8, const char *a9)
{
  *this = &unk_1F595E058;
  *(this + 1) = 0;
  v17 = pthread_self();
  *(this + 4) = CADeprecated::CAPThread::getScheduledPriority(v17, 0);
  *(this + 3) = a2;
  *(this + 4) = a3;
  *(this + 26) = 31;
  *(this + 27) = a4;
  *(this + 28) = a5;
  *(this + 29) = a6;
  *(this + 120) = a7;
  *(this + 121) = 1;
  *(this + 123) = a8;
  if (a9)
  {
    strlcpy(this + 40, a9, 0x40uLL);
  }

  else
  {
    *(this + 88) = 0u;
    *(this + 72) = 0u;
    *(this + 56) = 0u;
    *(this + 40) = 0u;
  }

  return this;
}

{
  return CADeprecated::CAPThread::CAPThread(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

pthread_t CADeprecated::CAPThread::SetPriority(pthread_t this, int a2, char a3)
{
  *&this->__opaque[88] = a2;
  this->__opaque[105] = 0;
  this->__opaque[106] = a3;
  if (atomic_load(&this->__cleanup_stack))
  {
    v4 = atomic_load(&this->__cleanup_stack);
    return CADeprecated::CAPThread::SetPriority(v4, *&this->__opaque[88], this->__opaque[106]);
  }

  return this;
}

pthread_t CADeprecated::CAPThread::SetPriority(pthread_t this, _opaque_pthread_t *a2, int a3)
{
  if (this)
  {
    v3 = a2;
    v4 = this;
    if (!a3 || (policy_info = 0, v5 = pthread_mach_thread_np(this), !thread_policy_set(v5, 1u, &policy_info, 1u)))
    {
      v6 = pthread_self();
      v10 = v3 - CADeprecated::CAPThread::getScheduledPriority(v6, 0);
      v7 = pthread_mach_thread_np(v4);
      this = thread_policy_set(v7, 3u, &v10, 1u);
      if (!this)
      {
        return this;
      }

      CAVerboseAbort();
    }

    v8 = CAVerboseAbort();
    return CADeprecated::CAPThread::SetName(v8, v9);
  }

  return this;
}

double CADeprecated::CAPThread::SetName(CADeprecated::CAPThread *this, const char *a2)
{
  if (a2)
  {
    strlcpy(this + 40, a2, 0x40uLL);
  }

  else
  {
    result = 0.0;
    *(this + 88) = 0u;
    *(this + 72) = 0u;
    *(this + 56) = 0u;
    *(this + 40) = 0u;
  }

  return result;
}

uint64_t LogMachError(const char *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = 136316162;
    v7 = "SharableMemory.cpp";
    v8 = 1024;
    v9 = 52;
    v10 = 2080;
    v11 = a1;
    v12 = 1024;
    v13 = a2;
    v14 = 2080;
    v15 = mach_error_string(a2);
    _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d %s failed: 0x%x (%s)", &v6, 0x2Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return a2;
}

void LogPosixError(const char *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = *__error();
    v4 = 136315906;
    v5 = "SharableMemory.cpp";
    v6 = 1024;
    v7 = 58;
    v8 = 2080;
    v9 = a1;
    v10 = 1024;
    v11 = v2;
    _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d %s failed: errno %d", &v4, 0x22u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void SharableMemoryBlock::~SharableMemoryBlock(xpc_object_t *this)
{
  SharableMemoryBlock::~SharableMemoryBlock(this);

  JUMPOUT(0x1E12BF450);
}

{
  *this = &unk_1F595E0C8;
  SharableMemoryBlock::Free(this);
  xpc_release(this[6]);
  this[6] = 0;
}

uint64_t SharableMemoryBase::AllocNonShared(SharableMemoryBase *this, size_t size)
{
  *(this + 8) = 1;
  v4 = malloc_type_malloc(size, 0x78347D88uLL);
  if (size && !v4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_alloc::bad_alloc(exception);
  }

  *(this + 2) = size;
  *(this + 3) = v4;
  if (v4)
  {
    return 0;
  }

  else
  {
    return 4294967188;
  }
}

uint64_t SharableMemoryBase::Set(uint64_t this, void *a2, uint64_t a3)
{
  *(this + 8) = 0;
  *(this + 16) = a3;
  *(this + 24) = a2;
  return this;
}

uint64_t SharableMemoryBlock::MachClientToken::Reset(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  if (v2)
  {
    this = mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
    if (this)
    {
      this = LogMachError("mach_port_deallocate", this);
    }

    *(v1 + 16) = 0;
  }

  *(v1 + 12) = 0;
  return this;
}

void SharableMemoryBlock::XPCClientToken::Reset(SharableMemoryBlock::XPCClientToken *this)
{
  v2 = xpc_null_create();
  v3 = *(this + 2);
  *(this + 2) = v2;
  xpc_release(v3);
  *(this + 3) = 0;
}

uint64_t SharableMemoryBlock::FDClientToken::Reset(SharableMemoryBlock::FDClientToken *this)
{
  result = *(this + 4);
  if (result != -1)
  {
    result = close(result);
    *(this + 4) = -1;
  }

  *(this + 3) = 0;
  return result;
}

void KaiserWindow::KaiserWindow(KaiserWindow *this, int a2, double a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (a2 != -1)
  {
    std::vector<float>::__vallocate[abi:ne200100](this + 16, (a2 + 1));
  }

  if (a3 >= 50.0)
  {
    v3 = (a3 + -8.7) * 0.1102;
  }

  else
  {
    v3 = 0.0;
    if (a3 > 21.0)
    {
      v3 = (a3 + -21.0) * 0.07886 + pow(a3 + -21.0, 0.4) * 0.5842;
    }
  }

  bessi0(v3);
  v5 = 0;
  v6 = 1.0 / v4;
  do
  {
    bessi0(v3 * sqrt(1.0 - (v5 - 0x7FFFFFFFu) / 0x7FFFFFFFu * ((v5 - 0x7FFFFFFFu) / 0x7FFFFFFFu)));
    *&v7 = v6 * v7;
    *(4 * v5++ + 4) = LODWORD(v7);
  }

  while (v5 != 0xFFFFFFFFLL);
  MEMORY[0] = 0;
}

void sub_1DE1E5CB4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<KaiserWindow>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 40;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<KaiserWindow>,KaiserWindow*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 40;
    }
  }

  return a1;
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
}

void bessi0(double a1)
{
  v1 = fabs(a1);
  if (v1 >= 3.75)
  {
    exp(v1);
  }
}

void KaiserWindow::~KaiserWindow(KaiserWindow *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

CFRunLoopSourceRef MSHCreateMachServerSource(const __CFAllocator *a1, CFIndex a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  perform_high = a5;
  HIDWORD(v15.perform) = a5;
  v12 = malloc_type_malloc(0x18uLL, 0x1080040D2F62047uLL);
  v15.version = 1;
  v15.info = v12;
  v15.retain = 0;
  v15.release = mshRelease;
  v15.copyDescription = mshCopyDescription;
  v15.equal = mshEqual;
  v15.hash = mshHash;
  v15.schedule = mshGetPort;
  v15.cancel = mshPerform;
  v13 = *MEMORY[0x1E69E9A60];
  if (!perform_high)
  {
    if (mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &v15.perform + 1))
    {
      goto LABEL_9;
    }

    if ((a4 & 4) == 0 && mach_port_insert_right(v13, HIDWORD(v15.perform), HIDWORD(v15.perform), 0x14u))
    {
      goto LABEL_8;
    }

    a4 &= ~1u;
    perform_high = HIDWORD(v15.perform);
  }

  *(v12 + 1) = a6;
  *(v12 + 2) = a3;
  *v12 = perform_high;
  v12[1] = a4;
  result = CFRunLoopSourceCreate(a1, a2, &v15);
  if (result)
  {
    return result;
  }

  if ((a4 & 1) == 0)
  {
    mach_port_mod_refs(v13, HIDWORD(v15.perform), 0, -1);
LABEL_8:
    mach_port_mod_refs(v13, HIDWORD(v15.perform), 1u, -1);
  }

LABEL_9:
  free(v12);
  return 0;
}

void mshRelease(mach_port_name_t *a1)
{
  v2 = a1[1];
  if ((v2 & 1) == 0)
  {
    v3 = *MEMORY[0x1E69E9A60];
    v4 = *a1;
    if ((v2 & 4) == 0)
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], *a1, 0, -1);
    }

    mach_port_mod_refs(v3, v4, 1u, -1);
  }

  free(a1);
}

CFRunLoopSourceRef MSHCreateMIGServerSource(const __CFAllocator *a1, CFIndex a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  perform_high = a5;
  HIDWORD(v15.perform) = a5;
  v12 = malloc_type_malloc(0x28uLL, 0x10A0040C7231A41uLL);
  v15.version = 1;
  v15.info = v12;
  v15.retain = 0;
  v15.release = mshRelease;
  v15.copyDescription = mshCopyDescription;
  v15.equal = mshEqual;
  v15.hash = mshHash;
  v15.schedule = mshGetPort;
  v15.cancel = mshMIGPerform;
  v13 = *MEMORY[0x1E69E9A60];
  if (!perform_high)
  {
    if (mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &v15.perform + 1))
    {
      goto LABEL_9;
    }

    if ((a4 & 4) == 0 && mach_port_insert_right(v13, HIDWORD(v15.perform), HIDWORD(v15.perform), 0x14u))
    {
      goto LABEL_8;
    }

    a4 &= ~1u;
    perform_high = HIDWORD(v15.perform);
  }

  *v12 = perform_high;
  v12[1] = a4;
  *(v12 + 3) = 0;
  *(v12 + 4) = a3;
  *(v12 + 1) = a6;
  *(v12 + 2) = 0;
  result = CFRunLoopSourceCreate(a1, a2, &v15);
  if (result)
  {
    return result;
  }

  if ((a4 & 1) == 0)
  {
    mach_port_mod_refs(v13, HIDWORD(v15.perform), 0, -1);
LABEL_8:
    mach_port_mod_refs(v13, HIDWORD(v15.perform), 1u, -1);
  }

LABEL_9:
  free(v12);
  return 0;
}

uint64_t MSHGetMachPortFromSource(__CFRunLoopSource *a1)
{
  memset(&v2, 0, sizeof(v2));
  CFRunLoopSourceGetContext(a1, &v2);
  if (v2.version == 1)
  {
    return (v2.schedule)(v2.info);
  }

  else
  {
    return 0;
  }
}

BOOL MSHMIGSourceSetNoSendersCallback(__CFRunLoopSource *a1, uint64_t a2, mach_port_mscount_t a3)
{
  memset(&context, 0, sizeof(context));
  CFRunLoopSourceGetContext(a1, &context);
  info = context.info;
  if (context.info)
  {
    v7 = context.version == 1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 0;
  }

  v9 = MSHGetMachPortFromSource(a1);
  previous = 0;
  v10 = *MEMORY[0x1E69E9A60];
  v11 = info[2];
  if (a2)
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = mach_port_request_notification(*MEMORY[0x1E69E9A60], v9, 70, 0, 0, 0x12u, &previous);
    if (v12)
    {
LABEL_15:
      info[2] = a2;
      goto LABEL_16;
    }

    v13 = previous;
    if (previous)
    {
      v14 = v10;
      v15 = v9;
      v16 = a3;
      v17 = 18;
    }

    else
    {
LABEL_13:
      v14 = v10;
      v15 = v9;
      v16 = a3;
      v13 = v9;
      v17 = 21;
    }

    v12 = mach_port_request_notification(v14, v15, 70, v16, v13, v17, &previous);
    goto LABEL_15;
  }

  if (!v11)
  {
    return 0;
  }

  info[2] = 0;
  v12 = mach_port_request_notification(v10, v9, 70, 0, 0, 0x12u, &previous);
LABEL_16:
  if (previous)
  {
    mach_port_mod_refs(v10, previous, 2u, -1);
  }

  return v12 == 0;
}

void MSHMIGSourceSetSendOnceCallback(__CFRunLoopSource *a1, uint64_t a2)
{
  memset(&v4, 0, sizeof(v4));
  CFRunLoopSourceGetContext(a1, &v4);
  if (v4.info)
  {
    v3 = v4.version == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    *(v4.info + 3) = a2;
  }
}

uint64_t MSHMIGReceiveAndDispatchMessage(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1EEE9AC00]();
  v8 = (v15 - v7);
  v8->msgh_bits = 0;
  v8->msgh_remote_port = 0;
  v8->msgh_local_port = v3;
  *&v8->msgh_voucher_port = 0;
  if (v6)
  {
    v9 = 117441794;
  }

  else
  {
    v9 = 117440514;
  }

  v12 = mach_msg(v8, v9, 0, v4, v5, v6, 0);
  if (!v12)
  {
    memset(v15, 0, sizeof(v15));
    v16 = a2;
    mshMIGPerform(v8, v10, v11, v15);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void CAException::~CAException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1E12BF450);
}

void CAXException::~CAXException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1E12BF450);
}

void virtual thunk toCAException::~CAException(CAException *this)
{
  std::exception::~exception((this + *(*this - 24)));
}

{
  std::exception::~exception((this + *(*this - 24)));

  JUMPOUT(0x1E12BF450);
}

void swix::connection::~connection(swix::connection *this)
{
  *this = &unk_1F595E120;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12BF450);
}

{
  *this = &unk_1F595E120;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_1F595E120;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void swix::ipc_endpoint::configure_rebuilt_connection(uint64_t a1, xpc_connection_t *a2)
{
  v3 = *a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN4swix12ipc_endpoint28configure_rebuilt_connectionERKN10applesauce3xpc10connectionE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_10_104;
  aBlock[4] = a1;
  swix::connection::state::set_handler(*(a1 + 8), v3, aBlock);
  xpc_connection_activate(*a2);
}

void ___ZN4swix12ipc_endpoint28configure_rebuilt_connectionERKN10applesauce3xpc10connectionE_block_invoke(uint64_t a1, xpc_object_t object)
{
  v2 = *(a1 + 32);
  objecta = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    objecta = xpc_null_create();
  }

  swix::ipc_endpoint::handle_event_or_error(v2, &objecta);
  xpc_release(objecta);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
}

xpc_object_t __copy_helper_block_e8_40c35_ZTSKN10applesauce3xpc10connectionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void swix::connection::state::rebuild_connection(uint64_t a1@<X0>, const swix::connection_config *a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 152));
  v4 = *(a1 + 160);
  if (!v4)
  {
    swix::connection_config::connection_config(&v7, (a1 + 16));
    swix::make_connection(a2, &v7);
    swix::detail::connection_impl::create(&v7, a2, v5);
  }

  swix::detail::connection_impl::get(a2, *(v4 + 16));
  os_unfair_lock_unlock((a1 + 152));
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1DE1E6AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void swix::connection_config::~connection_config(swix::connection_config *this)
{
  if (*(this + 120) == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 88);
  }

  v2 = *(this + 7);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(this + 6));
  *(this + 6) = 0;
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void swix::xpc_object_description(swix *this@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = MEMORY[0x1E12BFEC0](this, a2);
  std::string::basic_string[abi:ne200100]<0>(a3, v4);

  free(v4);
}

uint64_t ___ZN4swix6detail14watchdog_timerC2ENS_14timeout_configE_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
}

uint64_t swix::detail::watchdog_timer::timer_fired(swix::detail::watchdog_timer *this)
{
  v2 = *(this + 6);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void swix::detail::watchdog_timer::~watchdog_timer(dispatch_source_t *this)
{
  dispatch_source_cancel(this[8]);
  dispatch_sync(this[7], &__block_literal_global_122);
  v2 = this[8];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = this[7];
  if (v3)
  {
    dispatch_release(v3);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((this + 3));
  v4 = this[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__shared_ptr_emplace<swix::detail::watchdog_timer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F595E270;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BF450);
}

void std::__shared_ptr_emplace<swix::connection::state>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F595E2A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BF450);
}

void swix::connection::send_with_async_reply(uint64_t a1, swix::encode_message *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  swix::connection::xpc_connection(a1, &connection);
  swix::encode_message::xpc_message(a2, &message);
  v6 = *(a1 + 8);
  if (*(v6 + 88))
  {
    v7 = *(v6 + 80);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    v9 = message;
    if (v8)
    {
      v10 = connection;
      v11 = MEMORY[0x1E12BFEC0](message);
      std::string::basic_string[abi:ne200100]<0>(__p, v11);
      free(v11);
      if (v16 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      *buf = 134218242;
      v20 = v10;
      v21 = 2080;
      v22 = v12;
      _os_log_impl(&dword_1DE1D2000, v7, OS_LOG_TYPE_DEFAULT, "%p send msg %s", buf, 0x16u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v9 = message;
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = ___ZN4swix10connection21send_with_async_replyERKNS_14encode_messageEU13block_pointerFvPvE_block_invoke;
  handler[3] = &unk_1E8672A40;
  handler[4] = a3;
  handler[5] = a1;
  xpc_connection_send_message_with_reply(connection, v9, 0, handler);
  xpc_release(v9);
  xpc_release(connection);
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1DE1E7138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object)
{
  xpc_release(v20);
  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4swix10connection21send_with_async_replyERKNS_14encode_messageEU13block_pointerFvPvE_block_invoke(uint64_t a1, xpc_object_t object)
{
  v4 = *(a1 + 40);
  v8 = object;
  if (object)
  {
    xpc_retain(object);
    v5 = object;
  }

  else
  {
    v5 = xpc_null_create();
    v8 = v5;
  }

  swix::connection::check_valid_reply(v4, &v8);
  xpc_release(v5);
  v6 = *(*(a1 + 32) + 16);

  return v6();
}

void RateRamp::RateRamp(RateRamp *this)
{
  __asm { FMOV            V0.2D, #1.0 }

  *this = _Q0;
  *(this + 2) = 0;
  *(this + 24) = xmmword_1DE1F4460;
  *(this + 40) = xmmword_1DE1F4460;
}

{
  __asm { FMOV            V0.2D, #1.0 }

  *this = _Q0;
  *(this + 2) = 0;
  *(this + 24) = xmmword_1DE1F4460;
  *(this + 40) = xmmword_1DE1F4460;
}

void RateRamp::RateRamp(RateRamp *this, double a2)
{
  *this = a2;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 24) = xmmword_1DE1F4460;
  *(this + 40) = xmmword_1DE1F4460;
}

{
  *this = a2;
  *(this + 1) = a2;
  *(this + 1) = xmmword_1DE1F4470;
  *(this + 2) = xmmword_1DE1F4470;
  *(this + 6) = 0;
}

void RateRamp::RateRamp(RateRamp *this, double a2, double a3, double a4, double a5, double a6)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  v6 = (a5 - a4) / ((a2 + a3) * 0.5);
  *(this + 4) = a6;
  *(this + 5) = v6 + a6;
  v7 = 0.0;
  if (v6 != 0.0)
  {
    v7 = (a3 - a2) / v6;
  }

  *(this + 6) = v7;
}

{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  v6 = (a5 - a4) / ((a2 + a3) * 0.5);
  *(this + 4) = a6;
  *(this + 5) = v6 + a6;
  v7 = 0.0;
  if (v6 != 0.0)
  {
    v7 = (a3 - a2) / v6;
  }

  *(this + 6) = v7;
}

double *RateRamp::UpdateSlopeAndOutputEndTime(double *this)
{
  v1 = *this;
  v2 = this[1];
  v3 = (this[3] - this[2]) / ((*this + v2) * 0.5);
  this[5] = this[4] + v3;
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = (v2 - v1) / v3;
  }

  this[6] = v4;
  return this;
}

float64x2_t *RateRamp::RateRamp(float64x2_t *result, float64x2_t *a2, double a3, double a4, double a5)
{
  v5 = vmulq_n_f64(*a2, a3);
  v6 = vdupq_lane_s64(*&a4, 0);
  v7 = vbslq_s8(vcgtq_f64(v5, v6), v5, v6);
  v8 = vdupq_lane_s64(*&a5, 0);
  v9 = vbslq_s8(vcgtq_f64(v8, v7), v7, v8);
  *result = v9;
  v8.f64[0] = a2[1].f64[0];
  v10 = a2[1].f64[1];
  result[1].f64[0] = v8.f64[0];
  result[1].f64[1] = v10;
  v11 = a2[2].f64[0];
  v12 = (v10 - v8.f64[0]) / (vaddvq_f64(v9) * 0.5);
  result[2].f64[0] = v11;
  result[2].f64[1] = v11 + v12;
  v13 = 0.0;
  if (v12 != 0.0)
  {
    v13 = (v9.f64[1] - v9.f64[0]) / v12;
  }

  result[3].f64[0] = v13;
  return result;
}

{
  v5 = vmulq_n_f64(*a2, a3);
  v6 = vdupq_lane_s64(*&a4, 0);
  v7 = vbslq_s8(vcgtq_f64(v5, v6), v5, v6);
  v8 = vdupq_lane_s64(*&a5, 0);
  v9 = vbslq_s8(vcgtq_f64(v8, v7), v7, v8);
  *result = v9;
  v8.f64[0] = a2[1].f64[0];
  v10 = a2[1].f64[1];
  result[1].f64[0] = v8.f64[0];
  result[1].f64[1] = v10;
  v11 = a2[2].f64[0];
  v12 = (v10 - v8.f64[0]) / (vaddvq_f64(v9) * 0.5);
  result[2].f64[0] = v11;
  result[2].f64[1] = v11 + v12;
  v13 = 0.0;
  if (v12 != 0.0)
  {
    v13 = (v9.f64[1] - v9.f64[0]) / v12;
  }

  result[3].f64[0] = v13;
  return result;
}

double RateRamp::AdjustStartTime(RateRamp *this, double result)
{
  v2 = result - *(this + 4);
  v3 = *(this + 6) * v2;
  v4 = *this;
  *(this + 2) = *(this + 2) + v2 * (*this + v3 * 0.5);
  *this = v4 + v3;
  *(this + 4) = result;
  return result;
}

double *RateRamp::AdjustEndTime(double *this, double a2)
{
  this[5] = a2;
  v2 = a2 - a2;
  v3 = this[1];
  this[3] = v2 * v3 + this[3];
  this[1] = v3;
  return this;
}

double RateRamp::InputTimeForOutputTime(RateRamp *this, double a2)
{
  v2 = *(this + 5);
  if (v2 <= a2)
  {
    return (a2 - v2) * *(this + 1) + *(this + 3);
  }

  else
  {
    return *(this + 2) + (a2 - *(this + 4)) * (*this + *(this + 6) * 0.5 * (a2 - *(this + 4)));
  }
}

double RateRamp::RateForOutputTime(RateRamp *this, double a2)
{
  if (*(this + 5) <= a2)
  {
    return *(this + 1);
  }

  else
  {
    return *this + *(this + 6) * (a2 - *(this + 4));
  }
}

double *RateRamp::StartAfter(double *this, const RateRamp *a2)
{
  v2 = *(a2 + 3);
  this[2] = v2;
  v3 = *(a2 + 5);
  v4 = this[3] - v2;
  v5 = *this;
  v6 = this[1];
  v7 = v4 / ((*this + v6) * 0.5);
  this[4] = v3;
  this[5] = v3 + v7;
  v8 = 0.0;
  if (v7 != 0.0)
  {
    v8 = (v6 - v5) / v7;
  }

  this[6] = v8;
  return this;
}

float64x2_t RateRamp::OffsetTimes(float64x2_t *this, double a2, double a3)
{
  result = vaddq_f64(this[1], vdupq_lane_s64(*&a2, 0));
  v4 = vaddq_f64(this[2], vdupq_lane_s64(*&a3, 0));
  this[1] = result;
  this[2] = v4;
  return result;
}

float64x2_t RateRamp::ScaleRates(float64x2_t *this, double a2)
{
  result = vmulq_n_f64(*this, a2);
  *this = result;
  return result;
}

double *RateRamp::operator=(double *result, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *result = *a2;
  result[1] = v3;
  v4 = a2[2];
  v5 = a2[3];
  result[2] = v4;
  result[3] = v5;
  v6 = a2[4];
  v7 = (v5 - v4) / ((v2 + v3) * 0.5);
  result[4] = v6;
  result[5] = v6 + v7;
  v8 = 0.0;
  if (v7 != 0.0)
  {
    v8 = (v3 - v2) / v7;
  }

  result[6] = v8;
  return result;
}

__n128 RateRamp::operator AURateRampStruct@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

double RateRamp::OutputTimeForInputTime(RateRamp *this, double a2)
{
  v2 = *(this + 3);
  if (v2 <= a2)
  {
    v6 = 40;
    v7 = (a2 - v2) / *(this + 1);
  }

  else
  {
    v3 = a2 - *(this + 2);
    v4 = *this;
    v5 = *(this + 6);
    if (v5 == 0.0)
    {
      v6 = 32;
      v7 = v3 / v4;
    }

    else
    {
      v7 = (sqrt(v4 * v4 + (v5 + v5) * v3) - v4) / v5;
      v6 = 32;
    }
  }

  return v7 + *(this + v6);
}

uint64_t RateRamp::Segment(RateRamp *this, double a2, double *a3, double a4, RateRamp *a5)
{
  v9 = *a3;
  if (*a3 > a4)
  {
    v9 = a4;
  }

  *a3 = v9;
  v10 = *(this + 5);
  if (v10 <= a2)
  {
    *(a5 + 6) = 0;
    v12 = *(this + 1);
    *a5 = v12;
    *(a5 + 1) = v12;
    *(a5 + 4) = a2;
    v13 = (a2 - v10) * v12;
    v14 = *(this + 3);
    *(a5 + 2) = v13 + v14;
    v15 = floor(v10 + (v13 + a4) / v12);
    if (*a3 + a2 < v15)
    {
      v15 = *a3 + a2;
    }

    *(a5 + 5) = v15;
    v16 = *(this + 5);
    if (v16 <= v15)
    {
      v17 = v14 + v12 * (v15 - v16);
    }

    else
    {
      v17 = *(this + 2) + (v15 - *(this + 4)) * (*this + *(this + 6) * 0.5 * (v15 - *(this + 4)));
    }

    *(a5 + 3) = v17;
    *a3 = v15 - a2;
  }

  else
  {
    if (*(this + 4) > a2)
    {
      return 0;
    }

    v18 = *(this + 6);
    *(a5 + 6) = v18;
    *(a5 + 4) = a2;
    v19 = *(this + 4);
    v20 = v18 * 0.5;
    v21 = *this;
    v22 = *(this + 2) + (a2 - v19) * (*this + v18 * 0.5 * (a2 - v19));
    *(a5 + 2) = v22;
    v23 = floor(RateRamp::OutputTimeForInputTime(this, v22 + a4));
    if (v10 < v23)
    {
      v23 = v10;
    }

    if (*a3 + a2 < v23)
    {
      v23 = *a3 + a2;
    }

    *(a5 + 5) = v23;
    v24 = *(this + 5);
    if (v24 <= v23)
    {
      v25 = (v23 - v24) * *(this + 1) + *(this + 3);
    }

    else
    {
      v25 = *(this + 2) + (v23 - v19) * (v21 + v20 * (v23 - v19));
    }

    *(a5 + 3) = v25;
    *a3 = v23 - a2;
    v26 = *(a5 + 4);
    v27 = *(this + 5);
    if (v27 <= v26)
    {
      v28 = *(this + 1);
    }

    else
    {
      v28 = *this + *(this + 6) * (v26 - *(this + 4));
    }

    *a5 = v28;
    v29 = *(a5 + 5);
    if (v27 <= v29)
    {
      v30 = *(this + 1);
    }

    else
    {
      v30 = *this + *(this + 6) * (v29 - *(this + 4));
    }

    *(a5 + 1) = v30;
  }

  return 1;
}

void RampList::~RampList(RampList *this)
{
  RampList::clear(this);
}

{
  RampList::clear(this);
}

void *RampList::clear(RampList *this)
{
  result = *(this + 1);
  if (result)
  {
    do
    {
      v3 = *result;
      MEMORY[0x1E12BF450]();
      *(this + 1) = v3;
      result = v3;
    }

    while (v3);
  }

  *this = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  return result;
}

uint64_t RampList::Writer::front(RampList::Writer *this)
{
  return *(*(this + 1) + 8) + 8;
}

{
  return *(*(this + 1) + 8) + 8;
}

uint64_t RampList::Writer::back(RampList::Writer *this)
{
  return *(*(this + 1) + 16) + 8;
}

{
  return *(*(this + 1) + 16) + 8;
}

uint64_t RampList::Reader::front(RampList::Reader *this)
{
  return **(this + 1) + 8;
}

{
  return **(this + 1) + 8;
}

uint64_t RampList::Reader::AdvanceOutputTime(uint64_t this, double a2)
{
  v2 = *(this + 8);
  v3 = *v2;
  if (*v2)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3 && v4[6] < a2);
    *v2 = v4;
  }

  return this;
}

uint64_t RampList::Reader::Segment(RampList::Reader *this, double a2, double *a3, double a4, RateRamp *a5)
{
  v5 = **(*this + 8);
  do
  {
    v6 = v5;
    if (*(v5 + 6) > a2)
    {
      break;
    }

    v5 = *v5;
  }

  while (*v6);
  return RateRamp::Segment((v6 + 1), a2, a3, a4, a5);
}

unsigned int RateRamp::GetNumberOfInputFrames(RateRamp *this, double a2, unsigned int a3)
{
  v3 = *(this + 5);
  if (v3 <= a2)
  {
    v4 = (a2 - v3) * *(this + 1) + *(this + 3);
  }

  else
  {
    v4 = *(this + 2) + (a2 - *(this + 4)) * (*this + *(this + 6) * 0.5 * (a2 - *(this + 4)));
  }

  v5 = a3 + a2;
  if (v3 <= v5)
  {
    v6 = (v5 - v3) * *(this + 1) + *(this + 3);
  }

  else
  {
    v6 = *(this + 2) + (v5 - *(this + 4)) * (*this + *(this + 6) * 0.5 * (v5 - *(this + 4)));
  }

  return vcvtpd_u64_f64(v6 - v4);
}

unsigned int RampList::Reader::GetNumberOfInputFrames(RampList::Reader *this, double a2, unsigned int a3)
{
  v5 = **(*this + 8);
  v6 = RampList::RampListTimeFunctions<RampList::Reader>::InputTimeForOutputTime(v5, a2);
  return vcvtpd_u64_f64(RampList::RampListTimeFunctions<RampList::Reader>::InputTimeForOutputTime(v5, a3 + a2) - v6);
}

double RampList::RampListTimeFunctions<RampList::Reader>::InputTimeForOutputTime(double *a1, double result)
{
  if (a1)
  {
    do
    {
      v2 = a1;
      v3 = a1[6];
      if (v3 > result)
      {
        break;
      }

      a1 = *a1;
    }

    while (*v2);
    if (v3 <= result)
    {
      return (result - v3) * v2[2] + v2[4];
    }

    else
    {
      return v2[3] + (result - v2[5]) * (v2[1] + v2[7] * 0.5 * (result - v2[5]));
    }
  }

  return result;
}

uint64_t RampList::Writer::AddRamp(RampList::Writer *this, RateRamp *a2)
{
  v4 = *(this + 1);
  v5 = *(v4 + 32);
  v7 = *(a2 + 2);
  v6 = *(a2 + 3);
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = (v6 - v7) / ((*a2 + v9) * 0.5);
  *(a2 + 4) = v5;
  *(a2 + 5) = v5 + v10;
  v11 = 0.0;
  if (v10 != 0.0)
  {
    v11 = (v9 - v8) / v10;
  }

  *(a2 + 6) = v11;
  if (!*(v4 + 8))
  {
LABEL_11:
    RampList::Writer::push(this, a2);
  }

  v12 = *(v4 + 16);
  v13 = v12[4];
  if (v6 >= v13)
  {
    if (v7 - v13 > 1.0)
    {
      v15 = v12[2];
      v16 = v12[6];
      *v19 = v15;
      *&v19[1] = v15;
      *&v19[2] = v13;
      *&v19[3] = v7;
      v17 = (v7 - v13) / ((v15 + v15) * 0.5);
      *&v19[4] = v16;
      *&v19[5] = v16 + v17;
      v18 = 0.0;
      if (v17 != 0.0)
      {
        v18 = (v15 - v15) / v17;
      }

      *&v19[6] = v18;
      RampList::Writer::push(this, v19);
    }

    RateRamp::StartAfter(a2, (v12 + 1));
    goto LABEL_11;
  }

  return 0;
}

void *RampList::Writer::AddRamps(RampList::Writer *a1, int a2, uint64_t a3, double a4, double a5, double a6)
{
  LODWORD(v7) = a2;
  result = RampList::Writer::AdvanceOutputTime(a1);
  if (v7)
  {
    v7 = v7;
    v24 = vdupq_lane_s64(*&a4, 0);
    v25 = vdupq_lane_s64(*&a6, 0);
    v10 = (a3 + 32);
    v22 = vdupq_lane_s64(*&a5, 0);
    do
    {
      v11 = (*(a1 + 1) + 40);
      v12 = vld1q_dup_f64(v11);
      v13 = *(v10 - 4);
      v14 = vaddq_f64(v12, *(v10 - 2));
      *(v10 - 1) = v14;
      v15 = vmulq_n_f64(v13, a6);
      v16 = vbslq_s8(vcgtq_f64(v15, v24), v15, v24);
      v17 = vbslq_s8(vcgtq_f64(v22, v16), v16, v22);
      v27[0] = v17;
      v27[1] = v14;
      v18 = (v14.f64[1] - v14.f64[0]) / (vaddvq_f64(v17) * 0.5);
      v13.f64[0] = *v10 + v18;
      *&v28 = *v10;
      *(&v28 + 1) = *&v13.f64[0];
      v19 = 0.0;
      if (v18 != 0.0)
      {
        v19 = (v17.f64[1] - v17.f64[0]) / v18;
      }

      v29 = v19;
      result = RampList::Writer::AddRamp(a1, v27);
      v20 = v28;
      *(v10 - 2) = vdivq_f64(v27[0], v25);
      *v10 = v20;
      v10 += 6;
      --v7;
    }

    while (v7);
  }

  return result;
}

void *RampList::Writer::AdvanceOutputTime(RampList::Writer *this)
{
  v3 = **(this + 1);
  result = *(*(this + 1) + 8);
  if (result != v3)
  {
    do
    {
      v4 = *result;
      MEMORY[0x1E12BF450]();
      v5 = *(this + 1);
      --v5[3];
      v5[1] = v4;
      result = v4;
    }

    while (v4 != *v5);
  }

  return result;
}

uint64_t RampList::Writer::GetRamps(uint64_t result, unsigned int *a2, float64x2_t *a3, double a4)
{
  v4 = *(result + 8);
  v5 = *a2;
  v6 = *(v4 + 8);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = a3 + 1;
    v9 = 1;
    do
    {
      v10 = vmulq_n_f64(*(v6 + 1), a4);
      v11 = *(v6 + 5);
      v12 = *(v6 + 3);
      *v8 = v12;
      v8[1] = v11;
      v8[-1] = v10;
      v13 = *(v4 + 40);
      *v8 = vsubq_f64(v12, vdupq_lane_s64(v13.i64[0], 0));
      v8[1] = vsubq_f64(v11, vdupq_laneq_s64(v13, 1));
      if (v9 >= v5)
      {
        break;
      }

      v6 = *v6;
      ++v9;
      v8 += 3;
    }

    while (v6);
  }

  return result;
}

uint64_t RampList::Writer::SetOrigin(uint64_t this, double a2, double a3)
{
  v3 = *(this + 8);
  v4 = *(v3 + 8);
  if (v4)
  {
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    *(v3 + 40) = a2;
    *(v3 + 48) = a3;
    *&v7 = a2 - v5;
    v8 = a3 - v6;
    v9 = vdupq_lane_s64(v7, 0);
    v10 = vdupq_lane_s64(*&v8, 0);
    do
    {
      *(v4 + 3) = vaddq_f64(v9, *(v4 + 3));
      *(v4 + 5) = vaddq_f64(v10, *(v4 + 5));
      v4 = *v4;
    }

    while (v4);
    *(v3 + 32) = v8 + *(v3 + 32);
  }

  else
  {
    *(v3 + 32) = a3;
  }

  return this;
}

uint64_t RampList::Writer::ScaleRates(uint64_t this, double a2)
{
  for (i = *(*(this + 8) + 8); i; i = *i)
  {
    *(i + 1) = vmulq_n_f64(*(i + 1), a2);
  }

  return this;
}

uint64_t RampList::Writer::Print(uint64_t this, __sFILE *a2)
{
  for (i = *(*(this + 8) + 8); i; i = *i)
  {
    this = RateRamp::Print((i + 1), a2);
  }

  return this;
}

uint64_t RateRamp::Print(RateRamp *this, __sFILE *a2)
{
  fprintf(a2, "RateRamp %p\n", this);
  fprintf(a2, "    StartingRate              %12.6f\n", *this);
  fprintf(a2, "    EndingRate                %12.6f\n", *(this + 1));
  fprintf(a2, "    StartingInputSampleTime   %12.2f\n", *(this + 2));
  fprintf(a2, "    EndingInputSampleTime     %12.2f\n", *(this + 3));
  fprintf(a2, "    StartingOutputSampleTime  %12.2f\n", *(this + 4));
  fprintf(a2, "    EndingOutputSampleTime    %12.2f\n", *(this + 5));
  return fprintf(a2, "    Slope                     %12.6f\n", *(this + 6));
}

uint64_t RampList::Reader::Print(uint64_t this, __sFILE *a2)
{
  for (i = **(this + 8); i; i = *i)
  {
    this = RateRamp::Print((i + 1), a2);
  }

  return this;
}

const __CFDictionary *CACFDictionary::Size(const __CFDictionary **this)
{
  result = *this;
  if (result)
  {
    return CFDictionaryGetCount(result);
  }

  return result;
}

const __CFDictionary *CACFDictionary::GetCFType(const __CFDictionary **this, const __CFString *a2, const void **a3)
{
  result = *this;
  if (result)
  {
    Value = CFDictionaryGetValue(result, a2);
    *a3 = Value;
    return (Value != 0);
  }

  return result;
}

uint64_t CACFDictionary::GetSInt32(CACFDictionary *this, const __CFString *a2, int *a3)
{
  result = *this;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberSInt32Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFDictionary::GetUInt32(CACFDictionary *this, const __CFString *a2, unsigned int *a3)
{
  result = *this;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberSInt32Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFDictionary::GetSInt64(CACFDictionary *this, const __CFString *a2, uint64_t *a3)
{
  result = *this;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberSInt64Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFDictionary::GetUInt64(CACFDictionary *this, const __CFString *a2, unint64_t *a3)
{
  result = *this;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberSInt64Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFDictionary::GetFloat32FromString(CACFDictionary *this, const __CFString *a2, float *a3)
{
  result = *this;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFStringGetTypeID())
      {
        DoubleValue = CFStringGetDoubleValue(v5);
        *a3 = DoubleValue;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFDictionary::GetUInt32FromString(CACFDictionary *this, const __CFString *a2, SInt32 *a3)
{
  result = *this;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFStringGetTypeID())
      {
        *a3 = CFStringGetIntValue(v5);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFDictionary::GetFloat32(CACFDictionary *this, const __CFString *a2, float *a3)
{
  result = *this;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberFloat32Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFDictionary::GetFloat64(CACFDictionary *this, const __CFString *a2, double *a3)
{
  result = *this;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberFloat64Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFDictionary::GetFixed32(CACFDictionary *this, const __CFString *a2, float *a3)
{
  result = *this;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
        v7 = 1.0;
        if (valuePtr < 0)
        {
          v7 = -1.0;
        }

        *a3 = v7 * (vcvts_n_f32_u32((valuePtr * v7), 0x10uLL) + (((valuePtr * v7) >> 16) & 0x7FFF));
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFDictionary::GetFixed64(CACFDictionary *this, const __CFString *a2, double *a3)
{
  result = *this;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v5, kCFNumberSInt64Type, &valuePtr);
        *a3 = vcvtd_n_f64_u64(valuePtr, 0x20uLL) + (valuePtr >> 32);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFDictionary::Get4CC(CACFDictionary *this, const __CFString *a2, unsigned int *a3)
{
  result = *this;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberSInt32Type, a3);
        return 1;
      }

      v7 = CFGetTypeID(v5);
      if (v7 == CFStringGetTypeID() && CFStringGetLength(v5) == 4)
      {
        CFStringGetCString(v5, buffer, 5, 0x600u);
        *a3 = bswap32(*buffer);
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t CACFDictionary::GetString(CACFDictionary *this, const __CFString *a2, const __CFString **a3)
{
  result = *this;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFStringGetTypeID())
      {
        *a3 = v5;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFDictionary::GetArray(CACFDictionary *this, const __CFString *a2, const __CFArray **a3)
{
  result = *this;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFArrayGetTypeID())
      {
        *a3 = v5;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFDictionary::GetDictionary(CACFDictionary *this, const __CFString *a2, const __CFDictionary **a3)
{
  result = *this;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFDictionaryGetTypeID())
      {
        *a3 = v5;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFDictionary::GetData(CACFDictionary *this, const __CFString *a2, const __CFData **a3)
{
  result = *this;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFDataGetTypeID())
      {
        *a3 = v5;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFDictionary::GetURL(CACFDictionary *this, const __CFString *a2, const __CFURL **a3)
{
  result = *this;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFURLGetTypeID())
      {
        *a3 = v5;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL CACFDictionary::GetCFTypeWithCStringKey(CFDictionaryRef *this, const char *a2, const void **a3)
{
  if (!*this)
  {
    return 0;
  }

  v5 = CFStringCreateWithCString(0, a2, 0x600u);
  v9 = v5;
  v10 = 1;
  if (v5 && *this)
  {
    Value = CFDictionaryGetValue(*this, v5);
    *a3 = Value;
    v7 = Value != 0;
  }

  else
  {
    v7 = 0;
  }

  CACFString::~CACFString(&v9);
  return v7;
}

const __CFDictionary *CACFDictionary::GetCACFArray(const __CFDictionary **this, const __CFString *key, CFTypeRef *a3)
{
  if (*(a3 + 8) == 1 && *a3)
  {
    CFRelease(*a3);
  }

  *a3 = 0;
  *(a3 + 9) = 0;
  result = *this;
  if (*this)
  {
    result = CFDictionaryGetValue(result, key);
    if (result)
    {
      v7 = result;
      v8 = CFGetTypeID(result);
      result = CFArrayGetTypeID();
      if (v8 == result)
      {

        return CACFArray::operator=(a3, v7);
      }
    }
  }

  return result;
}

uint64_t CACFArray::operator=(uint64_t a1, const void *a2)
{
  if (*(a1 + 8))
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
      v5 = *(a1 + 8);
      *a1 = a2;
      *(a1 + 9) = 0;
      if ((v5 & 1) == 0)
      {
        return a1;
      }
    }

    else
    {
      *a1 = a2;
      *(a1 + 9) = 0;
    }

    CFRetain(a2);
  }

  else
  {
    *a1 = a2;
    *(a1 + 9) = 0;
  }

  return a1;
}

const __CFDictionary *CACFDictionary::GetCACFDictionary(const __CFDictionary **this, const __CFString *key, CFTypeRef *a3)
{
  if (*(a3 + 8) == 1 && *a3)
  {
    CFRelease(*a3);
  }

  *a3 = 0;
  *(a3 + 9) = 0;
  result = *this;
  if (*this)
  {
    result = CFDictionaryGetValue(result, key);
    if (result)
    {
      v7 = result;
      v8 = CFGetTypeID(result);
      result = CFDictionaryGetTypeID();
      if (v8 == result)
      {

        return CACFArray::operator=(a3, v7);
      }
    }
  }

  return result;
}

uint64_t CACFDictionary::AddCFType(CACFDictionary *this, const __CFString *a2, const void *a3)
{
  if (*(this + 9) != 1)
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    v5 = *this;
    if (v5)
    {
      CFDictionarySetValue(v5, a2, a3);
      return 1;
    }
  }

  return result;
}

uint64_t CACFDictionary::AddSInt32(CFMutableDictionaryRef *this, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (*(this + 9) == 1)
  {
    v6 = 0;
    if (v5 && *this)
    {
      CFDictionarySetValue(*this, a2, v5);
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  CACFNumber::~CACFNumber(&v8);
  return v6;
}

void sub_1DE1E8D10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

void CACFNumber::~CACFNumber(CACFNumber *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

uint64_t CACFDictionary::AddUInt32(CFMutableDictionaryRef *this, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (*(this + 9) == 1)
  {
    v6 = 0;
    if (v5 && *this)
    {
      CFDictionarySetValue(*this, a2, v5);
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  CACFNumber::~CACFNumber(&v8);
  return v6;
}

void sub_1DE1E8DF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

uint64_t CACFDictionary::AddSInt64(CFMutableDictionaryRef *this, const __CFString *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (*(this + 9) == 1)
  {
    v6 = 0;
    if (v5 && *this)
    {
      CFDictionarySetValue(*this, a2, v5);
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  CACFNumber::~CACFNumber(&v8);
  return v6;
}

void sub_1DE1E8EA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

uint64_t CACFDictionary::AddUInt64(CFMutableDictionaryRef *this, const __CFString *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (*(this + 9) == 1)
  {
    v6 = 0;
    if (v5 && *this)
    {
      CFDictionarySetValue(*this, a2, v5);
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  CACFNumber::~CACFNumber(&v8);
  return v6;
}

void sub_1DE1E8F48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

uint64_t CACFDictionary::AddFloat32(CFMutableDictionaryRef *this, const __CFString *a2, float a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (*(this + 9) == 1)
  {
    v6 = 0;
    if (v5 && *this)
    {
      CFDictionarySetValue(*this, a2, v5);
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  CACFNumber::~CACFNumber(&v8);
  return v6;
}

void sub_1DE1E8FF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

uint64_t CACFDictionary::AddFloat64(CFMutableDictionaryRef *this, const __CFString *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (*(this + 9) == 1)
  {
    v6 = 0;
    if (v5 && *this)
    {
      CFDictionarySetValue(*this, a2, v5);
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  CACFNumber::~CACFNumber(&v8);
  return v6;
}

void sub_1DE1E9098(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

uint64_t CACFDictionary::AddNumber(CACFDictionary *this, const __CFString *a2, const __CFNumber *a3)
{
  if (*(this + 9) != 1)
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    v5 = *this;
    if (v5)
    {
      CFDictionarySetValue(v5, a2, a3);
      return 1;
    }
  }

  return result;
}

uint64_t CACFDictionary::AddString(CACFDictionary *this, const __CFString *a2, const __CFString *a3)
{
  if (*(this + 9) != 1)
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    v5 = *this;
    if (v5)
    {
      CFDictionarySetValue(v5, a2, a3);
      return 1;
    }
  }

  return result;
}

uint64_t CACFDictionary::AddArray(CACFDictionary *this, const __CFString *a2, const __CFArray *a3)
{
  if (*(this + 9) != 1)
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    v5 = *this;
    if (v5)
    {
      CFDictionarySetValue(v5, a2, a3);
      return 1;
    }
  }

  return result;
}

uint64_t CACFDictionary::AddDictionary(CACFDictionary *this, const __CFString *a2, const __CFDictionary *a3)
{
  if (*(this + 9) != 1)
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    v5 = *this;
    if (v5)
    {
      CFDictionarySetValue(v5, a2, a3);
      return 1;
    }
  }

  return result;
}

uint64_t CACFDictionary::AddData(CACFDictionary *this, const __CFString *a2, const __CFData *a3)
{
  if (*(this + 9) != 1)
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    v5 = *this;
    if (v5)
    {
      CFDictionarySetValue(v5, a2, a3);
      return 1;
    }
  }

  return result;
}

uint64_t CACFDictionary::AddURL(CACFDictionary *this, const __CFString *a2, const __CFURL *a3)
{
  if (*(this + 9) != 1)
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    v5 = *this;
    if (v5)
    {
      CFDictionarySetValue(v5, a2, a3);
      return 1;
    }
  }

  return result;
}

uint64_t CACFDictionary::AddCFTypeWithCStringKey(CFMutableDictionaryRef *this, const char *a2, const void *a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = CFStringCreateWithCString(0, a2, 0x600u);
  v8 = v5;
  v9 = 1;
  if (v5 && *(this + 9) == 1)
  {
    v6 = 0;
    if (a3 && *this)
    {
      CFDictionarySetValue(*this, v5, a3);
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  CACFString::~CACFString(&v8);
  return v6;
}

uint64_t CACFDictionary::AddCString(CFMutableDictionaryRef *this, const __CFString *a2, const char *cStr)
{
  if (!cStr)
  {
    return 0;
  }

  v5 = CFStringCreateWithCString(0, cStr, 0x600u);
  v8 = v5;
  v9 = 1;
  if (v5 && *(this + 9) == 1 && *this)
  {
    CFDictionarySetValue(*this, a2, v5);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  CACFString::~CACFString(&v8);
  return v6;
}

unint64_t CACFDictionary::PrintToLog(CACFDictionary *this, const __CFDictionary *a2)
{
  result = CFDictionaryGetCount(this);
  if (result)
  {
    if (!(result >> 61))
    {
      operator new();
    }

    std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1DE1E9550(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void TFileBSD::Clear(FILE **this)
{
  v15 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v2 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315906;
    v8 = "TFileBSD.cpp";
    v9 = 1024;
    v10 = 567;
    v11 = 2080;
    v12 = "Clear";
    v13 = 2048;
    v14 = this;
    _os_log_impl(&dword_1DE1D2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &v7, 0x26u);
  }

LABEL_7:
  if (((*this)->_lb._base)(this))
  {
    v3 = fileno(this[2]);
    ftruncate(v3, 0);
  }

  else
  {
    ((*this)->_extra)(this, 1);
    v4 = fileno(this[2]);
    ftruncate(v4, 0);
    (*&(*this)->_ur)(this);
  }

  this[3] = 0;
  this[4] = 0;
  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v5 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          v7 = 136315906;
          v8 = "TFileBSD.cpp";
          v9 = 1024;
          v10 = 585;
          v11 = 2080;
          v12 = "Clear";
          v13 = 2048;
          v14 = this;
          _os_log_impl(&dword_1DE1D2000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", &v7, 0x26u);
        }
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void TFileBSD::Close(TFileBSD *this)
{
  v17 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v2 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v10 = "TFileBSD.cpp";
    v11 = 1024;
    v12 = 341;
    v13 = 2080;
    v14 = "Close";
    v15 = 2048;
    v16 = this;
    _os_log_impl(&dword_1DE1D2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", buf, 0x26u);
  }

LABEL_7:
  v3 = *(this + 2);
  if (v3 && fclose(v3))
  {
    v6 = *__error();
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v8, v6 + 100000);
      *buf = 136315906;
      v10 = "TFileBSD.cpp";
      v11 = 1024;
      v12 = 345;
      v13 = 2080;
      v14 = v8;
      v15 = 2080;
      v16 = "Close::fclose failed";
      _os_log_impl(&dword_1DE1D2000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Close::fclose failed", v6 + 100000);
  }

  *(this + 2) = 0;
  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v4 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v10 = "TFileBSD.cpp";
          v11 = 1024;
          v12 = 348;
          v13 = 2080;
          v14 = "Close";
          v15 = 2048;
          v16 = this;
          _os_log_impl(&dword_1DE1D2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", buf, 0x26u);
        }
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void TFileBSD::Open(const char **this, unsigned int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v4 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v16 = "TFileBSD.cpp";
    v17 = 1024;
    v18 = 304;
    v19 = 2080;
    v20 = "Open";
    v21 = 2048;
    v22 = this;
    _os_log_impl(&dword_1DE1D2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", buf, 0x26u);
  }

LABEL_7:
  if (((*(*this + 15))(this) & 1) == 0)
  {
    if (a2 >= 2)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v14, 0xFFFFFFCE);
        *buf = 136315906;
        v16 = "TFileBSD.cpp";
        v17 = 1024;
        v18 = 309;
        v19 = 2080;
        v20 = v14;
        v21 = 2080;
        v22 = "Open - file open invalid file permission";
        _os_log_impl(&dword_1DE1D2000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(exception, "Open - file open invalid file permission", -50);
    }

    if (access(this[1], 2 * (a2 != 0)))
    {
      v5 = *__error();
      if (v5 == 13 || v5 == 1)
      {
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v14, 0xFFFFFFCA);
          *buf = 136315906;
          v16 = "TFileBSD.cpp";
          v17 = 1024;
          v18 = 315;
          v19 = 2080;
          v20 = v14;
          v21 = 2080;
          v22 = "Open: Permission denied";
          _os_log_impl(&dword_1DE1D2000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        v10 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v10, "Open: Permission denied", -54);
      }
    }

    if (a2)
    {
      v6 = "r+b";
    }

    else
    {
      v6 = "rb";
    }

    v7 = fopen(this[1], v6);
    this[2] = v7;
    if (!v7)
    {
      v12 = *__error();
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v14, v12 + 100000);
        *buf = 136315906;
        v16 = "TFileBSD.cpp";
        v17 = 1024;
        v18 = 321;
        v19 = 2080;
        v20 = v14;
        v21 = 2080;
        v22 = "Open::fopen failed";
        _os_log_impl(&dword_1DE1D2000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      v13 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v13, "Open::fopen failed", v12 + 100000);
    }

    if (this[4] >= 1)
    {
      (*(*this + 5))(this, 0);
    }

    this[5] = (*(*this + 9))(this);
  }

  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v8 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v16 = "TFileBSD.cpp";
          v17 = 1024;
          v18 = 332;
          v19 = 2080;
          v20 = "Open";
          v21 = 2048;
          v22 = this;
          _os_log_impl(&dword_1DE1D2000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", buf, 0x26u);
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void TFileBSD::DeleteFile(const std::__fs::filesystem::path **this)
{
  v14 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v2 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "TFileBSD.cpp";
    v8 = 1024;
    v9 = 284;
    v10 = 2080;
    v11 = "DeleteFile";
    v12 = 2048;
    v13 = this;
    _os_log_impl(&dword_1DE1D2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &v6, 0x26u);
  }

LABEL_7:
  if (((*this)[5].__pn_.__r_.__value_.__l.__data_)(this))
  {
    ((*this)[4].__pn_.__r_.__value_.__r.__words[2])(this);
  }

  remove(this[1], v3);
  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v4 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          v6 = 136315906;
          v7 = "TFileBSD.cpp";
          v8 = 1024;
          v9 = 295;
          v10 = 2080;
          v11 = "DeleteFile";
          v12 = 2048;
          v13 = this;
          _os_log_impl(&dword_1DE1D2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", &v6, 0x26u);
        }
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void TFileBSD::Create(TFileBSD *this)
{
  v20 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v2 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v13 = "TFileBSD.cpp";
    v14 = 1024;
    v15 = 256;
    v16 = 2080;
    v17 = "Create";
    v18 = 2048;
    v19 = this;
    _os_log_impl(&dword_1DE1D2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", buf, 0x26u);
  }

LABEL_7:
  if (((*(*this + 80))(this) & 1) == 0)
  {
    v3 = *(this + 1);
    if (v3)
    {
      v4 = fopen(v3, "w+b");
      if (!v4)
      {
        v7 = *__error();
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v11, v7 + 100000);
          *buf = 136315906;
          v13 = "TFileBSD.cpp";
          v14 = 1024;
          v15 = 262;
          v16 = 2080;
          v17 = v11;
          v18 = 2080;
          v19 = "Create::fopen failed";
          _os_log_impl(&dword_1DE1D2000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        exception = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(exception, "Create::fopen failed", v7 + 100000);
      }

      if (fclose(v4))
      {
        v9 = *__error();
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v11, v9 + 100000);
          *buf = 136315906;
          v13 = "TFileBSD.cpp";
          v14 = 1024;
          v15 = 263;
          v16 = 2080;
          v17 = v11;
          v18 = 2080;
          v19 = "Create::fclose failed";
          _os_log_impl(&dword_1DE1D2000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        v10 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v10, "Create::fclose failed", v9 + 100000);
      }
    }
  }

  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v5 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v13 = "TFileBSD.cpp";
          v14 = 1024;
          v15 = 275;
          v16 = 2080;
          v17 = "Create";
          v18 = 2048;
          v19 = this;
          _os_log_impl(&dword_1DE1D2000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", buf, 0x26u);
        }
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

BOOL TFileBSD::Exists(const char **this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v2 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v7.st_dev = 136315906;
    *&v7.st_mode = "TFileBSD.cpp";
    WORD2(v7.st_ino) = 1024;
    *(&v7.st_ino + 6) = 230;
    HIWORD(v7.st_uid) = 2080;
    *&v7.st_gid = "Exists";
    *(&v7.st_rdev + 2) = 2048;
    *(&v7.st_rdev + 6) = this;
    _os_log_impl(&dword_1DE1D2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &v7, 0x26u);
  }

LABEL_7:
  v3 = ((*(*this + 15))(this) & 1) != 0 || stat(this[1], &v7) == 0;
  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v4 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          v7.st_dev = 136315906;
          *&v7.st_mode = "TFileBSD.cpp";
          WORD2(v7.st_ino) = 1024;
          *(&v7.st_ino + 6) = 246;
          HIWORD(v7.st_uid) = 2080;
          *&v7.st_gid = "Exists";
          *(&v7.st_rdev + 2) = 2048;
          *(&v7.st_rdev + 6) = this;
          _os_log_impl(&dword_1DE1D2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", &v7, 0x26u);
        }
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

off_t TFileBSD::GetLength(FILE **this)
{
  v21 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v2 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    buf.st_dev = 136315906;
    *&buf.st_mode = "TFileBSD.cpp";
    WORD2(buf.st_ino) = 1024;
    *(&buf.st_ino + 6) = 423;
    HIWORD(buf.st_uid) = 2080;
    *&buf.st_gid = "GetLength";
    *(&buf.st_rdev + 2) = 2048;
    *(&buf.st_rdev + 6) = this;
    _os_log_impl(&dword_1DE1D2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &buf, 0x26u);
  }

LABEL_7:
  if ((((*this)->_lb._base)(this) & 1) == 0)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v12, 0xFFFFFFDA);
      buf.st_dev = 136315906;
      *&buf.st_mode = "TFileBSD.cpp";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 427;
      HIWORD(buf.st_uid) = 2080;
      *&buf.st_gid = v12;
      *(&buf.st_rdev + 2) = 2080;
      *(&buf.st_rdev + 6) = "GetLength - file not open";
      _os_log_impl(&dword_1DE1D2000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", &buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "GetLength - file not open", -38);
  }

  v3 = fileno(this[2]);
  if (fstat(v3, &buf))
  {
    v9 = *__error();
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v11, v9 + 100000);
      *v12 = 136315906;
      v13 = "TFileBSD.cpp";
      v14 = 1024;
      v15 = 430;
      v16 = 2080;
      v17 = v11;
      v18 = 2080;
      v19 = "GetLength::fstat failed";
      _os_log_impl(&dword_1DE1D2000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", v12, 0x26u);
    }

    v10 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v10, "GetLength::fstat failed", v9 + 100000);
  }

  st_size = buf.st_size;
  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v5 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *v12 = 136315906;
          v13 = "TFileBSD.cpp";
          v14 = 1024;
          v15 = 433;
          v16 = 2080;
          v17 = "GetLength";
          v18 = 2048;
          v19 = this;
          _os_log_impl(&dword_1DE1D2000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", v12, 0x26u);
        }
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return st_size;
}

void TFileBSD::Skip(FILE **this, off_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v4 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v12 = "TFileBSD.cpp";
    v13 = 1024;
    v14 = 403;
    v15 = 2080;
    v16 = "Skip";
    v17 = 2048;
    v18 = this;
    _os_log_impl(&dword_1DE1D2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", buf, 0x26u);
  }

LABEL_7:
  if ((((*this)->_lb._base)(this) & 1) == 0)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v10, 0xFFFFFFDA);
      *buf = 136315906;
      v12 = "TFileBSD.cpp";
      v13 = 1024;
      v14 = 406;
      v15 = 2080;
      v16 = v10;
      v17 = 2080;
      v18 = "Skip - file not open";
      _os_log_impl(&dword_1DE1D2000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Skip - file not open", -38);
  }

  if (fseeko(this[2], a2, 1))
  {
    v8 = *__error();
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v10, v8 + 100000);
      *buf = 136315906;
      v12 = "TFileBSD.cpp";
      v13 = 1024;
      v14 = 408;
      v15 = 2080;
      v16 = v10;
      v17 = 2080;
      v18 = "Skip::fseeko failed";
      _os_log_impl(&dword_1DE1D2000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    v9 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v9, "Skip::fseeko failed", v8 + 100000);
  }

  this[3] = (this[3] + a2);
  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v5 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v12 = "TFileBSD.cpp";
          v13 = 1024;
          v14 = 414;
          v15 = 2080;
          v16 = "Skip";
          v17 = 2048;
          v18 = this;
          _os_log_impl(&dword_1DE1D2000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", buf, 0x26u);
        }
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t TFileBSD::GetPosition(TFileBSD *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = kTFileBSDSubsystem;
  if (kTFileBSDSubsystem)
  {
    v3 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
LABEL_8:
      if (*(v2 + 8))
      {
        v4 = *v2;
        if (*v2)
        {
          if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
          {
            v7 = 136315906;
            v8 = "TFileBSD.cpp";
            v9 = 1024;
            v10 = 393;
            v11 = 2080;
            v12 = "GetPosition";
            v13 = 2048;
            v14 = this;
            _os_log_impl(&dword_1DE1D2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", &v7, 0x26u);
          }
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315906;
    v8 = "TFileBSD.cpp";
    v9 = 1024;
    v10 = 391;
    v11 = 2080;
    v12 = "GetPosition";
    v13 = 2048;
    v14 = this;
    _os_log_impl(&dword_1DE1D2000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &v7, 0x26u);
    v2 = kTFileBSDSubsystem;
  }

  if (v2)
  {
    goto LABEL_8;
  }

LABEL_12:
  result = *(this + 3);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void TFileBSD::SeekAsync(TFileBSD *this, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = kTFileBSDSubsystem;
  if (!kTFileBSDSubsystem)
  {
    *(this + 3) = a2;
    goto LABEL_13;
  }

  v5 = *(kTFileBSDSubsystem + 8);
  if ((v5 & 1) != 0 && (v6 = *kTFileBSDSubsystem) != 0 && os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315906;
    v10 = "TFileBSD.cpp";
    v11 = 1024;
    v12 = 377;
    v13 = 2080;
    v14 = "SeekAsync";
    v15 = 2048;
    v16 = this;
    _os_log_impl(&dword_1DE1D2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &v9, 0x26u);
    v4 = kTFileBSDSubsystem;
    *(this + 3) = a2;
    if (!v4 || (*(v4 + 8) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(this + 3) = a2;
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v7 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315906;
    v10 = "TFileBSD.cpp";
    v11 = 1024;
    v12 = 381;
    v13 = 2080;
    v14 = "SeekAsync";
    v15 = 2048;
    v16 = this;
    _os_log_impl(&dword_1DE1D2000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", &v9, 0x26u);
  }

LABEL_13:
  v8 = *MEMORY[0x1E69E9840];
}

void TFileBSD::Seek(FILE **this, FILE *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v4 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v12 = "TFileBSD.cpp";
    v13 = 1024;
    v14 = 358;
    v15 = 2080;
    v16 = "Seek";
    v17 = 2048;
    v18 = this;
    _os_log_impl(&dword_1DE1D2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", buf, 0x26u);
  }

LABEL_7:
  if ((((*this)->_lb._base)(this) & 1) == 0)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v10, 0xFFFFFFDA);
      *buf = 136315906;
      v12 = "TFileBSD.cpp";
      v13 = 1024;
      v14 = 361;
      v15 = 2080;
      v16 = v10;
      v17 = 2080;
      v18 = "Seek - file not open";
      _os_log_impl(&dword_1DE1D2000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Seek - file not open", -38);
  }

  if (fseeko(this[2], a2 + this[4], 0))
  {
    v8 = *__error();
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v10, v8 + 100000);
      *buf = 136315906;
      v12 = "TFileBSD.cpp";
      v13 = 1024;
      v14 = 363;
      v15 = 2080;
      v16 = v10;
      v17 = 2080;
      v18 = "Seek::fseeko failed";
      _os_log_impl(&dword_1DE1D2000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    v9 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v9, "Seek::fseeko failed", v8 + 100000);
  }

  this[3] = a2;
  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v5 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v12 = "TFileBSD.cpp";
          v13 = 1024;
          v14 = 368;
          v15 = 2080;
          v16 = "Seek";
          v17 = 2048;
          v18 = this;
          _os_log_impl(&dword_1DE1D2000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", buf, 0x26u);
        }
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t TFileBSD::ReadAsync(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v10 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          v23 = 136315906;
          v24 = "TFileBSD.cpp";
          v25 = 1024;
          v26 = 502;
          v27 = 2080;
          v28 = "ReadAsync";
          v29 = 2048;
          v30 = a1;
          _os_log_impl(&dword_1DE1D2000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &v23, 0x26u);
        }
      }
    }
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    CAAssertRtn();
  }

  if ((*(*a1 + 120))(a1))
  {
    v11 = a1[5];
    v12 = a1[3];
    v13 = v12 + a3;
    v14 = v11 - v12;
    if (v13 <= v11)
    {
      v15 = a3;
    }

    else
    {
      v15 = v14;
    }

    if (v15 < 1)
    {
      v19 = 0;
      if (!v15)
      {
        --*sReadCounter_BSD;
      }
    }

    else
    {
      LOBYTE(v23) = 0;
      v16 = (*(*TFileBSD::sGuard + 32))(TFileBSD::sGuard, &v23);
      if (v16)
      {
        FreeRequestBlock = TFileBSD::GetFreeRequestBlock(v16);
        if (!FreeRequestBlock)
        {
          v19 = 0xFFFFFFFFLL;
          goto LABEL_27;
        }

        *(FreeRequestBlock + 1) = a4;
        *(FreeRequestBlock + 2) = a5;
        v18 = a1[3];
        *(FreeRequestBlock + 6) = v18;
        a1[3] = v18 + v15;
        *(FreeRequestBlock + 7) = v15;
        *(FreeRequestBlock + 4) = a2;
        *(FreeRequestBlock + 5) = a1;
        *FreeRequestBlock = 1;
        (*(*TFileBSD::sGuard + 80))(TFileBSD::sGuard);
        if (v23 == 1)
        {
          (*(*TFileBSD::sGuard + 24))(TFileBSD::sGuard);
        }

        v19 = 0;
      }

      else
      {
        v19 = 0xFFFFFFFFLL;
      }
    }

    if (kTFileBSDSubsystem)
    {
      if (*(kTFileBSDSubsystem + 8))
      {
        v20 = *kTFileBSDSubsystem;
        if (*kTFileBSDSubsystem)
        {
          if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
          {
            v23 = 136315906;
            v24 = "TFileBSD.cpp";
            v25 = 1024;
            v26 = 557;
            v27 = 2080;
            v28 = "ReadAsync";
            v29 = 2048;
            v30 = a1;
            _os_log_impl(&dword_1DE1D2000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", &v23, 0x26u);
          }
        }
      }
    }
  }

  else
  {
    v19 = 4294967258;
  }

LABEL_27:
  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

_BYTE *TFileBSD::GetFreeRequestBlock(TFileBSD *this)
{
  v13 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v1 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315650;
    v8 = "TFileBSD.cpp";
    v9 = 1024;
    v10 = 594;
    v11 = 2080;
    v12 = "GetFreeRequestBlock";
    _os_log_impl(&dword_1DE1D2000, v1, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s", &v7, 0x1Cu);
  }

LABEL_7:
  v2 = (*TFileBSD::sRequestBlockList + 48 * TFileBSD::sAsyncRequestWriteIndex);
  if (*v2)
  {
    v2 = 0;
  }

  else
  {
    v3 = (TFileBSD::sAsyncRequestWriteIndex + 1) & 0x7F;
    if (TFileBSD::sAsyncRequestWriteIndex + 1 <= 0)
    {
      v3 = -(-(TFileBSD::sAsyncRequestWriteIndex + 1) & 0x7F);
    }

    TFileBSD::sAsyncRequestWriteIndex = v3;
    if (kTFileBSDSubsystem)
    {
      if (*(kTFileBSDSubsystem + 8))
      {
        v4 = *kTFileBSDSubsystem;
        if (*kTFileBSDSubsystem)
        {
          if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
          {
            v7 = 136315650;
            v8 = "TFileBSD.cpp";
            v9 = 1024;
            v10 = 601;
            v11 = 2080;
            v12 = "GetFreeRequestBlock";
            _os_log_impl(&dword_1DE1D2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s", &v7, 0x1Cu);
          }
        }
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

size_t TFileBSD::Write(FILE **this, void *a2, size_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v6 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v17 = "TFileBSD.cpp";
    v18 = 1024;
    v19 = 473;
    v20 = 2080;
    v21 = "Write";
    v22 = 2048;
    v23 = this;
    _os_log_impl(&dword_1DE1D2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", buf, 0x26u);
  }

LABEL_7:
  if ((((*this)->_lb._base)(this) & 1) == 0)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v15, 0xFFFFFFDA);
      *buf = 136315906;
      v17 = "TFileBSD.cpp";
      v18 = 1024;
      v19 = 476;
      v20 = 2080;
      v21 = v15;
      v22 = 2080;
      v23 = "Write - file not open";
      _os_log_impl(&dword_1DE1D2000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Write - file not open", -38);
  }

  if (a3)
  {
    v7 = fwrite(a2, 1uLL, a3, this[2]);
    if (v7 < a3)
    {
      v8 = ferror(this[2]);
      if (v8)
      {
        v13 = v8;
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v15, v13);
          *buf = 136315906;
          v17 = "TFileBSD.cpp";
          v18 = 1024;
          v19 = 486;
          v20 = 2080;
          v21 = v15;
          v22 = 2080;
          v23 = "Write::fwrite";
          _os_log_impl(&dword_1DE1D2000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        v14 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v14, "Write::fwrite", v13);
      }
    }

    this[3] = (this[3] + v7);
  }

  else
  {
    v7 = 0;
  }

  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v9 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v17 = "TFileBSD.cpp";
          v18 = 1024;
          v19 = 492;
          v20 = 2080;
          v21 = "Write";
          v22 = 2048;
          v23 = this;
          _os_log_impl(&dword_1DE1D2000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", buf, 0x26u);
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

size_t TFileBSD::Read(FILE **this, void *a2, size_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v6 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v17 = "TFileBSD.cpp";
    v18 = 1024;
    v19 = 443;
    v20 = 2080;
    v21 = "Read";
    v22 = 2048;
    v23 = this;
    _os_log_impl(&dword_1DE1D2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", buf, 0x26u);
  }

LABEL_7:
  if ((((*this)->_lb._base)(this) & 1) == 0)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v15, 0xFFFFFFDA);
      *buf = 136315906;
      v17 = "TFileBSD.cpp";
      v18 = 1024;
      v19 = 446;
      v20 = 2080;
      v21 = v15;
      v22 = 2080;
      v23 = "Read - file not open";
      _os_log_impl(&dword_1DE1D2000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Read - file not open", -38);
  }

  if (a3)
  {
    v7 = fread(a2, 1uLL, a3, this[2]);
    if (v7 < a3 && !feof(this[2]))
    {
      v8 = ferror(this[2]);
      if (v8)
      {
        v13 = v8;
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v15, v13);
          *buf = 136315906;
          v17 = "TFileBSD.cpp";
          v18 = 1024;
          v19 = 457;
          v20 = 2080;
          v21 = v15;
          v22 = 2080;
          v23 = "Read::fread";
          _os_log_impl(&dword_1DE1D2000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        v14 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v14, "Read::fread", v13);
      }
    }

    this[3] = (this[3] + v7);
  }

  else
  {
    v7 = 0;
  }

  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v9 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v17 = "TFileBSD.cpp";
          v18 = 1024;
          v19 = 463;
          v20 = 2080;
          v21 = "Read";
          v22 = 2048;
          v23 = this;
          _os_log_impl(&dword_1DE1D2000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", buf, 0x26u);
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

void TFileBSD::~TFileBSD(TFileBSD *this)
{
  TFileBSD::~TFileBSD(this);

  JUMPOUT(0x1E12BF450);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = &unk_1F595E2E0;
  *this = &unk_1F595E2E0;
  if (kTFileBSDSubsystem)
  {
    v3 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315906;
    v8 = "TFileBSD.cpp";
    v9 = 1024;
    v10 = 126;
    v11 = 2080;
    v12 = "~TFileBSD";
    v13 = 2048;
    v14 = this;
    _os_log_impl(&dword_1DE1D2000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &v7, 0x26u);
    v2 = *this;
  }

LABEL_7:
  if (v2[15](this))
  {
    (*(*this + 112))(this);
  }

  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v4 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          v7 = 136315906;
          v8 = "TFileBSD.cpp";
          v9 = 1024;
          v10 = 135;
          v11 = 2080;
          v12 = "~TFileBSD";
          v13 = 2048;
          v14 = this;
          _os_log_impl(&dword_1DE1D2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", &v7, 0x26u);
        }
      }
    }
  }

  v5 = *(this + 1);
  if (v5)
  {
    free(v5);
    *(this + 1) = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

void TFileBSD::TFileBSD(TFileBSD *this, const __CFURL *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  *this = &unk_1F595E2E0;
  *(this + 1) = 0;
  v4 = (this + 8);
  if (TFileBSD::TFileBSD(__CFURL const*)::once != -1)
  {
    dispatch_once(&TFileBSD::TFileBSD(__CFURL const*)::once, &__block_literal_global_170);
  }

  if (kTFileBSDSubsystem)
  {
    v5 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315906;
    v9 = "TFileBSD.cpp";
    v10 = 1024;
    v11 = 71;
    v12 = 2080;
    v13 = "TFileBSD";
    v14 = 2048;
    v15 = this;
    _os_log_impl(&dword_1DE1D2000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &v8, 0x26u);
  }

LABEL_9:
  TFileBSD::Initialize(this);
  if (a2)
  {
    CADeprecated::CAAutoFree<char>::allocBytes(v4);
    if (*v4)
    {
      if (CFURLGetFileSystemRepresentation(a2, 1u, *v4, 1024) != 1 && *v4)
      {
        **v4 = 0;
      }
    }
  }

  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v6 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          v8 = 136315906;
          v9 = "TFileBSD.cpp";
          v10 = 1024;
          v11 = 96;
          v12 = 2080;
          v13 = "TFileBSD";
          v14 = 2048;
          v15 = this;
          _os_log_impl(&dword_1DE1D2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", &v8, 0x26u);
        }
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DE1EC684(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    free(*v1);
    *v1 = 0;
  }

  _Unwind_Resume(exception_object);
}

void TFileBSD::Initialize(TFileBSD *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = kTFileBSDSubsystem;
  if (kTFileBSDSubsystem)
  {
    v3 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      *(this + 1) = 0u;
      *(this + 2) = 0u;
LABEL_8:
      if (*(v2 + 8))
      {
        v4 = *v2;
        if (*v2)
        {
          if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
          {
            v6 = 136315906;
            v7 = "TFileBSD.cpp";
            v8 = 1024;
            v9 = 149;
            v10 = 2080;
            v11 = "Initialize";
            v12 = 2048;
            v13 = this;
            _os_log_impl(&dword_1DE1D2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", &v6, 0x26u);
          }
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "TFileBSD.cpp";
    v8 = 1024;
    v9 = 144;
    v10 = 2080;
    v11 = "Initialize";
    v12 = 2048;
    v13 = this;
    _os_log_impl(&dword_1DE1D2000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &v6, 0x26u);
    v2 = kTFileBSDSubsystem;
  }

  *(this + 1) = 0u;
  *(this + 2) = 0u;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_12:
  v5 = *MEMORY[0x1E69E9840];
}

void *CADeprecated::CAAutoFree<char>::allocBytes(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }

  result = malloc_type_malloc(0x400uLL, 0xBAAF0B94uLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v5 = std::bad_alloc::bad_alloc(exception);
  }

  *a1 = result;
  return result;
}

void TFileBSD::TFileBSD(TFileBSD *this, const char **a2)
{
  v18 = *MEMORY[0x1E69E9840];
  *this = &unk_1F595E2E0;
  *(this + 1) = 0;
  v4 = (this + 8);
  if (kTFileBSDSubsystem)
  {
    v5 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315906;
    v11 = "TFileBSD.cpp";
    v12 = 1024;
    v13 = 106;
    v14 = 2080;
    v15 = "TFileBSD";
    v16 = 2048;
    v17 = this;
    _os_log_impl(&dword_1DE1D2000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &v10, 0x26u);
  }

LABEL_7:
  TFileBSD::Initialize(this);
  if (a2[1])
  {
    CADeprecated::CAAutoFree<char>::allocBytes(v4);
    v6 = *v4;
    if (v6)
    {
      v7 = strlen(a2[1]);
      memcpy(v6, a2[1], v7 + 1);
    }
  }

  *(this + 4) = a2[4];
  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v8 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          v10 = 136315906;
          v11 = "TFileBSD.cpp";
          v12 = 1024;
          v13 = 117;
          v14 = 2080;
          v15 = "TFileBSD";
          v16 = 2048;
          v17 = this;
          _os_log_impl(&dword_1DE1D2000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", &v10, 0x26u);
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE1ECB10(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    free(*v1);
    *v1 = 0;
  }

  _Unwind_Resume(exception_object);
}

uint64_t TFileBSD::InitializeAsync(TFileBSD *this, int *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v3 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315650;
    v8 = "TFileBSD.cpp";
    v9 = 1024;
    v10 = 171;
    v11 = 2080;
    v12 = "InitializeAsync";
    _os_log_impl(&dword_1DE1D2000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s", &v7, 0x1Cu);
  }

LABEL_7:
  pthread_mutex_lock(&sTFileMutex);
  if (!sReadCounter_BSD)
  {
    sReadCounter_BSD = this;
    operator new();
  }

  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v4 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          v7 = 136315650;
          v8 = "TFileBSD.cpp";
          v9 = 1024;
          v10 = 188;
          v11 = 2080;
          v12 = "InitializeAsync";
          _os_log_impl(&dword_1DE1D2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s", &v7, 0x1Cu);
        }
      }
    }
  }

  result = pthread_mutex_unlock(&sTFileMutex);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE1ECE18(_Unwind_Exception *a1)
{
  MEMORY[0x1E12BF450](v1, 0x10F1C4021999281);
  pthread_mutex_unlock(&sTFileMutex);
  _Unwind_Resume(a1);
}

uint64_t TFileBSD::AsyncFileIOHandler(TFileBSD *this, void *a2)
{
  v2 = TFileBSD::sRequestBlockList;
  if (TFileBSD::sRequestBlockList)
  {
    if ((TFileBSD::sKillAsyncThread & 1) == 0)
    {
      v4 = TFileBSD::sGuard;
      v5 = TFileBSD::sAsyncRequestReadIndex;
      do
      {
        v6 = v5;
        while (1)
        {
          v7 = (*(*v4 + 16))(v4, a2);
          if ((*(*v2 + 48 * v5) & 1) == 0 && (TFileBSD::sKillAsyncThread & 1) == 0)
          {
            (*(*v4 + 56))(v4);
          }

          if (v7)
          {
            (*(*v4 + 24))(v4);
          }

          v8 = *v2 + 48 * v5;
          if (*v8 == 1 && (TFileBSD::sKillAsyncThread & 1) == 0)
          {
            break;
          }

          TFileBSD::sAsyncRequestReadIndex = v5;
          if (TFileBSD::sKillAsyncThread)
          {
            goto LABEL_3;
          }
        }

        do
        {
          fseek(*(*(v8 + 40) + 16), *(v8 + 24), 0);
          fread(*(v8 + 32), 1uLL, *(v8 + 28), *(*(v8 + 40) + 16));
          --*sReadCounter_BSD;
          v9 = *v2;
          *(*v2 + 48 * v6) = 0;
          if (v5 + 1 <= 0)
          {
            v5 = -(-(v5 + 1) & 0x7F);
          }

          else
          {
            v5 = (v5 + 1) & 0x7F;
          }

          v8 = v9 + 48 * v5;
          if (*v8 != 1)
          {
            break;
          }

          v6 = v5;
        }

        while ((TFileBSD::sKillAsyncThread & 1) == 0);
        TFileBSD::sAsyncRequestReadIndex = v5;
      }

      while ((TFileBSD::sKillAsyncThread & 1) == 0);
    }

LABEL_3:
    TFileBSD::sKillAsyncThread = 0;
  }

  return 0;
}

void CADeprecated::CAGuard::Locker::~Locker(CADeprecated::CAGuard::Locker *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    (*(**this + 24))();
  }
}

uint64_t TFileBSD::ShutdownAsync(TFileBSD *this)
{
  v14 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v1 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 136315650;
    *&v9[4] = "TFileBSD.cpp";
    v10 = 1024;
    v11 = 197;
    v12 = 2080;
    v13 = "ShutdownAsync";
    _os_log_impl(&dword_1DE1D2000, v1, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s", v9, 0x1Cu);
  }

LABEL_7:
  pthread_mutex_lock(&sTFileMutex);
  if (sReadCounter_BSD)
  {
    v2 = TFileBSD::sGuard;
    *v9 = TFileBSD::sGuard;
    v3 = (*(*TFileBSD::sGuard + 16))(TFileBSD::sGuard);
    v9[8] = v3;
    TFileBSD::sKillAsyncThread = 1;
    (*(*TFileBSD::sGuard + 80))(TFileBSD::sGuard);
    if (v3)
    {
      (*(*v2 + 24))(v2);
    }

    while (TFileBSD::sKillAsyncThread == 1)
    {
      usleep(0x2710u);
    }

    if (TFileBSD::sAsyncCommandThread)
    {
      (*(*TFileBSD::sAsyncCommandThread + 8))(TFileBSD::sAsyncCommandThread);
    }

    if (TFileBSD::sGuard)
    {
      (*(*TFileBSD::sGuard + 8))(TFileBSD::sGuard);
    }

    v4 = TFileBSD::sRequestBlockList;
    if (TFileBSD::sRequestBlockList)
    {
      v5 = *TFileBSD::sRequestBlockList;
      if (*TFileBSD::sRequestBlockList)
      {
        *(TFileBSD::sRequestBlockList + 8) = v5;
        operator delete(v5);
      }

      MEMORY[0x1E12BF450](v4, 0x20C40960023A9);
    }

    TFileBSD::sRequestBlockList = 0;
    sReadCounter_BSD = 0;
  }

  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v6 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *v9 = 136315650;
          *&v9[4] = "TFileBSD.cpp";
          v10 = 1024;
          v11 = 221;
          v12 = 2080;
          v13 = "ShutdownAsync";
          _os_log_impl(&dword_1DE1D2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s", v9, 0x1Cu);
        }
      }
    }
  }

  result = pthread_mutex_unlock(&sTFileMutex);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE1ED3D0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t CAVectorUnit_Examine()
{
  if (getenv("CA_NoVector"))
  {
    fwrite("CA_NoVector set; Vector unit optimized routines will be bypassed\n", 0x41uLL, 1uLL, *MEMORY[0x1E69E9848]);
    return 0;
  }

  else
  {
    result = 200;
    gCAVectorUnitType = 200;
  }

  return result;
}

uint64_t CAVectorUnit_GetByteWidth(int a1)
{
  if (a1 == 112)
  {
    v1 = 64;
  }

  else
  {
    v1 = 16;
  }

  if (a1 == 111)
  {
    v2 = 32;
  }

  else
  {
    v2 = v1;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void XPC_Connection::~XPC_Connection(XPC_Connection *this)
{
  XPC_Connection::~XPC_Connection(this);

  JUMPOUT(0x1E12BF450);
}

{
  *this = &unk_1F595E3D8;
  v2 = *(this + 3);
  if (v2)
  {
    _Block_release(v2);
    *(this + 3) = 0;
  }

  v3 = *(this + 5);
  if (v3)
  {
    _Block_release(v3);
    *(this + 5) = 0;
  }

  XPC_Object::~XPC_Object(this);
}

void XPC_Connection::Initialize(XPC_Connection *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = ___ZN14XPC_Connection10InitializeEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_191;
    handler[4] = this;
    xpc_connection_set_event_handler(v2, handler);
    xpc_connection_set_context(*(this + 1), this);
  }
}

uint64_t XPC_Connection::Finalize(uint64_t this, XPC_Connection *a2)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 0;
  v4 = (*(a1 + 8))(v3, &v8);
  v5 = 0;
  if (v8 == 1)
  {
    v9 = v4;
    v6 = *(a1 + 40);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(v6, &v9);
    v5 = v8;
  }

  return v5 & 1;
}

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F595E400;
  a2[1] = v2;
  return std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_1F595E400;
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x1E12BF450);
}

void *std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_1F595E400;
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

uint64_t CALog::PrefValueToPriority(const __CFString *this, BOOL *a2, BOOL *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  valuePtr = -1;
  v5 = CFGetTypeID(this);
  if (v5 == CFNumberGetTypeID())
  {
    CFNumberGetValue(this, kCFNumberIntType, &valuePtr);
    v6 = valuePtr + 3;
  }

  else
  {
    if (v5 != CFStringGetTypeID())
    {
      goto LABEL_22;
    }

    if (CFEqual(this, @"error"))
    {
      v6 = 1;
      goto LABEL_23;
    }

    if (CFEqual(this, @"warning"))
    {
      v6 = 2;
      goto LABEL_23;
    }

    if (CFEqual(this, @"note") || CFEqual(this, @"notice"))
    {
      v6 = 3;
      goto LABEL_23;
    }

    if (CFEqual(this, @"info"))
    {
      v6 = 4;
      goto LABEL_23;
    }

    if (CFEqual(this, @"details"))
    {
      v6 = 5;
      goto LABEL_23;
    }

    if (CFEqual(this, @"minutiae"))
    {
      v6 = 6;
      goto LABEL_23;
    }

    if (CFEqual(this, @"spew"))
    {
      v6 = 7;
      goto LABEL_23;
    }

    if (!CFStringGetCString(this, buffer, 64, 0x8000100u))
    {
LABEL_22:
      v6 = -1;
      goto LABEL_23;
    }

    v11 = 0;
    v7 = sscanf(buffer, "%d", &v11);
    v6 = v11 + 3;
    if (v7 != 1)
    {
      v6 = -1;
    }
  }

LABEL_23:
  *a2 = v6 > 0;
  v8 = *MEMORY[0x1E69E9840];
  return v6 & ~(v6 >> 31);
}

uint64_t std::__function::__func<CALog::Scope::SetPriorityThresholdFromPreference(__CFString const*,__CFString const*)::$_0,std::allocator<CALog::Scope::SetPriorityThresholdFromPreference(__CFString const*,__CFString const*)::$_0>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = 3;
  if (*a2 <= 6)
  {
    v2 = 1;
  }

  *(*(result + 8) + 8) = v2;
  return result;
}

void sub_1DE1EDA18(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void CADeserializer::CADeserializer(CADeserializer *this, CFTypeRef cf)
{
  *(this + 32) = 0;
  *this = cf;
  CFRetain(cf);
  BytePtr = CFDataGetBytePtr(cf);
  *(this + 1) = BytePtr;
  *(this + 2) = BytePtr;
  *(this + 3) = &BytePtr[CFDataGetLength(cf)];
}

void CADeserializer::CADeserializer(CADeserializer *this, char *a2, uint64_t a3)
{
  *(this + 32) = 0;
  *this = 0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = &a2[a3];
}

{
  *(this + 32) = 0;
  *this = 0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = &a2[a3];
}

CFDataRef CADeserializer::ReadAllData(CADeserializer *this)
{
  v1 = *(this + 2);
  v2 = *(this + 3) - v1;
  if (v2 < 0)
  {
    v1 = 0;
    *(this + 32) = 1;
    v3 = v2;
  }

  else
  {
    v3 = v2;
    *(this + 2) = &v1[v2];
  }

  return CFDataCreate(0, v1, v3);
}

void CASerializer::CASerializer(CASerializer *this, CFTypeRef cf)
{
  *this = 0;
  if (cf)
  {
    *this = cf;
    CFRetain(cf);
  }
}

{
  *this = 0;
  if (cf)
  {
    *this = cf;
    CFRetain(cf);
  }
}

void CASerializer::WriteData(__CFData **this, CFDataRef theData)
{
  v3 = *this;
  if (*this)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);

    CFDataAppendBytes(v3, BytePtr, Length);
  }

  else
  {
    *this = CFDataCreateMutableCopy(0, 0, theData);
  }
}

void CASerializer::WritePlist(const __CFData **this, const void *a2)
{
  Data = CFPropertyListCreateData(0, a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
  v4 = Data;
  operator<<(this, &v4);
  if (Data)
  {

    CFRelease(Data);
  }
}

CFPropertyListRef CADeserializer::ReadPlist(CADeserializer *this)
{
  data = 0;
  operator>>(this, &data);
  v1 = data;
  if (!data)
  {
    return 0;
  }

  v2 = CFPropertyListCreateWithData(0, data, 0, 0, 0);
  CFRelease(v1);
  return v2;
}

const __CFData **operator<<(const __CFData **a1, CFURLRef *a2)
{
  v3 = CFURLCopyAbsoluteURL(*a2);
  v5 = CFURLGetString(v3);
  operator<<(a1, &v5);
  CFRelease(v3);
  return a1;
}

uint64_t operator>>(uint64_t a1, CFURLRef *a2)
{
  URLString = 0;
  operator>>(a1, &URLString);
  v4 = URLString;
  if (URLString)
  {
    *a2 = CFURLCreateWithString(0, URLString, 0);
    CFRelease(v4);
  }

  else
  {
    *a2 = 0;
  }

  return a1;
}

CADeserializer *operator>>(CADeserializer *a1, void *a2)
{
  Ptr = CADeserializer::GetAndAdvanceReadPtr(a1, 8u, 8);
  if (Ptr)
  {
    v5 = *Ptr;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  v6 = CADeserializer::GetAndAdvanceReadPtr(a1, 8u, 8);
  if (v6)
  {
    v7 = *v6;
  }

  else
  {
    v7 = 0;
  }

  a2[1] = v7;
  return a1;
}

uint64_t CADeprecated::CAMutex::Try(CADeprecated::CAMutex *this, BOOL *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  v4 = pthread_self();
  if (pthread_equal(v4, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    v5 = 0;
  }

  else
  {
    v6 = pthread_mutex_trylock((this + 24));
    if (v6 == 16)
    {
      v5 = 0;
      result = 0;
      goto LABEL_7;
    }

    if (v6)
    {
      v11[0] = HIBYTE(v6);
      v11[1] = BYTE2(v6);
      v11[2] = BYTE1(v6);
      v9 = v6;
      v11[3] = v6;
      v11[4] = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v13 = "CAMutex.cpp";
        v14 = 1024;
        v15 = 224;
        v16 = 1024;
        v17 = v9;
        v18 = 2080;
        v19 = v11;
        _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Try: call to pthread_mutex_trylock failed, Error: %d (%s)", buf, 0x22u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F595E710;
      exception[2] = v9;
    }

    atomic_store(v4, this + 2);
    v5 = 1;
  }

  result = 1;
LABEL_7:
  *a2 = v5;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

CADeprecated::CAMutex::Unlocker *CADeprecated::CAMutex::Unlocker::Unlocker(CADeprecated::CAMutex::Unlocker *this, CADeprecated::CAMutex *a2)
{
  *this = a2;
  *(this + 8) = 0;
  if ((*(*a2 + 48))(a2))
  {
    (*(**this + 24))();
    *(this + 8) = 1;
    return this;
  }

  else
  {
    v4 = CAVerboseAbort();
    return CADeprecated::CAMutex::Unlocker::Unlocker(v4, v5);
  }
}

void CADeprecated::CAMutex::Unlocker::~Unlocker(CADeprecated::CAMutex::Unlocker *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    (*(**this + 16))();
  }
}

uint64_t PowerMeter::Reset(uint64_t this)
{
  *(this + 64) = 0;
  *(this + 56) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 48) = 0xFFFFFFFFLL;
  return this;
}

uint64_t PowerMeter::ClearClipping(uint64_t this)
{
  *(this + 56) = 0;
  *(this + 52) = 0;
  return this;
}

void PowerMeter::SetSampleRate(PowerMeter *this, double a2)
{
  *(this + 1) = a2;
  v4 = a2 * 2.5;
  if (v4 < 2.22507386e-308)
  {
    v4 = 2.22507386e-308;
  }

  v5 = -6.90775528 / v4;
  v6 = exp(-6.90775528 / v4);
  if (v5 < -708.4)
  {
    v6 = 0.0;
  }

  *(this + 2) = v6;
  v7 = a2 * 1.24;
  if (a2 * 1.24 < 2.22507386e-308)
  {
    v7 = 2.22507386e-308;
  }

  v8 = -6.90775528 / v7;
  v9 = exp(-6.90775528 / v7);
  if (v8 < -708.4)
  {
    v9 = 0.0;
  }

  *(this + 4) = v9;
}

double PowerMeter::ProcessSilence(PowerMeter *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  return result;
}

long double PowerMeter::LinearToDB(PowerMeter *this, long double a2)
{
  if (a2 <= 0.000001)
  {
    return -120.0;
  }

  else
  {
    return log10(a2) * 20.0;
  }
}

unsigned __int8 *PowerMeter::SavePeaks(unsigned __int8 *this, int a2, unsigned int a3, unsigned int a4)
{
  v4 = vcvtd_n_f64_s32(a4, 0xFuLL);
  *(this + 24) = a3;
  v5 = *this;
  if (v5 == 1)
  {
    v6 = v4;
  }

  else
  {
    v7 = *(this + 13);
    v6 = v4;
    if (v7 > v6)
    {
      v6 = v7 + (v6 - v7) * *(this + 5);
    }
  }

  *(this + 13) = v6;
  v8 = vcvtd_n_f64_s32(a3, 0x1EuLL);
  v9 = *(this + 25) + a2;
  *(this + 25) = v9;
  v10 = *(this + 15);
  if (v9 >= (*(this + 1) * 0.907029478))
  {
    v10 = v10 - v10 * *(this + 3);
    *(this + 15) = v10;
  }

  v11 = sqrt(v8);
  if (v10 < v6)
  {
    *(this + 15) = v6;
    *(this + 25) = 0;
    v10 = v6;
  }

  v12 = v11 * 1.41421356;
  if ((v5 & 1) == 0)
  {
    v13 = *(this + 14);
    if (v13 > v12)
    {
      v12 = v13 + (v12 - v13) * *(this + 5);
    }
  }

  *(this + 14) = v12;
  if (v12 > v10)
  {
    *(this + 14) = v10;
  }

  return this;
}

unsigned __int8 *PowerMeter::Process_Int16(PowerMeter *this, const __int16 *a2, int a3, int a4, long double a5)
{
  PowerMeter::ScaleDecayConstants(this, a4, a5);
  v9 = *(this + 24);
  if (a4 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = a4 + 1;
    do
    {
      v12 = *a2;
      if (v12 < 0)
      {
        v12 = -v12;
      }

      if (v10 <= v12)
      {
        v10 = v12;
      }

      v9 += (v12 * v12 - v9) >> 5;
      --v11;
      a2 += a3;
    }

    while (v11 > 1);
  }

  return PowerMeter::SavePeaks(this, a4, v9, v10);
}

unsigned __int8 *PowerMeter::Process_Int32(PowerMeter *this, const int *a2, int a3, int a4, long double a5)
{
  PowerMeter::ScaleDecayConstants(this, a4, a5);
  v9 = *(this + 24);
  if (a4 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = a4 + 1;
    do
    {
      v12 = *a2 >> 9;
      if (v12 >= 0)
      {
        v13 = *a2 >> 9;
      }

      else
      {
        v13 = -v12;
      }

      if (v13 > v10)
      {
        v10 = v13;
      }

      v9 += (v12 * v12 - v9) >> 5;
      --v11;
      a2 += a3;
    }

    while (v11 > 1);
  }

  return PowerMeter::SavePeaks(this, a4, v9, v10);
}

uint64_t TStream::ReadByte(TStream *this)
{
  v2 = 0;
  (*(*this + 16))(this, &v2, 1);
  return v2;
}

uint64_t TStream::ReadBig16(TStream *this)
{
  v2 = 0;
  (*(*this + 16))(this, &v2, 2);
  return bswap32(v2) >> 16;
}

uint64_t TStream::ReadBig32(TStream *this)
{
  v2 = 0;
  (*(*this + 16))(this, &v2, 4);
  return bswap32(v2);
}

float TStream::ReadBigFloat32(TStream *this)
{
  v2 = 0;
  (*(*this + 16))(this, &v2, 4);
  return COERCE_FLOAT(bswap32(v2));
}

double TStream::ReadBigFloat64(TStream *this)
{
  v2 = 0;
  (*(*this + 16))(this, &v2, 8);
  return COERCE_DOUBLE(bswap64(v2));
}

uint64_t TStream::ReadLittle16(TStream *this)
{
  v2 = 0;
  (*(*this + 16))(this, &v2, 2);
  return v2;
}

uint64_t TStream::ReadLittle32(TStream *this)
{
  v2 = 0;
  (*(*this + 16))(this, &v2, 4);
  return v2;
}

float TStream::ReadLittleFloat32(TStream *this)
{
  v2 = 0.0;
  (*(*this + 16))(this, &v2, 4);
  return v2;
}

double TStream::ReadLittleFloat64(TStream *this)
{
  v2 = 0.0;
  (*(*this + 16))(this, &v2, 8);
  return v2;
}

char *CADeprecated::CABufferList::AllocateBuffersAndCopyFrom(char *this, unsigned int a2, CADeprecated::CABufferList *a3, CADeprecated::CABufferList *a4)
{
  v4 = *(this + 6);
  if (v4 == *(a3 + 6) && v4 == *(a4 + 6))
  {
    v7 = *(a4 + 1);
    if (*(this + 9) < a2)
    {
      if (!v7)
      {
        v15 = *(a3 + 9);
        operator new[]();
      }

      goto LABEL_15;
    }

    if (v7)
    {
LABEL_15:
      v13 = CAAssertRtn();
      return CADeprecated::CABufferList::BytesConsumed(v13, v14);
    }

    v8 = *(a3 + 9);
    if (v4)
    {
      v9 = (a4 + 40);
      v10 = (a3 + 36);
      v11 = (this + 40);
      do
      {
        --v4;
        this = memmove(*v11, *(v10 + 1), *v10);
        v12 = *v11;
        v11 += 2;
        *v9 = v12;
        LODWORD(v12) = *v10;
        v10 += 4;
        *(v9 - 1) = v12;
        v9 += 2;
      }

      while (v4);
    }

    if (a3 != a4)
    {
      v13 = a3;
      v14 = v8;

      return CADeprecated::CABufferList::BytesConsumed(v13, v14);
    }
  }

  return this;
}

uint64_t CADeprecated::CABufferList::BytesConsumed(uint64_t this, unsigned int a2)
{
  if (*(this + 8))
  {
LABEL_8:
    v7 = CAAssertRtn();
    return CADeprecated::CABufferList::DeallocateBuffers(v7);
  }

  v2 = *(this + 24);
  if (v2)
  {
    for (i = (this + 40); ; i += 2)
    {
      v4 = *(i - 1);
      v5 = v4 >= a2;
      v6 = v4 - a2;
      if (!v5)
      {
        break;
      }

      *i += a2;
      *(i - 1) = v6;
      if (!--v2)
      {
        return this;
      }
    }

    CAAssertRtn();
    goto LABEL_8;
  }

  return this;
}

uint64_t CADeprecated::CABufferList::DeallocateBuffers(CADeprecated::CABufferList *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = (this + 40);
    do
    {
      *v3 = 0;
      *(v3 - 1) = 0;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  result = *(this + 1);
  if (result)
  {
    result = MEMORY[0x1E12BF430](result, 0x1000C8077774924);
    *(this + 1) = 0;
    *(this + 4) = 0;
  }

  return result;
}

uint64_t CAShowAudioBufferList(const AudioBufferList *a1, int a2, const AudioStreamBasicDescription *a3, const char *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  mFormatID = a3->mFormatID;
  mFormatFlags = a3->mFormatFlags;
  mBytesPerFrame = a3->mBytesPerFrame;
  mChannelsPerFrame = a3->mChannelsPerFrame;
  mBitsPerChannel = a3->mBitsPerChannel;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__str = 0u;
  if (mFormatID != 1819304813)
  {
    goto LABEL_10;
  }

  if (mFormatFlags)
  {
    if (mBitsPerChannel == 32)
    {
      if ((mFormatFlags & 2) != 0)
      {
        strcpy(__str, ", BEF");
        v12 = 10;
      }

      else
      {
        strcpy(__str, ", LEF");
        v12 = -10;
      }

      goto LABEL_11;
    }

LABEL_10:
    v12 = 1;
    goto LABEL_11;
  }

  if (!mBytesPerFrame)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_11;
  }

  if ((mFormatFlags & 0x20) != 0)
  {
    mChannelsPerFrame = 1;
  }

  else if (!mChannelsPerFrame)
  {
    goto LABEL_6;
  }

  v12 = mBytesPerFrame / mChannelsPerFrame;
  if ((mBytesPerFrame / mChannelsPerFrame) >= 1)
  {
    if (((mFormatFlags >> 7) & 0x3F) != 0)
    {
      snprintf(__str, 0x50uLL, ", %d.%d-bit");
    }

    else
    {
      snprintf(__str, 0x50uLL, ", %d-bit");
    }

    if ((mFormatFlags & 2) != 0)
    {
      v15 = " BEI";
    }

    else
    {
      v12 = -v12;
      v15 = " LEI";
    }

    strlcat(__str, v15, 0x50uLL);
  }

LABEL_11:
  result = show(a1, a2, v12, a4, __str);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t show(const AudioBufferList *a1, int a2, int a3, const char *a4, const char *a5)
{
  v8 = "AudioBufferList";
  if (a4)
  {
    v8 = a4;
  }

  v9 = "";
  if (a5)
  {
    v9 = a5;
  }

  result = printf("%s %p (%d fr%s):\n", v8, a1, a2, v9);
  if (a1->mNumberBuffers)
  {
    v11 = 0;
    for (i = a1->mBuffers; ; ++i)
    {
      printf("    [%2d] %5dbytes %dch @ %p", v11, i->mDataByteSize, i->mNumberChannels, i->mData);
      if (a2)
      {
        if (i->mData)
        {
          putchar(58);
          v13 = i->mNumberChannels * a2;
          if (v13 >= 1)
          {
            break;
          }
        }
      }

LABEL_40:
      result = putchar(10);
      if (++v11 >= a1->mNumberBuffers)
      {
        return result;
      }
    }

    mData = i->mData;
    v15 = v13 + 1;
    while (1)
    {
      if (a3 < 0)
      {
        if (a3 <= -4)
        {
          if (a3 == -10)
          {
LABEL_29:
            v20 = *mData;
            mData += 4;
            goto LABEL_30;
          }

          if (a3 == -4)
          {
            v19 = *mData;
            mData += 4;
LABEL_34:
            printf(" %08X");
          }
        }

        else
        {
          switch(a3)
          {
            case -3:
              v23 = (mData[2] << 16) | (mData[1] << 8);
              v24 = *mData;
LABEL_39:
              printf(" %06X", v23 | v24);
              mData += 3;
              break;
            case -2:
              v21 = *mData;
              mData += 2;
              goto LABEL_32;
            case -1:
              goto LABEL_21;
          }
        }
      }

      else if (a3 > 2)
      {
        switch(a3)
        {
          case 3:
            v23 = (*mData << 16) | (mData[1] << 8);
            v24 = mData[2];
            goto LABEL_39;
          case 4:
            v22 = *mData;
            mData += 4;
            goto LABEL_34;
          case 10:
            v18 = *mData;
            mData += 4;
LABEL_30:
            printf(" %6.3f");
            break;
        }
      }

      else
      {
        switch(a3)
        {
          case 0:
            goto LABEL_29;
          case 1:
LABEL_21:
            v17 = *mData++;
            printf(" %02X");
            break;
          case 2:
            v16 = *mData;
            mData += 2;
LABEL_32:
            printf(" %04X");
            break;
        }
      }

      if (--v15 <= 1)
      {
        goto LABEL_40;
      }
    }
  }

  return result;
}

unsigned int *CrashIfClientProvidedBogusAudioBufferList(unsigned int *result, char a2)
{
  v2 = *result;
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = &result[4 * v2 + 2];
  v6 = result + 2;
  while (1)
  {
    v7 = *(v6 + 1);
    if (v7)
    {
      v8 = v6[1];
      if (v8)
      {
        v3 |= (v7[v8 - 1] | *v7);
      }

      goto LABEL_8;
    }

    if ((a2 & 1) == 0)
    {
      break;
    }

    v4 = 1;
LABEL_8:
    v6 += 4;
    if (v6 >= v5)
    {
      return (v3 & 0xFFFFFFFE | v4);
    }
  }

  __break(1u);
  return result;
}

const __CFArray *CACFArray::HasItem(CFArrayRef *this, const void *a2)
{
  result = *this;
  if (result)
  {
    v5.length = CFArrayGetCount(result);
    v5.location = 0;
    return (CFArrayContainsValue(*this, v5, a2) != 0);
  }

  return result;
}

const __CFArray *CACFArray::GetIndexOfItem(CFArrayRef *this, const void *a2, unsigned int *a3)
{
  *a3 = 0;
  result = *this;
  if (result)
  {
    v8.length = CFArrayGetCount(result);
    v8.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*this, v8, a2);
    if (FirstIndexOfValue == -1)
    {
      return 0;
    }

    else
    {
      *a3 = FirstIndexOfValue;
      return 1;
    }
  }

  return result;
}

uint64_t CACFArray::GetBool(CFArrayRef *this, unsigned int a2, BOOL *a3)
{
  cf = 0;
  result = CACFArray::GetCFType(this, a2, &cf);
  if (!result)
  {
    return result;
  }

  v5 = cf;
  if (!cf)
  {
    return 0;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFBooleanGetTypeID())
  {
    v8 = CFGetTypeID(v5);
    if (v8 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
      v7 = valuePtr == 0;
      goto LABEL_7;
    }

    return 0;
  }

  v7 = CFBooleanGetValue(v5) == 0;
LABEL_7:
  v9 = !v7;
  *a3 = v9;
  return 1;
}

uint64_t CACFArray::GetSInt32(CFArrayRef *this, unsigned int a2, int *a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt32Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetSInt64(CFArrayRef *this, unsigned int a2, uint64_t *a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt64Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetUInt64(CFArrayRef *this, unsigned int a2, unint64_t *a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt64Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetFloat32(CFArrayRef *this, unsigned int a2, float *a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberFloat32Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetFloat64(CFArrayRef *this, unsigned int a2, double *a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberFloat64Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::Get4CC(CFArrayRef *this, unsigned int a2, unsigned int *a3)
{
  cf = 0;
  result = CACFArray::GetCFType(this, a2, &cf);
  if (result)
  {
    v5 = cf;
    if (cf)
    {
      v6 = CFGetTypeID(cf);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberSInt32Type, a3);
        return 1;
      }

      v7 = CFGetTypeID(v5);
      if (v7 == CFStringGetTypeID() && CFStringGetLength(v5) == 4)
      {
        CFStringGetCString(v5, &v8, 5, 0x600u);
        *a3 = bswap32(v8);
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t CACFArray::GetString(CFArrayRef *this, unsigned int a2, const __CFString **a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFStringGetTypeID())
      {
        *a3 = v6;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetArray(CFArrayRef *this, unsigned int a2, const __CFArray **a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFArrayGetTypeID())
      {
        *a3 = v6;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetData(CFArrayRef *this, unsigned int a2, const __CFData **a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFDataGetTypeID())
      {
        *a3 = v6;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetUUID(CFArrayRef *this, unsigned int a2, const __CFUUID **a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFUUIDGetTypeID())
      {
        *a3 = v6;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetCACFString(CFArrayRef *this, unsigned int a2, CACFString *a3)
{
  CACFString::operator=(a3, 0);
  cf = 0;
  result = CACFArray::GetCFType(this, a2, &cf);
  if (result)
  {
    v7 = cf;
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      result = CFStringGetTypeID();
      if (v8 == result)
      {

        return CACFString::operator=(a3, v7);
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetCACFArray(CFArrayRef *this, unsigned int a2, CFTypeRef *a3)
{
  if (*(a3 + 8) == 1 && *a3)
  {
    CFRelease(*a3);
  }

  *a3 = 0;
  *(a3 + 9) = 0;
  cf = 0;
  result = CACFArray::GetCFType(this, a2, &cf);
  if (result)
  {
    v7 = cf;
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      result = CFArrayGetTypeID();
      if (v8 == result)
      {

        return CACFArray::operator=(a3, v7);
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetCACFDictionary(CFArrayRef *this, unsigned int a2, CFTypeRef *a3)
{
  if (*(a3 + 8) == 1 && *a3)
  {
    CFRelease(*a3);
  }

  *a3 = 0;
  *(a3 + 9) = 0;
  cf = 0;
  result = CACFArray::GetCFType(this, a2, &cf);
  if (result)
  {
    v7 = cf;
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      result = CFDictionaryGetTypeID();
      if (v8 == result)
      {

        return CACFArray::operator=(a3, v7);
      }
    }
  }

  return result;
}

uint64_t CACFArray::AppendBool(CACFArray *this, int a2)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;
  v7 = v4;
  v8 = 1;
  if (v4 && (CFRetain(v4), *this) && *(this + 9) == 1)
  {
    CFArrayAppendValue(*this, v4);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  CACFBoolean::~CACFBoolean(&v7);
  return v5;
}

uint64_t CACFArray::AppendCFType(CACFArray *this, const void *a2)
{
  result = *this;
  if (result)
  {
    if (*(this + 9) == 1)
    {
      CFArrayAppendValue(result, a2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CACFArray::AppendSInt32(CACFArray *this, int a2)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = v3;
  v7 = 1;
  if (v3 && *this && *(this + 9) == 1)
  {
    CFArrayAppendValue(*this, v3);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  CACFNumber::~CACFNumber(&v6);
  return v4;
}

void sub_1DE1EFC38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

uint64_t CACFArray::AppendUInt32(CACFArray *this, int a2)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = v3;
  v7 = 1;
  if (v3 && *this && *(this + 9) == 1)
  {
    CFArrayAppendValue(*this, v3);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  CACFNumber::~CACFNumber(&v6);
  return v4;
}

void sub_1DE1EFCE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

uint64_t CACFArray::AppendSInt64(CACFArray *this, uint64_t a2)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v6 = v3;
  v7 = 1;
  if (v3 && *this && *(this + 9) == 1)
  {
    CFArrayAppendValue(*this, v3);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  CACFNumber::~CACFNumber(&v6);
  return v4;
}

void sub_1DE1EFD98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

uint64_t CACFArray::AppendUInt64(CACFArray *this, uint64_t a2)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v6 = v3;
  v7 = 1;
  if (v3 && *this && *(this + 9) == 1)
  {
    CFArrayAppendValue(*this, v3);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  CACFNumber::~CACFNumber(&v6);
  return v4;
}

void sub_1DE1EFE48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

uint64_t CACFArray::AppendFloat32(CACFArray *this, float a2)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  v6 = v3;
  v7 = 1;
  if (v3 && *this && *(this + 9) == 1)
  {
    CFArrayAppendValue(*this, v3);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  CACFNumber::~CACFNumber(&v6);
  return v4;
}

void sub_1DE1EFEF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

uint64_t CACFArray::AppendFloat64(CACFArray *this, double a2)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
  v6 = v3;
  v7 = 1;
  if (v3 && *this && *(this + 9) == 1)
  {
    CFArrayAppendValue(*this, v3);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  CACFNumber::~CACFNumber(&v6);
  return v4;
}

void sub_1DE1EFFA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

uint64_t CACFArray::AppendString(CACFArray *this, const __CFString *a2)
{
  result = *this;
  if (result)
  {
    if (*(this + 9) == 1)
    {
      CFArrayAppendValue(result, a2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CACFArray::AppendArray(CACFArray *this, const __CFArray *a2)
{
  result = *this;
  if (result)
  {
    if (*(this + 9) == 1)
    {
      CFArrayAppendValue(result, a2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CACFArray::AppendDictionary(CACFArray *this, const __CFDictionary *a2)
{
  result = *this;
  if (result)
  {
    if (*(this + 9) == 1)
    {
      CFArrayAppendValue(result, a2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CACFArray::AppendData(CACFArray *this, const __CFData *a2)
{
  result = *this;
  if (result)
  {
    if (*(this + 9) == 1)
    {
      CFArrayAppendValue(result, a2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFArray *CACFArray::InsertBool(CACFArray *this, unsigned int a2, int a3)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  v4 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  v9 = v5;
  v10 = 1;
  if (v5)
  {
    CFRetain(v5);
    inserted = CACFArray::InsertCFType(this, a2, v5);
  }

  else
  {
    inserted = 0;
  }

  CACFBoolean::~CACFBoolean(&v9);
  return inserted;
}

const __CFArray *CACFArray::InsertCFType(__CFArray **this, unsigned int a2, const void *a3)
{
  result = *this;
  if (result)
  {
    if (*(this + 9) == 1)
    {
      Count = CFArrayGetCount(result);
      v8 = *this;
      if (Count <= a2)
      {
        CFArrayAppendValue(v8, a3);
      }

      else
      {
        CFArrayInsertValueAtIndex(v8, a2, a3);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFArray *CACFArray::InsertSInt32(CACFArray *this, unsigned int a2, int a3)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (v5)
  {
    inserted = CACFArray::InsertCFType(this, a2, v5);
  }

  else
  {
    inserted = 0;
  }

  CACFNumber::~CACFNumber(&v8);
  return inserted;
}

void sub_1DE1F028C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}