@interface PSISearchEntityTranslator
+ (id)_lookupIdentifierForSearchEntity:(id)a3;
+ (id)psiGroupFromSearchEntity:(id)a3;
+ (id)zeroScorePSIGroupFromLabel:(id)a3 type:(unint64_t)a4 identifier:(id)a5;
+ (unint64_t)_indexCategoryForSearchEntityType:(unint64_t)a3;
@end

@implementation PSISearchEntityTranslator

+ (unint64_t)_indexCategoryForSearchEntityType:(unint64_t)a3
{
  result = 0;
  if (a3 <= 1519)
  {
    if (a3 > 1007)
    {
      if (a3 <= 1203)
      {
        if (a3 == 1203)
        {
          v4 = 1203;
        }

        else
        {
          v4 = 0;
        }

        if (a3 == 1202)
        {
          v4 = 1202;
        }

        if (a3 == 1201)
        {
          v4 = 1201;
        }

        v12 = 1104;
        if (a3 == 1200)
        {
          v13 = 1200;
        }

        else
        {
          v13 = 0;
        }

        if (a3 != 1103)
        {
          v12 = v13;
        }

        if (a3 <= 1200)
        {
          v4 = v12;
        }

        v6 = 1103;
        if (a3 != 1102)
        {
          v6 = 0;
        }

        if (a3 == 1101)
        {
          v6 = 1101;
        }

        if (a3 == 1100)
        {
          v14 = 1100;
        }

        else
        {
          v14 = 0;
        }

        if (a3 == 1008)
        {
          v14 = 1008;
        }

        if (a3 <= 1100)
        {
          v6 = v14;
        }

        v9 = a3 <= 1102;
      }

      else
      {
        if (a3 == 1510)
        {
          v4 = 1510;
        }

        else
        {
          v4 = 0;
        }

        if (a3 == 1500)
        {
          v4 = 1500;
        }

        if (a3 == 1402)
        {
          v4 = 1402;
        }

        if (a3 == 1401)
        {
          v5 = 1401;
        }

        else
        {
          v5 = 0;
        }

        if (a3 == 1400)
        {
          v5 = 1400;
        }

        if (a3 <= 1401)
        {
          v4 = v5;
        }

        if (a3 == 1330)
        {
          v6 = 1330;
        }

        else
        {
          v6 = 0;
        }

        if (a3 == 1320)
        {
          v6 = 1320;
        }

        if (a3 == 1310)
        {
          v6 = 1310;
        }

        v7 = 1205;
        if (a3 == 1300)
        {
          v8 = 1300;
        }

        else
        {
          v8 = 0;
        }

        if (a3 != 1204)
        {
          v7 = v8;
        }

        if (a3 <= 1309)
        {
          v6 = v7;
        }

        v9 = a3 <= 1399;
      }
    }

    else
    {
      if (a3 <= 999)
      {
        switch(a3)
        {
          case 1uLL:
          case 2uLL:
          case 3uLL:
          case 4uLL:
          case 5uLL:
          case 6uLL:
          case 7uLL:
          case 8uLL:
          case 9uLL:
          case 0xAuLL:
          case 0xBuLL:
          case 0xCuLL:
          case 0xDuLL:
          case 0xEuLL:
            goto LABEL_8;
          default:
            return result;
        }

        return result;
      }

      v4 = 1005;
      if (a3 == 1007)
      {
        v17 = 1007;
      }

      else
      {
        v17 = 0;
      }

      if (a3 != 1004)
      {
        v4 = v17;
      }

      if (a3 == 1003)
      {
        v4 = 1003;
      }

      if (a3 == 1001)
      {
        v6 = 1001;
      }

      else
      {
        v6 = 0;
      }

      if (a3 == 1000)
      {
        v6 = 1000;
      }

      v9 = a3 <= 1002;
    }

LABEL_132:
    if (v9)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  if (a3 <= 1899)
  {
    if (a3 == 1802)
    {
      v4 = 1802;
    }

    else
    {
      v4 = 0;
    }

    if (a3 == 1801)
    {
      v4 = 1801;
    }

    if (a3 == 1800)
    {
      v4 = 1800;
    }

    if (a3 == 1701)
    {
      v10 = 1701;
    }

    else
    {
      v10 = 0;
    }

    if (a3 == 1700)
    {
      v10 = 1700;
    }

    if (a3 <= 1799)
    {
      v4 = v10;
    }

    if (a3 == 1610)
    {
      v6 = 1610;
    }

    else
    {
      v6 = 0;
    }

    if (a3 == 1600)
    {
      v6 = 1600;
    }

    if (a3 == 1540)
    {
      v6 = 1540;
    }

    if (a3 == 1530)
    {
      v11 = 1530;
    }

    else
    {
      v11 = 0;
    }

    if (a3 == 1520)
    {
      v11 = 1520;
    }

    if (a3 <= 1539)
    {
      v6 = v11;
    }

    v9 = a3 <= 1699;
    goto LABEL_132;
  }

  if (a3 > 1999)
  {
    if (a3 == 2600)
    {
      v4 = 2600;
    }

    else
    {
      v4 = 0;
    }

    if (a3 == 2500)
    {
      v4 = 2500;
    }

    if (a3 == 2401)
    {
      v15 = 2401;
    }

    else
    {
      v15 = 0;
    }

    if (a3 == 2400)
    {
      v15 = 2400;
    }

    if (a3 <= 2499)
    {
      v4 = v15;
    }

    if (a3 == 2300)
    {
      v6 = 2300;
    }

    else
    {
      v6 = 0;
    }

    if (a3 == 2200)
    {
      v6 = 2200;
    }

    if (a3 == 2100)
    {
      v16 = 2100;
    }

    else
    {
      v16 = 0;
    }

    if (a3 == 2000)
    {
      v16 = 2000;
    }

    if (a3 <= 2199)
    {
      v6 = v16;
    }

    v9 = a3 <= 2399;
    goto LABEL_132;
  }

  switch(a3)
  {
    case 0x76CuLL:
    case 0x76DuLL:
    case 0x76EuLL:
    case 0x76FuLL:
    case 0x770uLL:
    case 0x771uLL:
    case 0x772uLL:
    case 0x773uLL:
    case 0x774uLL:
    case 0x775uLL:
    case 0x776uLL:
    case 0x777uLL:
    case 0x778uLL:
    case 0x779uLL:
    case 0x77AuLL:
    case 0x77BuLL:
LABEL_8:
      result = a3;
      break;
    case 0x77CuLL:
      result = 1917;
      break;
    case 0x77DuLL:
      result = 1918;
      break;
    case 0x77EuLL:
      result = 1919;
      break;
    case 0x77FuLL:
      result = 1920;
      break;
    default:
      return result;
  }

  return result;
}

+ (id)zeroScorePSIGroupFromLabel:(id)a3 type:(unint64_t)a4 identifier:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = -[PSIGroup initWithContentString:lookupIdentifier:category:score:]([PSIGroup alloc], "initWithContentString:lookupIdentifier:category:score:", v9, v8, [a1 _indexCategoryForSearchEntityType:a4], 0.0);

  return v10;
}

