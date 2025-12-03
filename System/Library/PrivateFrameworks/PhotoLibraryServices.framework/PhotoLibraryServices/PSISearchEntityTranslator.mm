@interface PSISearchEntityTranslator
+ (id)_lookupIdentifierForSearchEntity:(id)entity;
+ (id)psiGroupFromSearchEntity:(id)entity;
+ (id)zeroScorePSIGroupFromLabel:(id)label type:(unint64_t)type identifier:(id)identifier;
+ (unint64_t)_indexCategoryForSearchEntityType:(unint64_t)type;
@end

@implementation PSISearchEntityTranslator

+ (unint64_t)_indexCategoryForSearchEntityType:(unint64_t)type
{
  result = 0;
  if (type <= 1519)
  {
    if (type > 1007)
    {
      if (type <= 1203)
      {
        if (type == 1203)
        {
          v4 = 1203;
        }

        else
        {
          v4 = 0;
        }

        if (type == 1202)
        {
          v4 = 1202;
        }

        if (type == 1201)
        {
          v4 = 1201;
        }

        v12 = 1104;
        if (type == 1200)
        {
          v13 = 1200;
        }

        else
        {
          v13 = 0;
        }

        if (type != 1103)
        {
          v12 = v13;
        }

        if (type <= 1200)
        {
          v4 = v12;
        }

        v6 = 1103;
        if (type != 1102)
        {
          v6 = 0;
        }

        if (type == 1101)
        {
          v6 = 1101;
        }

        if (type == 1100)
        {
          v14 = 1100;
        }

        else
        {
          v14 = 0;
        }

        if (type == 1008)
        {
          v14 = 1008;
        }

        if (type <= 1100)
        {
          v6 = v14;
        }

        v9 = type <= 1102;
      }

      else
      {
        if (type == 1510)
        {
          v4 = 1510;
        }

        else
        {
          v4 = 0;
        }

        if (type == 1500)
        {
          v4 = 1500;
        }

        if (type == 1402)
        {
          v4 = 1402;
        }

        if (type == 1401)
        {
          v5 = 1401;
        }

        else
        {
          v5 = 0;
        }

        if (type == 1400)
        {
          v5 = 1400;
        }

        if (type <= 1401)
        {
          v4 = v5;
        }

        if (type == 1330)
        {
          v6 = 1330;
        }

        else
        {
          v6 = 0;
        }

        if (type == 1320)
        {
          v6 = 1320;
        }

        if (type == 1310)
        {
          v6 = 1310;
        }

        v7 = 1205;
        if (type == 1300)
        {
          v8 = 1300;
        }

        else
        {
          v8 = 0;
        }

        if (type != 1204)
        {
          v7 = v8;
        }

        if (type <= 1309)
        {
          v6 = v7;
        }

        v9 = type <= 1399;
      }
    }

    else
    {
      if (type <= 999)
      {
        switch(type)
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
      if (type == 1007)
      {
        v17 = 1007;
      }

      else
      {
        v17 = 0;
      }

      if (type != 1004)
      {
        v4 = v17;
      }

      if (type == 1003)
      {
        v4 = 1003;
      }

      if (type == 1001)
      {
        v6 = 1001;
      }

      else
      {
        v6 = 0;
      }

      if (type == 1000)
      {
        v6 = 1000;
      }

      v9 = type <= 1002;
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

  if (type <= 1899)
  {
    if (type == 1802)
    {
      v4 = 1802;
    }

    else
    {
      v4 = 0;
    }

    if (type == 1801)
    {
      v4 = 1801;
    }

    if (type == 1800)
    {
      v4 = 1800;
    }

    if (type == 1701)
    {
      v10 = 1701;
    }

    else
    {
      v10 = 0;
    }

    if (type == 1700)
    {
      v10 = 1700;
    }

    if (type <= 1799)
    {
      v4 = v10;
    }

    if (type == 1610)
    {
      v6 = 1610;
    }

    else
    {
      v6 = 0;
    }

    if (type == 1600)
    {
      v6 = 1600;
    }

    if (type == 1540)
    {
      v6 = 1540;
    }

    if (type == 1530)
    {
      v11 = 1530;
    }

    else
    {
      v11 = 0;
    }

    if (type == 1520)
    {
      v11 = 1520;
    }

    if (type <= 1539)
    {
      v6 = v11;
    }

    v9 = type <= 1699;
    goto LABEL_132;
  }

  if (type > 1999)
  {
    if (type == 2600)
    {
      v4 = 2600;
    }

    else
    {
      v4 = 0;
    }

    if (type == 2500)
    {
      v4 = 2500;
    }

    if (type == 2401)
    {
      v15 = 2401;
    }

    else
    {
      v15 = 0;
    }

    if (type == 2400)
    {
      v15 = 2400;
    }

    if (type <= 2499)
    {
      v4 = v15;
    }

    if (type == 2300)
    {
      v6 = 2300;
    }

    else
    {
      v6 = 0;
    }

    if (type == 2200)
    {
      v6 = 2200;
    }

    if (type == 2100)
    {
      v16 = 2100;
    }

    else
    {
      v16 = 0;
    }

    if (type == 2000)
    {
      v16 = 2000;
    }

    if (type <= 2199)
    {
      v6 = v16;
    }

    v9 = type <= 2399;
    goto LABEL_132;
  }

  switch(type)
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
      result = type;
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

+ (id)zeroScorePSIGroupFromLabel:(id)label type:(unint64_t)type identifier:(id)identifier
{
  identifierCopy = identifier;
  labelCopy = label;
  v10 = -[PSIGroup initWithContentString:lookupIdentifier:category:score:]([PSIGroup alloc], "initWithContentString:lookupIdentifier:category:score:", labelCopy, identifierCopy, [self _indexCategoryForSearchEntityType:type], 0.0);

  return v10;
}

+ (id)_lookupIdentifierForSearchEntity:(id)entity
{
  entityCopy = entity;
  type = [entityCopy type];
  identifier9 = 0;
  if (type > 1519)
  {
    if (type > 1599)
    {
      if (type == 1600)
      {
        identifier = [entityCopy identifier];
        integerValue = [identifier integerValue];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%lu", @"meaning", integerValue];
        identifier9 = LABEL_24:;

        goto LABEL_30;
      }

      if (type != 2500)
      {
        if (type != 2600)
        {
          goto LABEL_30;
        }

        identifier2 = [entityCopy identifier];
        integerValue2 = [identifier2 integerValue];

        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%u", @"humanAction", integerValue2];
        goto LABEL_29;
      }

      identifier3 = [entityCopy identifier];
      integerValue3 = [identifier3 integerValue];

      v9 = MEMORY[0x1E696AEC0];
      v10 = @"audio";
    }

    else
    {
      switch(type)
      {
        case 1520:
          identifier4 = [entityCopy identifier];
          integerValue3 = [identifier4 integerValue];

          v9 = MEMORY[0x1E696AEC0];
          v10 = @"privateEncryptedComputeKGID";
          break;
        case 1530:
          identifier5 = [entityCopy identifier];
          integerValue3 = [identifier5 integerValue];

          v9 = MEMORY[0x1E696AEC0];
          v10 = @"privateEncryptedComputeMUID";
          break;
        case 1540:
          identifier6 = [entityCopy identifier];
          integerValue3 = [identifier6 integerValue];

          v9 = MEMORY[0x1E696AEC0];
          v10 = @"privateEncryptedComputeAMP";
          break;
        default:
          goto LABEL_30;
      }
    }

    goto LABEL_28;
  }

  if (type > 1329)
  {
    switch(type)
    {
      case 1330:
        goto LABEL_20;
      case 1500:
        identifier7 = [entityCopy identifier];
        integerValue3 = [identifier7 integerValue];

        v9 = MEMORY[0x1E696AEC0];
        v10 = @"scene";
        break;
      case 1510:
        identifier8 = [entityCopy identifier];
        integerValue3 = [identifier8 integerValue];

        v9 = MEMORY[0x1E696AEC0];
        v10 = @"parseRichLabel";
        break;
      default:
        goto LABEL_30;
    }

LABEL_28:
    [v9 stringWithFormat:@"%@/%llu", v10, integerValue3];
    goto LABEL_29;
  }

  if (type != 1103)
  {
    if (type != 1300)
    {
      if (type != 1320)
      {
        goto LABEL_30;
      }

      identifier = [entityCopy identifier];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"contributor", identifier];
      goto LABEL_24;
    }

LABEL_20:
    identifier9 = [entityCopy identifier];

    goto LABEL_30;
  }

  identifier10 = [entityCopy identifier];
  integerValue4 = [identifier10 integerValue];

  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%lu", @"season", integerValue4];
  identifier9 = LABEL_29:;
LABEL_30:

  return identifier9;
}

+ (id)psiGroupFromSearchEntity:(id)entity
{
  entityCopy = entity;
  v5 = [self _indexCategoryForSearchEntityType:{objc_msgSend(entityCopy, "type")}];
  v6 = [self _lookupIdentifierForSearchEntity:entityCopy];
  v7 = [PSIGroup alloc];
  label = [entityCopy label];
  [entityCopy rankingScore];
  v10 = v9;

  v11 = [(PSIGroup *)v7 initWithContentString:label lookupIdentifier:v6 category:v5 score:v10];

  return v11;
}

@end