@interface GATSchemaGATPnRMetrics
- (BOOL)isEqual:(id)a3;
- (GATSchemaGATPnRMetrics)initWithDictionary:(id)a3;
- (GATSchemaGATPnRMetrics)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasFileCount:(BOOL)a3;
- (void)setHasGenerativeRequestDurationInSeconds:(BOOL)a3;
- (void)setHasGenerativeResultCharactersCount:(BOOL)a3;
- (void)setHasImageCount:(BOOL)a3;
- (void)setHasImageResizingDurationInSeconds:(BOOL)a3;
- (void)setHasImageResizingRateKBsPerSecond:(BOOL)a3;
- (void)setHasLoadScreenContentDurationInSeconds:(BOOL)a3;
- (void)setHasLoadScreenContentRateKBsPerSecond:(BOOL)a3;
- (void)setHasRegisterMediaDurationInSeconds:(BOOL)a3;
- (void)setHasRegisterMediaRateKBsPerSecond:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation GATSchemaGATPnRMetrics

- (GATSchemaGATPnRMetrics)initWithDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = GATSchemaGATPnRMetrics;
  v5 = [(GATSchemaGATPnRMetrics *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"startSiriSessionDurationInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(GATSchemaGATPnRMetrics *)v5 setStartSiriSessionDurationInSeconds:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"generativeRequestDurationInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(GATSchemaGATPnRMetrics *)v5 setGenerativeRequestDurationInSeconds:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"loadScreenContentDurationInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(GATSchemaGATPnRMetrics *)v5 setLoadScreenContentDurationInSeconds:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"imageResizingDurationInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(GATSchemaGATPnRMetrics *)v5 setImageResizingDurationInSeconds:?];
    }

    v10 = [v4 objectForKeyedSubscript:@"registerMediaDurationInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(GATSchemaGATPnRMetrics *)v5 setRegisterMediaDurationInSeconds:?];
    }

    v11 = [v4 objectForKeyedSubscript:{@"loadScreenContentRateKBsPerSecond", v10}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 doubleValue];
      [(GATSchemaGATPnRMetrics *)v5 setLoadScreenContentRateKBsPerSecond:?];
    }

    v12 = [v4 objectForKeyedSubscript:@"registerMediaRateKBsPerSecond"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(GATSchemaGATPnRMetrics *)v5 setRegisterMediaRateKBsPerSecond:?];
    }

    v23 = v6;
    v13 = [v4 objectForKeyedSubscript:@"generativeResultCharactersCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATPnRMetrics setGenerativeResultCharactersCount:](v5, "setGenerativeResultCharactersCount:", [v13 unsignedIntValue]);
    }

    v21 = v9;
    v22 = v7;
    v14 = [v4 objectForKeyedSubscript:@"imageResizingRateKBsPerSecond"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      [(GATSchemaGATPnRMetrics *)v5 setImageResizingRateKBsPerSecond:?];
    }

    v15 = v8;
    v16 = [v4 objectForKeyedSubscript:@"imageCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATPnRMetrics setImageCount:](v5, "setImageCount:", [v16 intValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"fileCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATPnRMetrics setFileCount:](v5, "setFileCount:", [v17 intValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (GATSchemaGATPnRMetrics)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GATSchemaGATPnRMetrics *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GATSchemaGATPnRMetrics *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[GATSchemaGATPnRMetrics fileCount](self, "fileCount")}];
    [v3 setObject:v8 forKeyedSubscript:@"fileCount"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = MEMORY[0x1E696AD98];
  [(GATSchemaGATPnRMetrics *)self generativeRequestDurationInSeconds];
  v10 = [v9 numberWithDouble:?];
  [v3 setObject:v10 forKeyedSubscript:@"generativeRequestDurationInSeconds"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[GATSchemaGATPnRMetrics generativeResultCharactersCount](self, "generativeResultCharactersCount")}];
  [v3 setObject:v11 forKeyedSubscript:@"generativeResultCharactersCount"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[GATSchemaGATPnRMetrics imageCount](self, "imageCount")}];
  [v3 setObject:v12 forKeyedSubscript:@"imageCount"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = MEMORY[0x1E696AD98];
  [(GATSchemaGATPnRMetrics *)self imageResizingDurationInSeconds];
  v14 = [v13 numberWithDouble:?];
  [v3 setObject:v14 forKeyedSubscript:@"imageResizingDurationInSeconds"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v15 = MEMORY[0x1E696AD98];
  [(GATSchemaGATPnRMetrics *)self imageResizingRateKBsPerSecond];
  v16 = [v15 numberWithDouble:?];
  [v3 setObject:v16 forKeyedSubscript:@"imageResizingRateKBsPerSecond"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v17 = MEMORY[0x1E696AD98];
  [(GATSchemaGATPnRMetrics *)self loadScreenContentDurationInSeconds];
  v18 = [v17 numberWithDouble:?];
  [v3 setObject:v18 forKeyedSubscript:@"loadScreenContentDurationInSeconds"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v19 = MEMORY[0x1E696AD98];
  [(GATSchemaGATPnRMetrics *)self loadScreenContentRateKBsPerSecond];
  v20 = [v19 numberWithDouble:?];
  [v3 setObject:v20 forKeyedSubscript:@"loadScreenContentRateKBsPerSecond"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v21 = MEMORY[0x1E696AD98];
  [(GATSchemaGATPnRMetrics *)self registerMediaDurationInSeconds];
  v22 = [v21 numberWithDouble:?];
  [v3 setObject:v22 forKeyedSubscript:@"registerMediaDurationInSeconds"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  v23 = MEMORY[0x1E696AD98];
  [(GATSchemaGATPnRMetrics *)self registerMediaRateKBsPerSecond];
  v24 = [v23 numberWithDouble:?];
  [v3 setObject:v24 forKeyedSubscript:@"registerMediaRateKBsPerSecond"];

  if (*&self->_has)
  {
LABEL_12:
    v5 = MEMORY[0x1E696AD98];
    [(GATSchemaGATPnRMetrics *)self startSiriSessionDurationInSeconds];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:@"startSiriSessionDurationInSeconds"];
  }

LABEL_13:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    startSiriSessionDurationInSeconds = self->_startSiriSessionDurationInSeconds;
    if (startSiriSessionDurationInSeconds < 0.0)
    {
      startSiriSessionDurationInSeconds = -startSiriSessionDurationInSeconds;
    }

    *v2.i64 = floor(startSiriSessionDurationInSeconds + 0.5);
    v7 = (startSiriSessionDurationInSeconds - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((has & 2) != 0)
  {
    generativeRequestDurationInSeconds = self->_generativeRequestDurationInSeconds;
    if (generativeRequestDurationInSeconds < 0.0)
    {
      generativeRequestDurationInSeconds = -generativeRequestDurationInSeconds;
    }

    *v2.i64 = floor(generativeRequestDurationInSeconds + 0.5);
    v11 = (generativeRequestDurationInSeconds - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v12), v3, v2);
    v9 = 2654435761u * *v2.i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((has & 4) != 0)
  {
    loadScreenContentDurationInSeconds = self->_loadScreenContentDurationInSeconds;
    if (loadScreenContentDurationInSeconds < 0.0)
    {
      loadScreenContentDurationInSeconds = -loadScreenContentDurationInSeconds;
    }

    *v2.i64 = floor(loadScreenContentDurationInSeconds + 0.5);
    v15 = (loadScreenContentDurationInSeconds - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v16), v3, v2);
    v13 = 2654435761u * *v2.i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((has & 8) != 0)
  {
    imageResizingDurationInSeconds = self->_imageResizingDurationInSeconds;
    if (imageResizingDurationInSeconds < 0.0)
    {
      imageResizingDurationInSeconds = -imageResizingDurationInSeconds;
    }

    *v2.i64 = floor(imageResizingDurationInSeconds + 0.5);
    v19 = (imageResizingDurationInSeconds - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v20), v3, v2);
    v17 = 2654435761u * *v2.i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((has & 0x10) != 0)
  {
    registerMediaDurationInSeconds = self->_registerMediaDurationInSeconds;
    if (registerMediaDurationInSeconds < 0.0)
    {
      registerMediaDurationInSeconds = -registerMediaDurationInSeconds;
    }

    *v2.i64 = floor(registerMediaDurationInSeconds + 0.5);
    v23 = (registerMediaDurationInSeconds - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v24), v3, v2);
    v21 = 2654435761u * *v2.i64;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabs(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((has & 0x20) != 0)
  {
    loadScreenContentRateKBsPerSecond = self->_loadScreenContentRateKBsPerSecond;
    if (loadScreenContentRateKBsPerSecond < 0.0)
    {
      loadScreenContentRateKBsPerSecond = -loadScreenContentRateKBsPerSecond;
    }

    *v2.i64 = floor(loadScreenContentRateKBsPerSecond + 0.5);
    v27 = (loadScreenContentRateKBsPerSecond - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v28), v3, v2);
    v25 = 2654435761u * *v2.i64;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v25 += v27;
      }
    }

    else
    {
      v25 -= fabs(v27);
    }
  }

  else
  {
    v25 = 0;
  }

  if ((has & 0x40) != 0)
  {
    registerMediaRateKBsPerSecond = self->_registerMediaRateKBsPerSecond;
    if (registerMediaRateKBsPerSecond < 0.0)
    {
      registerMediaRateKBsPerSecond = -registerMediaRateKBsPerSecond;
    }

    *v2.i64 = floor(registerMediaRateKBsPerSecond + 0.5);
    v31 = (registerMediaRateKBsPerSecond - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v32), v3, v2);
    v29 = 2654435761u * *v2.i64;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v29 += v31;
      }
    }

    else
    {
      v29 -= fabs(v31);
    }
  }

  else
  {
    v29 = 0;
  }

  if ((has & 0x80) != 0)
  {
    v33 = 2654435761 * self->_generativeResultCharactersCount;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_59;
    }

LABEL_64:
    v37 = 0;
    goto LABEL_65;
  }

  v33 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_64;
  }

