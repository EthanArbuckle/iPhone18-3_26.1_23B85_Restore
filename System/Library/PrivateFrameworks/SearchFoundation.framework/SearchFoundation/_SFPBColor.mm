@interface _SFPBColor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBAppColor)appColor;
- (_SFPBCalendarColor)calendarColor;
- (_SFPBColor)initWithDictionary:(id)dictionary;
- (_SFPBColor)initWithFacade:(id)facade;
- (_SFPBColor)initWithJSON:(id)n;
- (_SFPBGradientColor)gradientColor;
- (_SFPBImageDerivedColor)imageDerivedColor;
- (_SFPBWeatherColor)weatherColor;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setAppColor:(id)color;
- (void)setCalendarColor:(id)color;
- (void)setGradientColor:(id)color;
- (void)setImageDerivedColor:(id)color;
- (void)setWeatherColor:(id)color;
- (void)writeTo:(id)to;
@end

@implementation _SFPBColor

- (_SFPBColor)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBColor *)self init];
  if (v5)
  {
    if ([facadeCopy hasRedComponent])
    {
      v6 = [_SFPBGraphicalFloat alloc];
      [facadeCopy redComponent];
      v7 = [(_SFPBGraphicalFloat *)v6 initWithCGFloat:?];
      [(_SFPBColor *)v5 setRedComponent:v7];
    }

    if ([facadeCopy hasGreenComponent])
    {
      v8 = [_SFPBGraphicalFloat alloc];
      [facadeCopy greenComponent];
      v9 = [(_SFPBGraphicalFloat *)v8 initWithCGFloat:?];
      [(_SFPBColor *)v5 setGreenComponent:v9];
    }

    if ([facadeCopy hasBlueComponent])
    {
      v10 = [_SFPBGraphicalFloat alloc];
      [facadeCopy blueComponent];
      v11 = [(_SFPBGraphicalFloat *)v10 initWithCGFloat:?];
      [(_SFPBColor *)v5 setBlueComponent:v11];
    }

    if ([facadeCopy hasAlphaComponent])
    {
      v12 = [_SFPBGraphicalFloat alloc];
      [facadeCopy alphaComponent];
      v13 = [(_SFPBGraphicalFloat *)v12 initWithCGFloat:?];
      [(_SFPBColor *)v5 setAlphaComponent:v13];
    }

    if ([facadeCopy hasColorTintStyle])
    {
      -[_SFPBColor setColorTintStyle:](v5, "setColorTintStyle:", [facadeCopy colorTintStyle]);
    }

    darkModeColor = [facadeCopy darkModeColor];

    if (darkModeColor)
    {
      v15 = [_SFPBColor alloc];
      darkModeColor2 = [facadeCopy darkModeColor];
      v17 = [(_SFPBColor *)v15 initWithFacade:darkModeColor2];
      [(_SFPBColor *)v5 setDarkModeColor:v17];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[_SFPBCalendarColor alloc] initWithFacade:facadeCopy];
      [(_SFPBColor *)v5 setCalendarColor:v18];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBAppColor alloc] initWithFacade:facadeCopy];
      [(_SFPBColor *)v5 setAppColor:v19];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[_SFPBImageDerivedColor alloc] initWithFacade:facadeCopy];
      [(_SFPBColor *)v5 setImageDerivedColor:v20];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBGradientColor alloc] initWithFacade:facadeCopy];
      [(_SFPBColor *)v5 setGradientColor:v21];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[_SFPBWeatherColor alloc] initWithFacade:facadeCopy];
      [(_SFPBColor *)v5 setWeatherColor:v22];
    }

    v23 = v5;
  }

  return v5;
}