+ (id)_lookupIdentifierForSearchEntity:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  v5 = 0;
  if (v4 > 1519)
  {
    if (v4 > 1599)
    {
      if (v4 == 1600)
      {
        v6 = [v3 identifier];
        v21 = [v6 integerValue];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%lu", @"meaning", v21];
        v5 = LABEL_24:;

        goto LABEL_30;
      }

      if (v4 != 2500)
      {
        if (v4 != 2600)
        {
          goto LABEL_30;
        }

        v12 = [v3 identifier];
        v13 = [v12 integerValue];

        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%u", @"humanAction", v13];
        goto LABEL_29;
      }

      v19 = [v3 identifier];
      v8 = [v19 integerValue];

      v9 = MEMORY[0x1E696AEC0];
      v10 = @"audio";
    }

    else
    {
      switch(v4)
      {
        case 1520:
          v16 = [v3 identifier];
          v8 = [v16 integerValue];

          v9 = MEMORY[0x1E696AEC0];
          v10 = @"privateEncryptedComputeKGID";
          break;
        case 1530:
          v17 = [v3 identifier];
          v8 = [v17 integerValue];

          v9 = MEMORY[0x1E696AEC0];
          v10 = @"privateEncryptedComputeMUID";
          break;
        case 1540:
          v7 = [v3 identifier];
          v8 = [v7 integerValue];

          v9 = MEMORY[0x1E696AEC0];
          v10 = @"privateEncryptedComputeAMP";
          break;
        default:
          goto LABEL_30;
      }
    }

    goto LABEL_28;
  }

  if (v4 > 1329)
  {
    switch(v4)
    {
      case 1330:
        goto LABEL_20;
      case 1500:
        v18 = [v3 identifier];
        v8 = [v18 integerValue];

        v9 = MEMORY[0x1E696AEC0];
        v10 = @"scene";
        break;
      case 1510:
        v11 = [v3 identifier];
        v8 = [v11 integerValue];

        v9 = MEMORY[0x1E696AEC0];
        v10 = @"parseRichLabel";
        break;
      default:
        goto LABEL_30;
    }

LABEL_28:
    [v9 stringWithFormat:@"%@/%llu", v10, v8];
    goto LABEL_29;
  }

  if (v4 != 1103)
  {
    if (v4 != 1300)
    {
      if (v4 != 1320)
      {
        goto LABEL_30;
      }

      v6 = [v3 identifier];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"contributor", v6];
      goto LABEL_24;
    }

LABEL_20:
    v5 = [v3 identifier];

    goto LABEL_30;
  }

  v14 = [v3 identifier];
  v15 = [v14 integerValue];

  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%lu", @"season", v15];
  v5 = LABEL_29:;
LABEL_30:

  return v5;
}

+ (id)psiGroupFromSearchEntity:(id)a3
{
  v4 = a3;
  v5 = [a1 _indexCategoryForSearchEntityType:{objc_msgSend(v4, "type")}];
  v6 = [a1 _lookupIdentifierForSearchEntity:v4];
  v7 = [PSIGroup alloc];
  v8 = [v4 label];
  [v4 rankingScore];
  v10 = v9;

  v11 = [(PSIGroup *)v7 initWithContentString:v8 lookupIdentifier:v6 category:v5 score:v10];

  return v11;
}

@end