LABEL_59:
  imageResizingRateKBsPerSecond = self->_imageResizingRateKBsPerSecond;
  if (imageResizingRateKBsPerSecond < 0.0)
  {
    imageResizingRateKBsPerSecond = -imageResizingRateKBsPerSecond;
  }

  *v2.i64 = floor(imageResizingRateKBsPerSecond + 0.5);
  v35 = (imageResizingRateKBsPerSecond - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v36.f64[0] = NAN;
  v36.f64[1] = NAN;
  v37 = 2654435761u * *vbslq_s8(vnegq_f64(v36), v3, v2).i64;
  if (v35 >= 0.0)
  {
    if (v35 > 0.0)
    {
      v37 += v35;
    }
  }

  else
  {
    v37 -= fabs(v35);
  }

LABEL_65:
  if ((*&self->_has & 0x200) != 0)
  {
    v38 = 2654435761 * self->_imageCount;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_67;
    }

LABEL_69:
    v39 = 0;
    return v9 ^ v5 ^ v13 ^ v17 ^ v21 ^ v25 ^ v29 ^ v33 ^ v37 ^ v38 ^ v39;
  }

  v38 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_69;
  }

LABEL_67:
  v39 = 2654435761 * self->_fileCount;
  return v9 ^ v5 ^ v13 ^ v17 ^ v21 ^ v25 ^ v29 ^ v33 ^ v37 ^ v38 ^ v39;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  has = self->_has;
  v6 = v4[44];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_46;
  }

  if (*&has)
  {
    startSiriSessionDurationInSeconds = self->_startSiriSessionDurationInSeconds;
    [v4 startSiriSessionDurationInSeconds];
    if (startSiriSessionDurationInSeconds != v8)
    {
      goto LABEL_46;
    }

    has = self->_has;
    v6 = v4[44];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_46;
  }

  if (v9)
  {
    generativeRequestDurationInSeconds = self->_generativeRequestDurationInSeconds;
    [v4 generativeRequestDurationInSeconds];
    if (generativeRequestDurationInSeconds != v11)
    {
      goto LABEL_46;
    }

    has = self->_has;
    v6 = v4[44];
  }

  v12 = (*&has >> 2) & 1;
  if (v12 != ((v6 >> 2) & 1))
  {
    goto LABEL_46;
  }

  if (v12)
  {
    loadScreenContentDurationInSeconds = self->_loadScreenContentDurationInSeconds;
    [v4 loadScreenContentDurationInSeconds];
    if (loadScreenContentDurationInSeconds != v14)
    {
      goto LABEL_46;
    }

    has = self->_has;
    v6 = v4[44];
  }

  v15 = (*&has >> 3) & 1;
  if (v15 != ((v6 >> 3) & 1))
  {
    goto LABEL_46;
  }

  if (v15)
  {
    imageResizingDurationInSeconds = self->_imageResizingDurationInSeconds;
    [v4 imageResizingDurationInSeconds];
    if (imageResizingDurationInSeconds != v17)
    {
      goto LABEL_46;
    }

    has = self->_has;
    v6 = v4[44];
  }

  v18 = (*&has >> 4) & 1;
  if (v18 != ((v6 >> 4) & 1))
  {
    goto LABEL_46;
  }

  if (v18)
  {
    registerMediaDurationInSeconds = self->_registerMediaDurationInSeconds;
    [v4 registerMediaDurationInSeconds];
    if (registerMediaDurationInSeconds != v20)
    {
      goto LABEL_46;
    }

    has = self->_has;
    v6 = v4[44];
  }

  v21 = (*&has >> 5) & 1;
  if (v21 != ((v6 >> 5) & 1))
  {
    goto LABEL_46;
  }

  if (v21)
  {
    loadScreenContentRateKBsPerSecond = self->_loadScreenContentRateKBsPerSecond;
    [v4 loadScreenContentRateKBsPerSecond];
    if (loadScreenContentRateKBsPerSecond != v23)
    {
      goto LABEL_46;
    }

    has = self->_has;
    v6 = v4[44];
  }

  v24 = (*&has >> 6) & 1;
  if (v24 != ((v6 >> 6) & 1))
  {
    goto LABEL_46;
  }

  if (v24)
  {
    registerMediaRateKBsPerSecond = self->_registerMediaRateKBsPerSecond;
    [v4 registerMediaRateKBsPerSecond];
    if (registerMediaRateKBsPerSecond != v26)
    {
      goto LABEL_46;
    }

    has = self->_has;
    v6 = v4[44];
  }

  v27 = (*&has >> 7) & 1;
  if (v27 != ((v6 >> 7) & 1))
  {
    goto LABEL_46;
  }

  if (v27)
  {
    generativeResultCharactersCount = self->_generativeResultCharactersCount;
    if (generativeResultCharactersCount != [v4 generativeResultCharactersCount])
    {
      goto LABEL_46;
    }

    has = self->_has;
    v6 = v4[44];
  }

  v29 = (*&has >> 8) & 1;
  if (v29 != ((v6 >> 8) & 1))
  {
    goto LABEL_46;
  }

  if (v29)
  {
    imageResizingRateKBsPerSecond = self->_imageResizingRateKBsPerSecond;
    [v4 imageResizingRateKBsPerSecond];
    if (imageResizingRateKBsPerSecond != v31)
    {
      goto LABEL_46;
    }

    has = self->_has;
    v6 = v4[44];
  }

  v32 = (*&has >> 9) & 1;
  if (v32 != ((v6 >> 9) & 1))
  {
    goto LABEL_46;
  }

  if (v32)
  {
    imageCount = self->_imageCount;
    if (imageCount == [v4 imageCount])
    {
      has = self->_has;
      v6 = v4[44];
      goto LABEL_42;
    }

LABEL_46:
    v36 = 0;
    goto LABEL_47;
  }

LABEL_42:
  v34 = (*&has >> 10) & 1;
  if (v34 != ((v6 >> 10) & 1))
  {
    goto LABEL_46;
  }

  if (v34)
  {
    fileCount = self->_fileCount;
    if (fileCount != [v4 fileCount])
    {
      goto LABEL_46;
    }
  }

  v36 = 1;
LABEL_47:

  return v36;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    PBDataWriterWriteInt32Field();
  }

LABEL_13:
}

- (void)setHasFileCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasImageCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasImageResizingRateKBsPerSecond:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasGenerativeResultCharactersCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasRegisterMediaRateKBsPerSecond:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasLoadScreenContentRateKBsPerSecond:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasRegisterMediaDurationInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasImageResizingDurationInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasLoadScreenContentDurationInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasGenerativeRequestDurationInSeconds:(BOOL)a3
{
  if (a3)
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