- (_SFPBColor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = _SFPBColor;
  v5 = [(_SFPBColor *)&v33 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"redComponent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v6];
      [(_SFPBColor *)v5 setRedComponent:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"greenComponent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v8];
      [(_SFPBColor *)v5 setGreenComponent:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"blueComponent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v10];
      [(_SFPBColor *)v5 setBlueComponent:v11];
    }

    v31 = v8;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"alphaComponent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v12];
      [(_SFPBColor *)v5 setAlphaComponent:v13];
    }

    v30 = v10;
    v14 = [dictionaryCopy objectForKeyedSubscript:{@"colorTintStyle", v12}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBColor setColorTintStyle:](v5, "setColorTintStyle:", [v14 intValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"darkModeColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[_SFPBColor alloc] initWithDictionary:v15];
      [(_SFPBColor *)v5 setDarkModeColor:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"calendarColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[_SFPBCalendarColor alloc] initWithDictionary:v17];
      [(_SFPBColor *)v5 setCalendarColor:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"appColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[_SFPBAppColor alloc] initWithDictionary:v19];
      [(_SFPBColor *)v5 setAppColor:v20];
    }

    v32 = v6;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"imageDerivedColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[_SFPBImageDerivedColor alloc] initWithDictionary:v21];
      [(_SFPBColor *)v5 setImageDerivedColor:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"gradientColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[_SFPBGradientColor alloc] initWithDictionary:v23];
      [(_SFPBColor *)v5 setGradientColor:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"weatherColor"];
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

- (_SFPBColor)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBColor *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBColor *)self dictionaryRepresentation];
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
  if (self->_alphaComponent)
  {
    alphaComponent = [(_SFPBColor *)self alphaComponent];
    dictionaryRepresentation = [alphaComponent dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"alphaComponent"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"alphaComponent"];
    }
  }

  if (self->_appColor)
  {
    appColor = [(_SFPBColor *)self appColor];
    dictionaryRepresentation2 = [appColor dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"appColor"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"appColor"];
    }
  }

  if (self->_blueComponent)
  {
    blueComponent = [(_SFPBColor *)self blueComponent];
    dictionaryRepresentation3 = [blueComponent dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"blueComponent"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"blueComponent"];
    }
  }

  if (self->_calendarColor)
  {
    calendarColor = [(_SFPBColor *)self calendarColor];
    dictionaryRepresentation4 = [calendarColor dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"calendarColor"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"calendarColor"];
    }
  }

  if (self->_colorTintStyle)
  {
    colorTintStyle = [(_SFPBColor *)self colorTintStyle];
    if (colorTintStyle >= 4)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", colorTintStyle];
    }

    else
    {
      v17 = off_1E7ACE560[colorTintStyle];
    }

    [dictionary setObject:v17 forKeyedSubscript:@"colorTintStyle"];
  }

  if (self->_darkModeColor)
  {
    darkModeColor = [(_SFPBColor *)self darkModeColor];
    dictionaryRepresentation5 = [darkModeColor dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"darkModeColor"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"darkModeColor"];
    }
  }

  if (self->_gradientColor)
  {
    gradientColor = [(_SFPBColor *)self gradientColor];
    dictionaryRepresentation6 = [gradientColor dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"gradientColor"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"gradientColor"];
    }
  }

  if (self->_greenComponent)
  {
    greenComponent = [(_SFPBColor *)self greenComponent];
    dictionaryRepresentation7 = [greenComponent dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"greenComponent"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"greenComponent"];
    }
  }

  if (self->_imageDerivedColor)
  {
    imageDerivedColor = [(_SFPBColor *)self imageDerivedColor];
    dictionaryRepresentation8 = [imageDerivedColor dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"imageDerivedColor"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"imageDerivedColor"];
    }
  }

  if (self->_redComponent)
  {
    redComponent = [(_SFPBColor *)self redComponent];
    dictionaryRepresentation9 = [redComponent dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"redComponent"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"redComponent"];
    }
  }

  if (self->_weatherColor)
  {
    weatherColor = [(_SFPBColor *)self weatherColor];
    dictionaryRepresentation10 = [weatherColor dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"weatherColor"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"weatherColor"];
    }
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  redComponent = [(_SFPBColor *)self redComponent];
  redComponent2 = [equalCopy redComponent];
  if ((redComponent != 0) == (redComponent2 == 0))
  {
    goto LABEL_52;
  }

  redComponent3 = [(_SFPBColor *)self redComponent];
  if (redComponent3)
  {
    v8 = redComponent3;
    redComponent4 = [(_SFPBColor *)self redComponent];
    redComponent5 = [equalCopy redComponent];
    v11 = [redComponent4 isEqual:redComponent5];

    if (!v11)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  redComponent = [(_SFPBColor *)self greenComponent];
  redComponent2 = [equalCopy greenComponent];
  if ((redComponent != 0) == (redComponent2 == 0))
  {
    goto LABEL_52;
  }

  greenComponent = [(_SFPBColor *)self greenComponent];
  if (greenComponent)
  {
    v13 = greenComponent;
    greenComponent2 = [(_SFPBColor *)self greenComponent];
    greenComponent3 = [equalCopy greenComponent];
    v16 = [greenComponent2 isEqual:greenComponent3];

    if (!v16)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  redComponent = [(_SFPBColor *)self blueComponent];
  redComponent2 = [equalCopy blueComponent];
  if ((redComponent != 0) == (redComponent2 == 0))
  {
    goto LABEL_52;
  }

  blueComponent = [(_SFPBColor *)self blueComponent];
  if (blueComponent)
  {
    v18 = blueComponent;
    blueComponent2 = [(_SFPBColor *)self blueComponent];
    blueComponent3 = [equalCopy blueComponent];
    v21 = [blueComponent2 isEqual:blueComponent3];

    if (!v21)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  redComponent = [(_SFPBColor *)self alphaComponent];
  redComponent2 = [equalCopy alphaComponent];
  if ((redComponent != 0) == (redComponent2 == 0))
  {
    goto LABEL_52;
  }

  alphaComponent = [(_SFPBColor *)self alphaComponent];
  if (alphaComponent)
  {
    v23 = alphaComponent;
    alphaComponent2 = [(_SFPBColor *)self alphaComponent];
    alphaComponent3 = [equalCopy alphaComponent];
    v26 = [alphaComponent2 isEqual:alphaComponent3];

    if (!v26)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  colorTintStyle = self->_colorTintStyle;
  if (colorTintStyle != [equalCopy colorTintStyle])
  {
    goto LABEL_53;
  }

  redComponent = [(_SFPBColor *)self darkModeColor];
  redComponent2 = [equalCopy darkModeColor];
  if ((redComponent != 0) == (redComponent2 == 0))
  {
    goto LABEL_52;
  }

  darkModeColor = [(_SFPBColor *)self darkModeColor];
  if (darkModeColor)
  {
    v29 = darkModeColor;
    darkModeColor2 = [(_SFPBColor *)self darkModeColor];
    darkModeColor3 = [equalCopy darkModeColor];
    v32 = [darkModeColor2 isEqual:darkModeColor3];

    if (!v32)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  redComponent = [(_SFPBColor *)self calendarColor];
  redComponent2 = [equalCopy calendarColor];
  if ((redComponent != 0) == (redComponent2 == 0))
  {
    goto LABEL_52;
  }

  calendarColor = [(_SFPBColor *)self calendarColor];
  if (calendarColor)
  {
    v34 = calendarColor;
    calendarColor2 = [(_SFPBColor *)self calendarColor];
    calendarColor3 = [equalCopy calendarColor];
    v37 = [calendarColor2 isEqual:calendarColor3];

    if (!v37)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  redComponent = [(_SFPBColor *)self appColor];
  redComponent2 = [equalCopy appColor];
  if ((redComponent != 0) == (redComponent2 == 0))
  {
    goto LABEL_52;
  }

  appColor = [(_SFPBColor *)self appColor];
  if (appColor)
  {
    v39 = appColor;
    appColor2 = [(_SFPBColor *)self appColor];
    appColor3 = [equalCopy appColor];
    v42 = [appColor2 isEqual:appColor3];

    if (!v42)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  redComponent = [(_SFPBColor *)self imageDerivedColor];
  redComponent2 = [equalCopy imageDerivedColor];
  if ((redComponent != 0) == (redComponent2 == 0))
  {
    goto LABEL_52;
  }

  imageDerivedColor = [(_SFPBColor *)self imageDerivedColor];
  if (imageDerivedColor)
  {
    v44 = imageDerivedColor;
    imageDerivedColor2 = [(_SFPBColor *)self imageDerivedColor];
    imageDerivedColor3 = [equalCopy imageDerivedColor];
    v47 = [imageDerivedColor2 isEqual:imageDerivedColor3];

    if (!v47)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  redComponent = [(_SFPBColor *)self gradientColor];
  redComponent2 = [equalCopy gradientColor];
  if ((redComponent != 0) == (redComponent2 == 0))
  {
    goto LABEL_52;
  }

  gradientColor = [(_SFPBColor *)self gradientColor];
  if (gradientColor)
  {
    v49 = gradientColor;
    gradientColor2 = [(_SFPBColor *)self gradientColor];
    gradientColor3 = [equalCopy gradientColor];
    v52 = [gradientColor2 isEqual:gradientColor3];

    if (!v52)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  redComponent = [(_SFPBColor *)self weatherColor];
  redComponent2 = [equalCopy weatherColor];
  if ((redComponent != 0) == (redComponent2 == 0))
  {
LABEL_52:

    goto LABEL_53;
  }

  weatherColor = [(_SFPBColor *)self weatherColor];
  if (!weatherColor)
  {

LABEL_56:
    v58 = 1;
    goto LABEL_54;
  }

  v54 = weatherColor;
  weatherColor2 = [(_SFPBColor *)self weatherColor];
  weatherColor3 = [equalCopy weatherColor];
  v57 = [weatherColor2 isEqual:weatherColor3];

  if (v57)
  {
    goto LABEL_56;
  }

LABEL_53:
  v58 = 0;
LABEL_54:

  return v58;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  redComponent = [(_SFPBColor *)self redComponent];
  if (redComponent)
  {
    PBDataWriterWriteSubmessage();
  }

  greenComponent = [(_SFPBColor *)self greenComponent];
  if (greenComponent)
  {
    PBDataWriterWriteSubmessage();
  }

  blueComponent = [(_SFPBColor *)self blueComponent];
  if (blueComponent)
  {
    PBDataWriterWriteSubmessage();
  }

  alphaComponent = [(_SFPBColor *)self alphaComponent];
  if (alphaComponent)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBColor *)self colorTintStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  darkModeColor = [(_SFPBColor *)self darkModeColor];
  if (darkModeColor)
  {
    PBDataWriterWriteSubmessage();
  }

  calendarColor = [(_SFPBColor *)self calendarColor];
  if (calendarColor)
  {
    PBDataWriterWriteSubmessage();
  }

  appColor = [(_SFPBColor *)self appColor];
  if (appColor)
  {
    PBDataWriterWriteSubmessage();
  }

  imageDerivedColor = [(_SFPBColor *)self imageDerivedColor];
  if (imageDerivedColor)
  {
    PBDataWriterWriteSubmessage();
  }

  gradientColor = [(_SFPBColor *)self gradientColor];
  if (gradientColor)
  {
    PBDataWriterWriteSubmessage();
  }

  weatherColor = [(_SFPBColor *)self weatherColor];
  if (weatherColor)
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

- (void)setWeatherColor:(id)color
{
  colorCopy = color;
  calendarColor = self->_calendarColor;
  self->_calendarColor = 0;

  appColor = self->_appColor;
  self->_appColor = 0;

  imageDerivedColor = self->_imageDerivedColor;
  self->_imageDerivedColor = 0;

  gradientColor = self->_gradientColor;
  self->_gradientColor = 0;

  v9 = 5;
  if (!colorCopy)
  {
    v9 = 0;
  }

  self->_whichValue = v9;
  weatherColor = self->_weatherColor;
  self->_weatherColor = colorCopy;
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

- (void)setGradientColor:(id)color
{
  colorCopy = color;
  calendarColor = self->_calendarColor;
  self->_calendarColor = 0;

  appColor = self->_appColor;
  self->_appColor = 0;

  imageDerivedColor = self->_imageDerivedColor;
  self->_imageDerivedColor = 0;

  weatherColor = self->_weatherColor;
  self->_weatherColor = 0;

  self->_whichValue = 4 * (colorCopy != 0);
  gradientColor = self->_gradientColor;
  self->_gradientColor = colorCopy;
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

- (void)setImageDerivedColor:(id)color
{
  colorCopy = color;
  calendarColor = self->_calendarColor;
  self->_calendarColor = 0;

  appColor = self->_appColor;
  self->_appColor = 0;

  gradientColor = self->_gradientColor;
  self->_gradientColor = 0;

  weatherColor = self->_weatherColor;
  self->_weatherColor = 0;

  v9 = 3;
  if (!colorCopy)
  {
    v9 = 0;
  }

  self->_whichValue = v9;
  imageDerivedColor = self->_imageDerivedColor;
  self->_imageDerivedColor = colorCopy;
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

- (void)setAppColor:(id)color
{
  colorCopy = color;
  calendarColor = self->_calendarColor;
  self->_calendarColor = 0;

  imageDerivedColor = self->_imageDerivedColor;
  self->_imageDerivedColor = 0;

  gradientColor = self->_gradientColor;
  self->_gradientColor = 0;

  weatherColor = self->_weatherColor;
  self->_weatherColor = 0;

  self->_whichValue = 2 * (colorCopy != 0);
  appColor = self->_appColor;
  self->_appColor = colorCopy;
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

- (void)setCalendarColor:(id)color
{
  colorCopy = color;
  appColor = self->_appColor;
  self->_appColor = 0;

  imageDerivedColor = self->_imageDerivedColor;
  self->_imageDerivedColor = 0;

  gradientColor = self->_gradientColor;
  self->_gradientColor = 0;

  weatherColor = self->_weatherColor;
  self->_weatherColor = 0;

  self->_whichValue = colorCopy != 0;
  calendarColor = self->_calendarColor;
  self->_calendarColor = colorCopy;
}

@end