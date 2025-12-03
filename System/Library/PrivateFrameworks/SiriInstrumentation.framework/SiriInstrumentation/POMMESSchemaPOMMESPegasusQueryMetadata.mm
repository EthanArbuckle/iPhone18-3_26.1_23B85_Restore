@interface POMMESSchemaPOMMESPegasusQueryMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESPegasusQueryMetadata)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESPegasusQueryMetadata)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasHasCountryCode:(BOOL)code;
- (void)setHasHasLongitude:(BOOL)longitude;
- (void)setHasHasSiriLocale:(BOOL)locale;
- (void)setHasHasStorefront:(BOOL)storefront;
- (void)setHasHeySiriEnabled:(BOOL)enabled;
- (void)setHasInstalledAppsSignatureLength:(BOOL)length;
- (void)setHasIsNavigationMode:(BOOL)mode;
- (void)setHasLocationAgeInSeconds:(BOOL)seconds;
- (void)setHasLocationPreciseStatus:(BOOL)status;
- (void)setHasLocationSource:(BOOL)source;
- (void)setHasMeasurementSystem:(BOOL)system;
- (void)setHasTemperatureScale:(BOOL)scale;
- (void)setHasUiScale:(BOOL)scale;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESPegasusQueryMetadata

- (POMMESSchemaPOMMESPegasusQueryMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = POMMESSchemaPOMMESPegasusQueryMetadata;
  v5 = [(POMMESSchemaPOMMESPegasusQueryMetadata *)&v33 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"hasLatitude"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusQueryMetadata setHasLatitude:](v5, "setHasLatitude:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"hasLongitude"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusQueryMetadata setHasLongitude:](v5, "setHasLongitude:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"hasCountryCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusQueryMetadata setHasCountryCode:](v5, "setHasCountryCode:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"hasStorefront"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusQueryMetadata setHasStorefront:](v5, "setHasStorefront:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"hasSiriLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusQueryMetadata setHasSiriLocale:](v5, "setHasSiriLocale:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"uiScale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 floatValue];
      [(POMMESSchemaPOMMESPegasusQueryMetadata *)v5 setUiScale:?];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isNavigationMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusQueryMetadata setIsNavigationMode:](v5, "setIsNavigationMode:", [v12 BOOLValue]);
    }

    v32 = v6;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"temperatureScale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusQueryMetadata setTemperatureScale:](v5, "setTemperatureScale:", [v13 intValue]);
    }

    v31 = v7;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"measurementSystem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusQueryMetadata setMeasurementSystem:](v5, "setMeasurementSystem:", [v14 intValue]);
    }

    v29 = v9;
    v30 = v8;
    v15 = [dictionaryCopy objectForKeyedSubscript:{@"installedAppsSignatureLength", v14}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusQueryMetadata setInstalledAppsSignatureLength:](v5, "setInstalledAppsSignatureLength:", [v15 unsignedIntValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"storefrontValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(POMMESSchemaPOMMESPegasusQueryMetadata *)v5 setStorefrontValue:v17];
    }

    v28 = v10;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"heySiriEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusQueryMetadata setHeySiriEnabled:](v5, "setHeySiriEnabled:", [v18 BOOLValue]);
    }

    v26 = v13;
    v27 = v11;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"locationAgeInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusQueryMetadata setLocationAgeInSeconds:](v5, "setLocationAgeInSeconds:", [v19 unsignedIntValue]);
    }

    v20 = v12;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"locationSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusQueryMetadata setLocationSource:](v5, "setLocationSource:", [v21 intValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"locationPreciseStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusQueryMetadata setLocationPreciseStatus:](v5, "setLocationPreciseStatus:", [v22 intValue]);
    }

    v23 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESPegasusQueryMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESPegasusQueryMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESPegasusQueryMetadata *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusQueryMetadata hasCountryCode](self, "hasCountryCode")}];
    [dictionary setObject:v5 forKeyedSubscript:@"hasCountryCode"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusQueryMetadata hasLatitude](self, "hasLatitude")}];
  [dictionary setObject:v6 forKeyedSubscript:@"hasLatitude"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusQueryMetadata hasLongitude](self, "hasLongitude")}];
  [dictionary setObject:v7 forKeyedSubscript:@"hasLongitude"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusQueryMetadata hasSiriLocale](self, "hasSiriLocale")}];
  [dictionary setObject:v8 forKeyedSubscript:@"hasSiriLocale"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusQueryMetadata hasStorefront](self, "hasStorefront")}];
  [dictionary setObject:v9 forKeyedSubscript:@"hasStorefront"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusQueryMetadata heySiriEnabled](self, "heySiriEnabled")}];
  [dictionary setObject:v10 forKeyedSubscript:@"heySiriEnabled"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESPegasusQueryMetadata installedAppsSignatureLength](self, "installedAppsSignatureLength")}];
  [dictionary setObject:v11 forKeyedSubscript:@"installedAppsSignatureLength"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusQueryMetadata isNavigationMode](self, "isNavigationMode")}];
  [dictionary setObject:v12 forKeyedSubscript:@"isNavigationMode"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESPegasusQueryMetadata locationAgeInSeconds](self, "locationAgeInSeconds")}];
  [dictionary setObject:v13 forKeyedSubscript:@"locationAgeInSeconds"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_11:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_23:
  locationPreciseStatus = [(POMMESSchemaPOMMESPegasusQueryMetadata *)self locationPreciseStatus];
  v15 = @"POMMESPEGASUSREQUESTLOCATIONPRECISESTATUS_UNKNOWN";
  if (locationPreciseStatus == 1)
  {
    v15 = @"POMMESPEGASUSREQUESTLOCATIONPRECISESTATUS_PRECISE";
  }

  if (locationPreciseStatus == 2)
  {
    v16 = @"POMMESPEGASUSREQUESTLOCATIONPRECISESTATUS_NOT_PRECISE";
  }

  else
  {
    v16 = v15;
  }

  [dictionary setObject:v16 forKeyedSubscript:@"locationPreciseStatus"];
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_29:
  v17 = [(POMMESSchemaPOMMESPegasusQueryMetadata *)self locationSource]- 1;
  if (v17 > 7)
  {
    v18 = @"POMMESPEGASUSREQUESTLOCATIONSOURCE_UNKNOWN";
  }

  else
  {
    v18 = off_1E78E0EA8[v17];
  }

  [dictionary setObject:v18 forKeyedSubscript:@"locationSource"];
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_33:
    v19 = [(POMMESSchemaPOMMESPegasusQueryMetadata *)self measurementSystem]- 1;
    if (v19 > 2)
    {
      v20 = @"MEASUREMENTSYSTEM_UNKNOWN";
    }

    else
    {
      v20 = off_1E78E0EE8[v19];
    }

    [dictionary setObject:v20 forKeyedSubscript:@"measurementSystem"];
  }

