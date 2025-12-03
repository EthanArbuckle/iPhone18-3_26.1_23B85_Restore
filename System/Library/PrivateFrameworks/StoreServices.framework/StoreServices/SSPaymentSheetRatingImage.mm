@interface SSPaymentSheetRatingImage
- (SSPaymentSheetRatingImage)initWithDictionary:(id)dictionary;
- (SSPaymentSheetRatingImage)initWithURLString:(id)string;
- (SSPaymentSheetRatingImage)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)localAssetName;
- (int64_t)_ratingTypeForType:(id)type;
@end

@implementation SSPaymentSheetRatingImage

- (SSPaymentSheetRatingImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SSPaymentSheetRatingImage;
  v5 = [(SSPaymentSheetRatingImage *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    v5->_ratingType = [(SSPaymentSheetRatingImage *)v5 _ratingTypeForType:v6];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    uppercaseString = [v7 uppercaseString];
    v9 = [uppercaseString copy];
    value = v5->_value;
    v5->_value = v9;
  }

  return v5;
}

- (SSPaymentSheetRatingImage)initWithURLString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = SSPaymentSheetRatingImage;
  v5 = [(SSPaymentSheetRatingImage *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    urlString = v5->_urlString;
    v5->_urlString = v6;

    v5->_ratingType = 1;
  }

  return v5;
}

- (id)localAssetName
{
  result = 0;
  ratingType = self->_ratingType;
  if (ratingType > 5)
  {
    switch(ratingType)
    {
      case 6:
        value = self->_value;
        p_value = &self->_value;
        if ([(NSString *)value isEqualToString:@"G"])
        {
          return @"Rating-Movie_NZ_G";
        }

        if ([(NSString *)*p_value isEqualToString:@"PG"])
        {
          return @"Rating-Movie_NZ_PG";
        }

        if ([(NSString *)*p_value isEqualToString:@"M"])
        {
          return @"Rating-Movie_NZ_M";
        }

        if ([(NSString *)*p_value isEqualToString:@"R13"])
        {
          return @"Rating-Movie_NZ_R13";
        }

        if ([(NSString *)*p_value isEqualToString:@"R15"])
        {
          return @"Rating-Movie_NZ_R15";
        }

        if ([(NSString *)*p_value isEqualToString:@"R16"])
        {
          return @"Rating-Movie_NZ_R16";
        }

        if ([(NSString *)*p_value isEqualToString:@"R18"])
        {
          return @"Rating-Movie_NZ_R18";
        }

        if ([(NSString *)*p_value isEqualToString:@"RP13"])
        {
          return @"Rating-Movie_NZ_RP13";
        }

        if ([(NSString *)*p_value isEqualToString:@"RP16"])
        {
          return @"Rating-Movie_NZ_RP16";
        }

        if ([(NSString *)*p_value isEqualToString:@"R"])
        {
          return @"Rating-Movie_NZ_R";
        }

        v11 = *p_value;
        v12 = @"NOT RATED";
        break;
      case 7:
        v8 = self->_value;
        p_value = &self->_value;
        if ([(NSString *)v8 isEqualToString:@"U"])
        {
          return @"Rating-Movie_UK_U";
        }

        if ([(NSString *)*p_value isEqualToString:@"Uc"])
        {
          return 0;
        }

        if ([(NSString *)*p_value isEqualToString:@"PG"])
        {
          return @"Rating-Movie_UK_PG";
        }

        if ([(NSString *)*p_value isEqualToString:@"12"])
        {
          return @"Rating-Movie_UK_12";
        }

        if ([(NSString *)*p_value isEqualToString:@"12A"])
        {
          return @"Rating-Movie_UK_12A";
        }

        if ([(NSString *)*p_value isEqualToString:@"15"])
        {
          return @"Rating-Movie_UK_15";
        }

        if ([(NSString *)*p_value isEqualToString:@"18"])
        {
          return @"Rating-Movie_UK_18";
        }

        if ([(NSString *)*p_value isEqualToString:@"18R"])
        {
          return @"Rating-Movie_UK_R18";
        }

        if ([(NSString *)*p_value isEqualToString:@"E"])
        {
          return 0;
        }

        v11 = *p_value;
        v12 = @"TBC";
        break;
      case 8:
        if ([(NSString *)self->_value isEqualToString:@"TV-Y"])
        {
          return @"Rating-TV_US_Y";
        }

        if ([(NSString *)self->_value isEqualToString:@"TV-Y7"])
        {
          return @"Rating-TV_US_Y7";
        }

        if ([(NSString *)self->_value isEqualToString:@"FV"])
        {
          return @"Rating-TV_US_Y7FV";
        }

        if ([(NSString *)self->_value isEqualToString:@"TV-14"])
        {
          return @"Rating-TV_US_14";
        }

        if ([(NSString *)self->_value isEqualToString:@"TV-G"])
        {
          return @"Rating-TV_US_G";
        }

        if ([(NSString *)self->_value isEqualToString:@"TV-PG"])
        {
          return @"Rating-TV_US_PG";
        }

        if ([(NSString *)self->_value isEqualToString:@"TV-MA"])
        {
          return @"Rating-TV_US_MA";
        }

        if ([(NSString *)self->_value isEqualToString:@"D"])
        {
          return @"Rating-TV_US_D";
        }

        if ([(NSString *)self->_value isEqualToString:@"L"])
        {
          return @"Rating-TV_US_L";
        }

        if ([(NSString *)self->_value isEqualToString:@"S"])
        {
          return @"Rating-TV_US_S";
        }

        v9 = [(NSString *)self->_value isEqualToString:@"V"];
        v10 = @"Rating-TV_US_V";
        goto LABEL_25;
      default:
        return result;
    }

    if (![(NSString *)v11 isEqualToString:v12])
    {
      v13 = @"UNRATED";
LABEL_104:
      [(NSString *)*p_value isEqualToString:v13];
    }

    return 0;
  }

  if (ratingType != 3)
  {
    if (ratingType != 4)
    {
      if (ratingType != 5)
      {
        return result;
      }

      if ([(NSString *)self->_value isEqualToString:@"CLEAN"])
      {
        return @"Rating-RIAA_Clean";
      }

      v9 = [(NSString *)self->_value isEqualToString:@"EXPLICIT"];
      v10 = @"Rating-RIAA_Explicit";
      goto LABEL_25;
    }

    v7 = self->_value;
    p_value = &self->_value;
    if ([(NSString *)v7 isEqualToString:@"G"])
    {
      return @"Rating-MPAA_G";
    }

    if (![(NSString *)*p_value isEqualToString:@"GP"])
    {
      if ([(NSString *)*p_value isEqualToString:@"PG"])
      {
        return @"Rating-MPAA_PG";
      }

      if ([(NSString *)*p_value isEqualToString:@"PG-13"])
      {
        return @"Rating-MPAA_PG13";
      }

      if (![(NSString *)*p_value isEqualToString:@"M"])
      {
        if ([(NSString *)*p_value isEqualToString:@"R"])
        {
          return @"Rating-MPAA_R";
        }

        if ([(NSString *)*p_value isEqualToString:@"NC-17"])
        {
          return @"Rating-MPAA_NC17";
        }

        if ([(NSString *)*p_value isEqualToString:@"UNRATED"])
        {
          return @"Rating-MPAA_Unrated";
        }

        if ([(NSString *)*p_value isEqualToString:@"NR"])
        {
          return @"Rating-MPAA_NR";
        }

        v13 = @"X";
        goto LABEL_104;
      }
    }

    return 0;
  }

  if ([(NSString *)self->_value isEqualToString:@"10"])
  {
    return @"Rating-Brazil_10";
  }

  if ([(NSString *)self->_value isEqualToString:@"12"])
  {
    return @"Rating-Brazil_12";
  }

  if ([(NSString *)self->_value isEqualToString:@"14"])
  {
    return @"Rating-Brazil_14";
  }

  if ([(NSString *)self->_value isEqualToString:@"16"])
  {
    return @"Rating-Brazil_16";
  }

  if ([(NSString *)self->_value isEqualToString:@"18"])
  {
    return @"Rating-Brazil_18";
  }

  v9 = [(NSString *)self->_value isEqualToString:@"L"];
  v10 = @"Rating-Brazil_L";
LABEL_25:
  if (v9)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

- (int64_t)_ratingTypeForType:(id)type
{
  uppercaseString = [type uppercaseString];
  if ([uppercaseString isEqualToString:@"APPS-BRAZIL"])
  {
    v4 = 3;
  }

  else if ([uppercaseString isEqualToString:@"GAMES"] & 1) != 0 || (objc_msgSend(uppercaseString, "isEqualToString:", @"ITUNESGAMES") & 1) != 0 || (objc_msgSend(uppercaseString, "isEqualToString:", @"ITUNES-GAMES"))
  {
    v4 = 2;
  }

  else if ([uppercaseString isEqualToString:@"NZ-OFLC"])
  {
    v4 = 6;
  }

  else if ([uppercaseString isEqualToString:@"BBFC"])
  {
    v4 = 7;
  }

  else if ([uppercaseString isEqualToString:@"MPAA"])
  {
    v4 = 4;
  }

  else if ([uppercaseString isEqualToString:@"RIAA"])
  {
    v4 = 5;
  }

  else if (([uppercaseString isEqualToString:@"TV-US"] & 1) != 0 || (objc_msgSend(uppercaseString, "isEqualToString:", @"US-TV") & 1) != 0 || objc_msgSend(uppercaseString, "isEqualToString:", @"TV"))
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(SSPaymentSheetRatingImage);
  v5->_ratingType = self->_ratingType;
  v6 = [(NSString *)self->_urlString copyWithZone:zone];
  urlString = v5->_urlString;
  v5->_urlString = v6;

  v8 = [(NSString *)self->_value copyWithZone:zone];
  value = v5->_value;
  v5->_value = v8;

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "0", self->_ratingType);
  SSXPCDictionarySetObject(v3, "1", self->_urlString);
  SSXPCDictionarySetObject(v3, "2", self->_value);
  return v3;
}

- (SSPaymentSheetRatingImage)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v14.receiver = self;
    v14.super_class = SSPaymentSheetRatingImage;
    v6 = [(SSPaymentSheetRatingImage *)&v14 init];
    if (v6)
    {
      v6->_ratingType = xpc_dictionary_get_int64(v5, "0");
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "1", v8);
      urlString = v6->_urlString;
      v6->_urlString = v9;

      v11 = objc_opt_class();
      v12 = SSXPCDictionaryCopyObjectWithClass(v5, "2", v11);
      value = v6->_value;
      v6->_value = v12;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end