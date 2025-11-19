@interface _SFPBColor
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBAppColor)appColor;
- (_SFPBCalendarColor)calendarColor;
- (_SFPBColor)initWithDictionary:(id)a3;
- (_SFPBColor)initWithFacade:(id)a3;
- (_SFPBColor)initWithJSON:(id)a3;
- (_SFPBGradientColor)gradientColor;
- (_SFPBImageDerivedColor)imageDerivedColor;
- (_SFPBWeatherColor)weatherColor;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setAppColor:(id)a3;
- (void)setCalendarColor:(id)a3;
- (void)setGradientColor:(id)a3;
- (void)setImageDerivedColor:(id)a3;
- (void)setWeatherColor:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBColor

- (_SFPBColor)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBColor *)self init];
  if (v5)
  {
    if ([v4 hasRedComponent])
    {
      v6 = [_SFPBGraphicalFloat alloc];
      [v4 redComponent];
      v7 = [(_SFPBGraphicalFloat *)v6 initWithCGFloat:?];
      [(_SFPBColor *)v5 setRedComponent:v7];
    }

    if ([v4 hasGreenComponent])
    {
      v8 = [_SFPBGraphicalFloat alloc];
      [v4 greenComponent];
      v9 = [(_SFPBGraphicalFloat *)v8 initWithCGFloat:?];
      [(_SFPBColor *)v5 setGreenComponent:v9];
    }

    if ([v4 hasBlueComponent])
    {
      v10 = [_SFPBGraphicalFloat alloc];
      [v4 blueComponent];
      v11 = [(_SFPBGraphicalFloat *)v10 initWithCGFloat:?];
      [(_SFPBColor *)v5 setBlueComponent:v11];
    }

    if ([v4 hasAlphaComponent])
    {
      v12 = [_SFPBGraphicalFloat alloc];
      [v4 alphaComponent];
      v13 = [(_SFPBGraphicalFloat *)v12 initWithCGFloat:?];
      [(_SFPBColor *)v5 setAlphaComponent:v13];
    }

    if ([v4 hasColorTintStyle])
    {
      -[_SFPBColor setColorTintStyle:](v5, "setColorTintStyle:", [v4 colorTintStyle]);
    }

    v14 = [v4 darkModeColor];

    if (v14)
    {
      v15 = [_SFPBColor alloc];
      v16 = [v4 darkModeColor];
      v17 = [(_SFPBColor *)v15 initWithFacade:v16];
      [(_SFPBColor *)v5 setDarkModeColor:v17];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[_SFPBCalendarColor alloc] initWithFacade:v4];
      [(_SFPBColor *)v5 setCalendarColor:v18];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBAppColor alloc] initWithFacade:v4];
      [(_SFPBColor *)v5 setAppColor:v19];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[_SFPBImageDerivedColor alloc] initWithFacade:v4];
      [(_SFPBColor *)v5 setImageDerivedColor:v20];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBGradientColor alloc] initWithFacade:v4];
      [(_SFPBColor *)v5 setGradientColor:v21];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[_SFPBWeatherColor alloc] initWithFacade:v4];
      [(_SFPBColor *)v5 setWeatherColor:v22];
    }

    v23 = v5;
  }

  return v5;
}