LABEL_37:
  if (self->_storefrontValue)
  {
    storefrontValue = [(POMMESSchemaPOMMESPegasusQueryMetadata *)self storefrontValue];
    v22 = [storefrontValue copy];
    [dictionary setObject:v22 forKeyedSubscript:@"storefrontValue"];
  }

  v23 = self->_has;
  if ((v23 & 0x80) != 0)
  {
    temperatureScale = [(POMMESSchemaPOMMESPegasusQueryMetadata *)self temperatureScale];
    v25 = @"TEMPERATURESCALE_UNKNOWN";
    if (temperatureScale == 1)
    {
      v25 = @"TEMPERATURESCALE_CELSIUS";
    }

    if (temperatureScale == 2)
    {
      v26 = @"TEMPERATURESCALE_FAHRENHEIT";
    }

    else
    {
      v26 = v25;
    }

    [dictionary setObject:v26 forKeyedSubscript:@"temperatureScale"];
    v23 = self->_has;
  }

  if ((v23 & 0x20) != 0)
  {
    v27 = MEMORY[0x1E696AD98];
    [(POMMESSchemaPOMMESPegasusQueryMetadata *)self uiScale];
    v28 = [v27 numberWithFloat:?];
    [dictionary setObject:v28 forKeyedSubscript:@"uiScale"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v25 = 2654435761 * self->_hasLatitude;
    if ((has & 2) != 0)
    {
LABEL_3:
      v24 = 2654435761 * self->_hasLongitude;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v25 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v24 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v23 = 2654435761 * self->_hasCountryCode;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v23 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_hasStorefront;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    v7 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

LABEL_15:
  v6 = 0;
  if ((has & 0x10) == 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  v7 = 2654435761 * self->_hasSiriLocale;
  if ((has & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  uiScale = self->_uiScale;
  if (uiScale >= 0.0)
  {
    v9 = uiScale;
  }

  else
  {
    v9 = -uiScale;
  }

  *v2.i64 = floor(v9 + 0.5);
  v10 = (v9 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v3, v2).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

LABEL_18:
  if ((has & 0x40) != 0)
  {
    v13 = 2654435761 * self->_isNavigationMode;
    if ((has & 0x80) != 0)
    {
LABEL_20:
      v14 = 2654435761 * self->_temperatureScale;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_21;
      }

LABEL_25:
      v15 = 0;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v13 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_20;
    }
  }

  v14 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  v15 = 2654435761 * self->_measurementSystem;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_22:
    v16 = 2654435761 * self->_installedAppsSignatureLength;
    goto LABEL_27;
  }

LABEL_26:
  v16 = 0;
LABEL_27:
  v17 = [(NSString *)self->_storefrontValue hash];
  if ((*&self->_has & 0x400) != 0)
  {
    v18 = 2654435761 * self->_heySiriEnabled;
    if ((*&self->_has & 0x800) != 0)
    {
LABEL_29:
      v19 = 2654435761 * self->_locationAgeInSeconds;
      if ((*&self->_has & 0x1000) != 0)
      {
        goto LABEL_30;
      }

LABEL_34:
      v20 = 0;
      if ((*&self->_has & 0x2000) != 0)
      {
        goto LABEL_31;
      }

LABEL_35:
      v21 = 0;
      return v24 ^ v25 ^ v23 ^ v6 ^ v7 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v18 ^ v19 ^ v20 ^ v21 ^ v17;
    }
  }

  else
  {
    v18 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_29;
    }
  }

  v19 = 0;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_34;
  }

LABEL_30:
  v20 = 2654435761 * self->_locationSource;
  if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_35;
  }

LABEL_31:
  v21 = 2654435761 * self->_locationPreciseStatus;
  return v24 ^ v25 ^ v23 ^ v6 ^ v7 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v18 ^ v19 ^ v20 ^ v21 ^ v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_63;
  }

  has = self->_has;
  v6 = equalCopy[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_63;
  }

  if (*&has)
  {
    hasLatitude = self->_hasLatitude;
    if (hasLatitude != [equalCopy hasLatitude])
    {
      goto LABEL_63;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_63;
  }

  if (v8)
  {
    hasLongitude = self->_hasLongitude;
    if (hasLongitude != [equalCopy hasLongitude])
    {
      goto LABEL_63;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_63;
  }

  if (v10)
  {
    hasCountryCode = self->_hasCountryCode;
    if (hasCountryCode != [equalCopy hasCountryCode])
    {
      goto LABEL_63;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_63;
  }

  if (v12)
  {
    hasStorefront = self->_hasStorefront;
    if (hasStorefront != [equalCopy hasStorefront])
    {
      goto LABEL_63;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_63;
  }

  if (v14)
  {
    hasSiriLocale = self->_hasSiriLocale;
    if (hasSiriLocale != [equalCopy hasSiriLocale])
    {
      goto LABEL_63;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_63;
  }

  if (v16)
  {
    uiScale = self->_uiScale;
    [equalCopy uiScale];
    if (uiScale != v18)
    {
      goto LABEL_63;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v19 = (*&has >> 6) & 1;
  if (v19 != ((v6 >> 6) & 1))
  {
    goto LABEL_63;
  }

  if (v19)
  {
    isNavigationMode = self->_isNavigationMode;
    if (isNavigationMode != [equalCopy isNavigationMode])
    {
      goto LABEL_63;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v21 = (*&has >> 7) & 1;
  if (v21 != ((v6 >> 7) & 1))
  {
    goto LABEL_63;
  }

  if (v21)
  {
    temperatureScale = self->_temperatureScale;
    if (temperatureScale != [equalCopy temperatureScale])
    {
      goto LABEL_63;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v23 = (*&has >> 8) & 1;
  if (v23 != ((v6 >> 8) & 1))
  {
    goto LABEL_63;
  }

  if (v23)
  {
    measurementSystem = self->_measurementSystem;
    if (measurementSystem != [equalCopy measurementSystem])
    {
      goto LABEL_63;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v25 = (*&has >> 9) & 1;
  if (v25 != ((v6 >> 9) & 1))
  {
    goto LABEL_63;
  }

  if (v25)
  {
    installedAppsSignatureLength = self->_installedAppsSignatureLength;
    if (installedAppsSignatureLength != [equalCopy installedAppsSignatureLength])
    {
      goto LABEL_63;
    }
  }

  storefrontValue = [(POMMESSchemaPOMMESPegasusQueryMetadata *)self storefrontValue];
  storefrontValue2 = [equalCopy storefrontValue];
  v29 = storefrontValue2;
  if ((storefrontValue != 0) == (storefrontValue2 == 0))
  {

    goto LABEL_63;
  }

  storefrontValue3 = [(POMMESSchemaPOMMESPegasusQueryMetadata *)self storefrontValue];
  if (storefrontValue3)
  {
    v31 = storefrontValue3;
    storefrontValue4 = [(POMMESSchemaPOMMESPegasusQueryMetadata *)self storefrontValue];
    storefrontValue5 = [equalCopy storefrontValue];
    v34 = [storefrontValue4 isEqual:storefrontValue5];

    if (!v34)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v35 = self->_has;
  v36 = (*&v35 >> 10) & 1;
  v37 = equalCopy[32];
  if (v36 != ((v37 >> 10) & 1))
  {
LABEL_63:
    v45 = 0;
    goto LABEL_64;
  }

  if (v36)
  {
    heySiriEnabled = self->_heySiriEnabled;
    if (heySiriEnabled != [equalCopy heySiriEnabled])
    {
      goto LABEL_63;
    }

    v35 = self->_has;
    v37 = equalCopy[32];
  }

  v39 = (*&v35 >> 11) & 1;
  if (v39 != ((v37 >> 11) & 1))
  {
    goto LABEL_63;
  }

  if (v39)
  {
    locationAgeInSeconds = self->_locationAgeInSeconds;
    if (locationAgeInSeconds != [equalCopy locationAgeInSeconds])
    {
      goto LABEL_63;
    }

    v35 = self->_has;
    v37 = equalCopy[32];
  }

  v41 = (*&v35 >> 12) & 1;
  if (v41 != ((v37 >> 12) & 1))
  {
    goto LABEL_63;
  }

  if (v41)
  {
    locationSource = self->_locationSource;
    if (locationSource == [equalCopy locationSource])
    {
      v35 = self->_has;
      v37 = equalCopy[32];
      goto LABEL_59;
    }

    goto LABEL_63;
  }

LABEL_59:
  v43 = (*&v35 >> 13) & 1;
  if (v43 != ((v37 >> 13) & 1))
  {
    goto LABEL_63;
  }

  if (v43)
  {
    locationPreciseStatus = self->_locationPreciseStatus;
    if (locationPreciseStatus != [equalCopy locationPreciseStatus])
    {
      goto LABEL_63;
    }
  }

  v45 = 1;
LABEL_64:

  return v45;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_30:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    PBDataWriterWriteUint32Field();
  }

LABEL_12:
  storefrontValue = [(POMMESSchemaPOMMESPegasusQueryMetadata *)self storefrontValue];

  if (storefrontValue)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 0x400) != 0)
  {
    PBDataWriterWriteBOOLField();
    v6 = self->_has;
    if ((v6 & 0x800) == 0)
    {
LABEL_16:
      if ((v6 & 0x1000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_16;
  }

  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((v6 & 0x1000) == 0)
  {
LABEL_17:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_34:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_18:
    PBDataWriterWriteInt32Field();
  }

LABEL_19:
}

- (void)setHasLocationPreciseStatus:(BOOL)status
{
  if (status)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasLocationSource:(BOOL)source
{
  if (source)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasLocationAgeInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasHeySiriEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasInstalledAppsSignatureLength:(BOOL)length
{
  if (length)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasMeasurementSystem:(BOOL)system
{
  if (system)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasTemperatureScale:(BOOL)scale
{
  if (scale)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsNavigationMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasUiScale:(BOOL)scale
{
  if (scale)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasHasSiriLocale:(BOOL)locale
{
  if (locale)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasHasStorefront:(BOOL)storefront
{
  if (storefront)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasHasCountryCode:(BOOL)code
{
  if (code)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasHasLongitude:(BOOL)longitude
{
  if (longitude)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end