- (_SFPBColor)initWithDictionary:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = _SFPBColor;
  v5 = [(_SFPBColor *)&v33 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"redComponent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v6];
      [(_SFPBColor *)v5 setRedComponent:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"greenComponent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v8];
      [(_SFPBColor *)v5 setGreenComponent:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"blueComponent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v10];
      [(_SFPBColor *)v5 setBlueComponent:v11];
    }

    v31 = v8;
    v12 = [v4 objectForKeyedSubscript:@"alphaComponent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v12];
      [(_SFPBColor *)v5 setAlphaComponent:v13];
    }

    v30 = v10;
    v14 = [v4 objectForKeyedSubscript:{@"colorTintStyle", v12}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBColor setColorTintStyle:](v5, "setColorTintStyle:", [v14 intValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"darkModeColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[_SFPBColor alloc] initWithDictionary:v15];
      [(_SFPBColor *)v5 setDarkModeColor:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"calendarColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[_SFPBCalendarColor alloc] initWithDictionary:v17];
      [(_SFPBColor *)v5 setCalendarColor:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"appColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[_SFPBAppColor alloc] initWithDictionary:v19];
      [(_SFPBColor *)v5 setAppColor:v20];
    }

    v32 = v6;
    v21 = [v4 objectForKeyedSubscript:@"imageDerivedColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[_SFPBImageDerivedColor alloc] initWithDictionary:v21];
      [(_SFPBColor *)v5 setImageDerivedColor:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"gradientColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[_SFPBGradientColor alloc] initWithDictionary:v23];
      [(_SFPBColor *)v5 setGradientColor:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"weatherColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBWeatherColor alloc] initWithDictionary:v25];
      [(_SFPBColor *)v5 setWeatherColor:v26];
    }

    v27 = v5;
  }

  return v5;
}

- (_SFPBColor)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBColor *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBColor *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_alphaComponent)
  {
    v4 = [(_SFPBColor *)self alphaComponent];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"alphaComponent"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"alphaComponent"];
    }
  }

  if (self->_appColor)
  {
    v7 = [(_SFPBColor *)self appColor];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"appColor"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"appColor"];
    }
  }

  if (self->_blueComponent)
  {
    v10 = [(_SFPBColor *)self blueComponent];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"blueComponent"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"blueComponent"];
    }
  }

  if (self->_calendarColor)
  {
    v13 = [(_SFPBColor *)self calendarColor];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"calendarColor"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"calendarColor"];
    }
  }

  if (self->_colorTintStyle)
  {
    v16 = [(_SFPBColor *)self colorTintStyle];
    if (v16 >= 4)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v16];
    }

    else
    {
      v17 = off_1E7ACE560[v16];
    }

    [v3 setObject:v17 forKeyedSubscript:@"colorTintStyle"];
  }

  if (self->_darkModeColor)
  {
    v18 = [(_SFPBColor *)self darkModeColor];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"darkModeColor"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"darkModeColor"];
    }
  }

  if (self->_gradientColor)
  {
    v21 = [(_SFPBColor *)self gradientColor];
    v22 = [v21 dictionaryRepresentation];
    if (v22)
    {
      [v3 setObject:v22 forKeyedSubscript:@"gradientColor"];
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v23 forKeyedSubscript:@"gradientColor"];
    }
  }

  if (self->_greenComponent)
  {
    v24 = [(_SFPBColor *)self greenComponent];
    v25 = [v24 dictionaryRepresentation];
    if (v25)
    {
      [v3 setObject:v25 forKeyedSubscript:@"greenComponent"];
    }

    else
    {
      v26 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v26 forKeyedSubscript:@"greenComponent"];
    }
  }

  if (self->_imageDerivedColor)
  {
    v27 = [(_SFPBColor *)self imageDerivedColor];
    v28 = [v27 dictionaryRepresentation];
    if (v28)
    {
      [v3 setObject:v28 forKeyedSubscript:@"imageDerivedColor"];
    }

    else
    {
      v29 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v29 forKeyedSubscript:@"imageDerivedColor"];
    }
  }

  if (self->_redComponent)
  {
    v30 = [(_SFPBColor *)self redComponent];
    v31 = [v30 dictionaryRepresentation];
    if (v31)
    {
      [v3 setObject:v31 forKeyedSubscript:@"redComponent"];
    }

    else
    {
      v32 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v32 forKeyedSubscript:@"redComponent"];
    }
  }

  if (self->_weatherColor)
  {
    v33 = [(_SFPBColor *)self weatherColor];
    v34 = [v33 dictionaryRepresentation];
    if (v34)
    {
      [v3 setObject:v34 forKeyedSubscript:@"weatherColor"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v35 forKeyedSubscript:@"weatherColor"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBGraphicalFloat *)self->_redComponent hash];
  v4 = [(_SFPBGraphicalFloat *)self->_greenComponent hash];
  v5 = [(_SFPBGraphicalFloat *)self->_blueComponent hash];
  v6 = [(_SFPBGraphicalFloat *)self->_alphaComponent hash];
  v7 = 2654435761 * self->_colorTintStyle;
  v8 = v4 ^ v3 ^ v5 ^ v6 ^ [(_SFPBColor *)self->_darkModeColor hash];
  v9 = v8 ^ [(_SFPBCalendarColor *)self->_calendarColor hash]^ v7;
  v10 = [(_SFPBAppColor *)self->_appColor hash];
  v11 = v10 ^ [(_SFPBImageDerivedColor *)self->_imageDerivedColor hash];
  v12 = v11 ^ [(_SFPBGradientColor *)self->_gradientColor hash];
  return v9 ^ v12 ^ [(_SFPBWeatherColor *)self->_weatherColor hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  v5 = [(_SFPBColor *)self redComponent];
  v6 = [v4 redComponent];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v7 = [(_SFPBColor *)self redComponent];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBColor *)self redComponent];
    v10 = [v4 redComponent];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v5 = [(_SFPBColor *)self greenComponent];
  v6 = [v4 greenComponent];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v12 = [(_SFPBColor *)self greenComponent];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBColor *)self greenComponent];
    v15 = [v4 greenComponent];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v5 = [(_SFPBColor *)self blueComponent];
  v6 = [v4 blueComponent];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v17 = [(_SFPBColor *)self blueComponent];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBColor *)self blueComponent];
    v20 = [v4 blueComponent];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v5 = [(_SFPBColor *)self alphaComponent];
  v6 = [v4 alphaComponent];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v22 = [(_SFPBColor *)self alphaComponent];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBColor *)self alphaComponent];
    v25 = [v4 alphaComponent];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  colorTintStyle = self->_colorTintStyle;
  if (colorTintStyle != [v4 colorTintStyle])
  {
    goto LABEL_53;
  }

  v5 = [(_SFPBColor *)self darkModeColor];
  v6 = [v4 darkModeColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v28 = [(_SFPBColor *)self darkModeColor];
  if (v28)
  {
    v29 = v28;
    v30 = [(_SFPBColor *)self darkModeColor];
    v31 = [v4 darkModeColor];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v5 = [(_SFPBColor *)self calendarColor];
  v6 = [v4 calendarColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v33 = [(_SFPBColor *)self calendarColor];
  if (v33)
  {
    v34 = v33;
    v35 = [(_SFPBColor *)self calendarColor];
    v36 = [v4 calendarColor];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v5 = [(_SFPBColor *)self appColor];
  v6 = [v4 appColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v38 = [(_SFPBColor *)self appColor];
  if (v38)
  {
    v39 = v38;
    v40 = [(_SFPBColor *)self appColor];
    v41 = [v4 appColor];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v5 = [(_SFPBColor *)self imageDerivedColor];
  v6 = [v4 imageDerivedColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v43 = [(_SFPBColor *)self imageDerivedColor];
  if (v43)
  {
    v44 = v43;
    v45 = [(_SFPBColor *)self imageDerivedColor];
    v46 = [v4 imageDerivedColor];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v5 = [(_SFPBColor *)self gradientColor];
  v6 = [v4 gradientColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v48 = [(_SFPBColor *)self gradientColor];
  if (v48)
  {
    v49 = v48;
    v50 = [(_SFPBColor *)self gradientColor];
    v51 = [v4 gradientColor];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v5 = [(_SFPBColor *)self weatherColor];
  v6 = [v4 weatherColor];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_52:

    goto LABEL_53;
  }

  v53 = [(_SFPBColor *)self weatherColor];
  if (!v53)
  {

LABEL_56:
    v58 = 1;
    goto LABEL_54;
  }

  v54 = v53;
  v55 = [(_SFPBColor *)self weatherColor];
  v56 = [v4 weatherColor];
  v57 = [v55 isEqual:v56];

  if (v57)
  {
    goto LABEL_56;
  }

LABEL_53:
  v58 = 0;
LABEL_54:

  return v58;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  v4 = [(_SFPBColor *)self redComponent];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBColor *)self greenComponent];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBColor *)self blueComponent];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBColor *)self alphaComponent];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBColor *)self colorTintStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v8 = [(_SFPBColor *)self darkModeColor];
  if (v8)
  {
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_SFPBColor *)self calendarColor];
  if (v9)
  {
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_SFPBColor *)self appColor];
  if (v10)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_SFPBColor *)self imageDerivedColor];
  if (v11)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_SFPBColor *)self gradientColor];
  if (v12)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_SFPBColor *)self weatherColor];
  if (v13)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (_SFPBWeatherColor)weatherColor
{
  if (self->_whichValue == 5)
  {
    v3 = self->_weatherColor;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setWeatherColor:(id)a3
{
  v4 = a3;
  calendarColor = self->_calendarColor;
  self->_calendarColor = 0;

  appColor = self->_appColor;
  self->_appColor = 0;

  imageDerivedColor = self->_imageDerivedColor;
  self->_imageDerivedColor = 0;

  gradientColor = self->_gradientColor;
  self->_gradientColor = 0;

  v9 = 5;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichValue = v9;
  weatherColor = self->_weatherColor;
  self->_weatherColor = v4;
}

- (_SFPBGradientColor)gradientColor
{
  if (self->_whichValue == 4)
  {
    v3 = self->_gradientColor;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setGradientColor:(id)a3
{
  v4 = a3;
  calendarColor = self->_calendarColor;
  self->_calendarColor = 0;

  appColor = self->_appColor;
  self->_appColor = 0;

  imageDerivedColor = self->_imageDerivedColor;
  self->_imageDerivedColor = 0;

  weatherColor = self->_weatherColor;
  self->_weatherColor = 0;

  self->_whichValue = 4 * (v4 != 0);
  gradientColor = self->_gradientColor;
  self->_gradientColor = v4;
}

- (_SFPBImageDerivedColor)imageDerivedColor
{
  if (self->_whichValue == 3)
  {
    v3 = self->_imageDerivedColor;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setImageDerivedColor:(id)a3
{
  v4 = a3;
  calendarColor = self->_calendarColor;
  self->_calendarColor = 0;

  appColor = self->_appColor;
  self->_appColor = 0;

  gradientColor = self->_gradientColor;
  self->_gradientColor = 0;

  weatherColor = self->_weatherColor;
  self->_weatherColor = 0;

  v9 = 3;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichValue = v9;
  imageDerivedColor = self->_imageDerivedColor;
  self->_imageDerivedColor = v4;
}

- (_SFPBAppColor)appColor
{
  if (self->_whichValue == 2)
  {
    v3 = self->_appColor;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppColor:(id)a3
{
  v4 = a3;
  calendarColor = self->_calendarColor;
  self->_calendarColor = 0;

  imageDerivedColor = self->_imageDerivedColor;
  self->_imageDerivedColor = 0;

  gradientColor = self->_gradientColor;
  self->_gradientColor = 0;

  weatherColor = self->_weatherColor;
  self->_weatherColor = 0;

  self->_whichValue = 2 * (v4 != 0);
  appColor = self->_appColor;
  self->_appColor = v4;
}

- (_SFPBCalendarColor)calendarColor
{
  if (self->_whichValue == 1)
  {
    v3 = self->_calendarColor;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCalendarColor:(id)a3
{
  v4 = a3;
  appColor = self->_appColor;
  self->_appColor = 0;

  imageDerivedColor = self->_imageDerivedColor;
  self->_imageDerivedColor = 0;

  gradientColor = self->_gradientColor;
  self->_gradientColor = 0;

  weatherColor = self->_weatherColor;
  self->_weatherColor = 0;

  self->_whichValue = v4 != 0;
  calendarColor = self->_calendarColor;
  self->_calendarColor = v4;
}

@end