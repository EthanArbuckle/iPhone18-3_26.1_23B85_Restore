@interface PEGASUSSchemaPEGASUSDomainCards
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSDomainCards)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSDomainCards)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAmpMusicCount:(BOOL)a3;
- (void)setHasAmpVideoCount:(BOOL)a3;
- (void)setHasAppsCount:(BOOL)a3;
- (void)setHasConversionsCount:(BOOL)a3;
- (void)setHasDictionaryCount:(BOOL)a3;
- (void)setHasEdutainmentCount:(BOOL)a3;
- (void)setHasFlightsCount:(BOOL)a3;
- (void)setHasKgCount:(BOOL)a3;
- (void)setHasKgcnCount:(BOOL)a3;
- (void)setHasMapsCount:(BOOL)a3;
- (void)setHasMathCount:(BOOL)a3;
- (void)setHasMediaCount:(BOOL)a3;
- (void)setHasMoviesCount:(BOOL)a3;
- (void)setHasNewsCount:(BOOL)a3;
- (void)setHasPrecomputedWebanswersCount:(BOOL)a3;
- (void)setHasSportsCount:(BOOL)a3;
- (void)setHasStocksCount:(BOOL)a3;
- (void)setHasTvCount:(BOOL)a3;
- (void)setHasVideoCount:(BOOL)a3;
- (void)setHasWeatherCount:(BOOL)a3;
- (void)setHasWebCount:(BOOL)a3;
- (void)setHasWebImagesCount:(BOOL)a3;
- (void)setHasWebVideoCount:(BOOL)a3;
- (void)setHasWritingsCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSDomainCards

- (PEGASUSSchemaPEGASUSDomainCards)initWithDictionary:(id)a3
{
  v4 = a3;
  v56.receiver = self;
  v56.super_class = PEGASUSSchemaPEGASUSDomainCards;
  v5 = [(PEGASUSSchemaPEGASUSDomainCards *)&v56 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"clockCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setClockCount:](v5, "setClockCount:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"dictionaryCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setDictionaryCount:](v5, "setDictionaryCount:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"kgCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setKgCount:](v5, "setKgCount:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"mapsCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setMapsCount:](v5, "setMapsCount:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"mathCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setMathCount:](v5, "setMathCount:", [v10 unsignedIntValue]);
    }

    v48 = v7;
    v11 = [v4 objectForKeyedSubscript:@"mediaCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setMediaCount:](v5, "setMediaCount:", [v11 unsignedIntValue]);
    }

    v44 = v11;
    v12 = v6;
    v13 = [v4 objectForKeyedSubscript:@"moviesCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setMoviesCount:](v5, "setMoviesCount:", [v13 unsignedIntValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"newsCount"];
    objc_opt_class();
    v55 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setNewsCount:](v5, "setNewsCount:", [v14 unsignedIntValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"precomputedWebanswersCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setPrecomputedWebanswersCount:](v5, "setPrecomputedWebanswersCount:", [v15 unsignedIntValue]);
    }

    v42 = v15;
    v16 = [v4 objectForKeyedSubscript:@"sportsCount"];
    objc_opt_class();
    v54 = v16;
    v49 = v12;
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setSportsCount:](v5, "setSportsCount:", [v16 unsignedIntValue]);
    }

    v45 = v10;
    v17 = [v4 objectForKeyedSubscript:@"stocksCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setStocksCount:](v5, "setStocksCount:", [v17 unsignedIntValue]);
    }

    v18 = v9;
    v19 = [v4 objectForKeyedSubscript:@"tvCount"];
    objc_opt_class();
    v53 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setTvCount:](v5, "setTvCount:", [v19 unsignedIntValue]);
    }

    v20 = v8;
    v21 = [v4 objectForKeyedSubscript:@"videoCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setVideoCount:](v5, "setVideoCount:", [v21 unsignedIntValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"weatherCount"];
    objc_opt_class();
    v52 = v22;
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setWeatherCount:](v5, "setWeatherCount:", [v22 unsignedIntValue]);
    }

    v23 = [v4 objectForKeyedSubscript:@"webCount"];
    objc_opt_class();
    v51 = v23;
    v24 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setWebCount:](v5, "setWebCount:", [v51 unsignedIntValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"webImagesCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setWebImagesCount:](v5, "setWebImagesCount:", [v25 unsignedIntValue]);
    }

    v26 = [v4 objectForKeyedSubscript:@"ampVideoCount"];
    objc_opt_class();
    v50 = v26;
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setAmpVideoCount:](v5, "setAmpVideoCount:", [v26 unsignedIntValue]);
    }

    v41 = v17;
    v27 = [v4 objectForKeyedSubscript:@"appsCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setAppsCount:](v5, "setAppsCount:", [v27 unsignedIntValue]);
    }

    v47 = v24;
    v28 = [v4 objectForKeyedSubscript:@"conversionsCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setConversionsCount:](v5, "setConversionsCount:", [v28 unsignedIntValue]);
    }

    v38 = v28;
    v40 = v25;
    v46 = v18;
    v29 = [v4 objectForKeyedSubscript:@"edutainmentCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setEdutainmentCount:](v5, "setEdutainmentCount:", [v29 unsignedIntValue]);
    }

    v30 = [v4 objectForKeyedSubscript:@"kgcnCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setKgcnCount:](v5, "setKgcnCount:", [v30 unsignedIntValue]);
    }

    v31 = [v4 objectForKeyedSubscript:@"webVideoCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setWebVideoCount:](v5, "setWebVideoCount:", [v31 unsignedIntValue]);
    }

    v39 = v27;
    v43 = v13;
    v32 = [v4 objectForKeyedSubscript:@"writingsCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setWritingsCount:](v5, "setWritingsCount:", [v32 unsignedIntValue]);
    }

    v33 = v21;
    v34 = [v4 objectForKeyedSubscript:@"flightsCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setFlightsCount:](v5, "setFlightsCount:", [v34 unsignedIntValue]);
    }

    v35 = [v4 objectForKeyedSubscript:@"ampMusicCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDomainCards setAmpMusicCount:](v5, "setAmpMusicCount:", [v35 unsignedIntValue]);
    }

    v36 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSDomainCards)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSDomainCards *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSDomainCards *)self dictionaryRepresentation];
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
  if ((*&has & 0x1000000) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards ampMusicCount](self, "ampMusicCount")}];
    [v3 setObject:v7 forKeyedSubscript:@"ampMusicCount"];

    has = self->_has;
    if ((*&has & 0x10000) == 0)
    {
LABEL_3:
      if ((*&has & 0x20000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards ampVideoCount](self, "ampVideoCount")}];
  [v3 setObject:v8 forKeyedSubscript:@"ampVideoCount"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_4:
    if ((*&has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards appsCount](self, "appsCount")}];
  [v3 setObject:v9 forKeyedSubscript:@"appsCount"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_5:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards clockCount](self, "clockCount")}];
  [v3 setObject:v10 forKeyedSubscript:@"clockCount"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_6:
    if ((*&has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards conversionsCount](self, "conversionsCount")}];
  [v3 setObject:v11 forKeyedSubscript:@"conversionsCount"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_7:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards dictionaryCount](self, "dictionaryCount")}];
  [v3 setObject:v12 forKeyedSubscript:@"dictionaryCount"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards edutainmentCount](self, "edutainmentCount")}];
  [v3 setObject:v13 forKeyedSubscript:@"edutainmentCount"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards flightsCount](self, "flightsCount")}];
  [v3 setObject:v14 forKeyedSubscript:@"flightsCount"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards kgCount](self, "kgCount")}];
  [v3 setObject:v15 forKeyedSubscript:@"kgCount"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_11:
    if ((*&has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards kgcnCount](self, "kgcnCount")}];
  [v3 setObject:v16 forKeyedSubscript:@"kgcnCount"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards mapsCount](self, "mapsCount")}];
  [v3 setObject:v17 forKeyedSubscript:@"mapsCount"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards mathCount](self, "mathCount")}];
  [v3 setObject:v18 forKeyedSubscript:@"mathCount"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards mediaCount](self, "mediaCount")}];
  [v3 setObject:v19 forKeyedSubscript:@"mediaCount"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards moviesCount](self, "moviesCount")}];
  [v3 setObject:v20 forKeyedSubscript:@"moviesCount"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_16:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards newsCount](self, "newsCount")}];
  [v3 setObject:v21 forKeyedSubscript:@"newsCount"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_17:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards precomputedWebanswersCount](self, "precomputedWebanswersCount")}];
  [v3 setObject:v22 forKeyedSubscript:@"precomputedWebanswersCount"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_18:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards sportsCount](self, "sportsCount")}];
  [v3 setObject:v23 forKeyedSubscript:@"sportsCount"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_19:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards stocksCount](self, "stocksCount")}];
  [v3 setObject:v24 forKeyedSubscript:@"stocksCount"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_20:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards tvCount](self, "tvCount")}];
  [v3 setObject:v25 forKeyedSubscript:@"tvCount"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_21:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards videoCount](self, "videoCount")}];
  [v3 setObject:v26 forKeyedSubscript:@"videoCount"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_22:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards weatherCount](self, "weatherCount")}];
  [v3 setObject:v27 forKeyedSubscript:@"weatherCount"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards webCount](self, "webCount")}];
  [v3 setObject:v28 forKeyedSubscript:@"webCount"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_24:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards webImagesCount](self, "webImagesCount")}];
  [v3 setObject:v29 forKeyedSubscript:@"webImagesCount"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_25:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_53:
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards webVideoCount](self, "webVideoCount")}];
  [v3 setObject:v30 forKeyedSubscript:@"webVideoCount"];

  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_26:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSDomainCards writingsCount](self, "writingsCount")}];
    [v3 setObject:v5 forKeyedSubscript:@"writingsCount"];
  }

LABEL_27:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v3 = 2654435761 * self->_clockCount;
    if ((*&has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_dictionaryCount;
      if ((*&has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_kgCount;
    if ((*&has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_mapsCount;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_mathCount;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_mediaCount;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_moviesCount;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_newsCount;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_precomputedWebanswersCount;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_sportsCount;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_stocksCount;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_tvCount;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_videoCount;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 0x2000) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_weatherCount;
  if ((*&has & 0x4000) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_webCount;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 0x8000) != 0)
  {
    v18 = 2654435761 * self->_webImagesCount;
    if ((*&has & 0x10000) != 0)
    {
LABEL_34:
      v19 = 2654435761 * self->_ampVideoCount;
      if ((*&has & 0x20000) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v18 = 0;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_34;
    }
  }

  v19 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_35:
    v20 = 2654435761 * self->_appsCount;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_46;
  }

LABEL_45:
  v20 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_36:
    v21 = 2654435761 * self->_conversionsCount;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_47;
  }

LABEL_46:
  v21 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_37:
    v22 = 2654435761 * self->_edutainmentCount;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_48;
  }

LABEL_47:
  v22 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_38:
    v23 = 2654435761 * self->_kgcnCount;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_49;
  }

LABEL_48:
  v23 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_39:
    v24 = 2654435761 * self->_webVideoCount;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_50;
  }

LABEL_49:
  v24 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_40:
    v25 = 2654435761 * self->_writingsCount;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_41;
    }

LABEL_51:
    v26 = 0;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_42;
    }

LABEL_52:
    v27 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27;
  }

LABEL_50:
  v25 = 0;
  if ((*&has & 0x800000) == 0)
  {
    goto LABEL_51;
  }

LABEL_41:
  v26 = 2654435761 * self->_flightsCount;
  if ((*&has & 0x1000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_42:
  v27 = 2654435761 * self->_ampMusicCount;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_102;
  }

  has = self->_has;
  v6 = v4[27];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_102;
  }

  if (*&has)
  {
    clockCount = self->_clockCount;
    if (clockCount != [v4 clockCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_102;
  }

  if (v8)
  {
    dictionaryCount = self->_dictionaryCount;
    if (dictionaryCount != [v4 dictionaryCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_102;
  }

  if (v10)
  {
    kgCount = self->_kgCount;
    if (kgCount != [v4 kgCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_102;
  }

  if (v12)
  {
    mapsCount = self->_mapsCount;
    if (mapsCount != [v4 mapsCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_102;
  }

  if (v14)
  {
    mathCount = self->_mathCount;
    if (mathCount != [v4 mathCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_102;
  }

  if (v16)
  {
    mediaCount = self->_mediaCount;
    if (mediaCount != [v4 mediaCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_102;
  }

  if (v18)
  {
    moviesCount = self->_moviesCount;
    if (moviesCount != [v4 moviesCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v20 = (*&has >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_102;
  }

  if (v20)
  {
    newsCount = self->_newsCount;
    if (newsCount != [v4 newsCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v22 = (*&has >> 8) & 1;
  if (v22 != ((v6 >> 8) & 1))
  {
    goto LABEL_102;
  }

  if (v22)
  {
    precomputedWebanswersCount = self->_precomputedWebanswersCount;
    if (precomputedWebanswersCount != [v4 precomputedWebanswersCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v24 = (*&has >> 9) & 1;
  if (v24 != ((v6 >> 9) & 1))
  {
    goto LABEL_102;
  }

  if (v24)
  {
    sportsCount = self->_sportsCount;
    if (sportsCount != [v4 sportsCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v26 = (*&has >> 10) & 1;
  if (v26 != ((v6 >> 10) & 1))
  {
    goto LABEL_102;
  }

  if (v26)
  {
    stocksCount = self->_stocksCount;
    if (stocksCount != [v4 stocksCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v28 = (*&has >> 11) & 1;
  if (v28 != ((v6 >> 11) & 1))
  {
    goto LABEL_102;
  }

  if (v28)
  {
    tvCount = self->_tvCount;
    if (tvCount != [v4 tvCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v30 = (*&has >> 12) & 1;
  if (v30 != ((v6 >> 12) & 1))
  {
    goto LABEL_102;
  }

  if (v30)
  {
    videoCount = self->_videoCount;
    if (videoCount != [v4 videoCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v32 = (*&has >> 13) & 1;
  if (v32 != ((v6 >> 13) & 1))
  {
    goto LABEL_102;
  }

  if (v32)
  {
    weatherCount = self->_weatherCount;
    if (weatherCount != [v4 weatherCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v34 = (*&has >> 14) & 1;
  if (v34 != ((v6 >> 14) & 1))
  {
    goto LABEL_102;
  }

  if (v34)
  {
    webCount = self->_webCount;
    if (webCount != [v4 webCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v36 = (*&has >> 15) & 1;
  if (v36 != ((v6 >> 15) & 1))
  {
    goto LABEL_102;
  }

  if (v36)
  {
    webImagesCount = self->_webImagesCount;
    if (webImagesCount != [v4 webImagesCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v38 = HIWORD(*&has) & 1;
  if (v38 != (HIWORD(v6) & 1))
  {
    goto LABEL_102;
  }

  if (v38)
  {
    ampVideoCount = self->_ampVideoCount;
    if (ampVideoCount != [v4 ampVideoCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v40 = (*&has >> 17) & 1;
  if (v40 != ((v6 >> 17) & 1))
  {
    goto LABEL_102;
  }

  if (v40)
  {
    appsCount = self->_appsCount;
    if (appsCount != [v4 appsCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v42 = (*&has >> 18) & 1;
  if (v42 != ((v6 >> 18) & 1))
  {
    goto LABEL_102;
  }

  if (v42)
  {
    conversionsCount = self->_conversionsCount;
    if (conversionsCount != [v4 conversionsCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v44 = (*&has >> 19) & 1;
  if (v44 != ((v6 >> 19) & 1))
  {
    goto LABEL_102;
  }

  if (v44)
  {
    edutainmentCount = self->_edutainmentCount;
    if (edutainmentCount != [v4 edutainmentCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v46 = (*&has >> 20) & 1;
  if (v46 != ((v6 >> 20) & 1))
  {
    goto LABEL_102;
  }

  if (v46)
  {
    kgcnCount = self->_kgcnCount;
    if (kgcnCount != [v4 kgcnCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v48 = (*&has >> 21) & 1;
  if (v48 != ((v6 >> 21) & 1))
  {
    goto LABEL_102;
  }

  if (v48)
  {
    webVideoCount = self->_webVideoCount;
    if (webVideoCount != [v4 webVideoCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v50 = (*&has >> 22) & 1;
  if (v50 != ((v6 >> 22) & 1))
  {
    goto LABEL_102;
  }

  if (v50)
  {
    writingsCount = self->_writingsCount;
    if (writingsCount != [v4 writingsCount])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v6 = v4[27];
  }

  v52 = (*&has >> 23) & 1;
  if (v52 != ((v6 >> 23) & 1))
  {
    goto LABEL_102;
  }

  if (v52)
  {
    flightsCount = self->_flightsCount;
    if (flightsCount == [v4 flightsCount])
    {
      has = self->_has;
      v6 = v4[27];
      goto LABEL_98;
    }

LABEL_102:
    v56 = 0;
    goto LABEL_103;
  }

LABEL_98:
  v54 = HIBYTE(*&has) & 1;
  if (v54 != (HIBYTE(v6) & 1))
  {
    goto LABEL_102;
  }

  if (v54)
  {
    ampMusicCount = self->_ampMusicCount;
    if (ampMusicCount != [v4 ampMusicCount])
    {
      goto LABEL_102;
    }
  }

  v56 = 1;
LABEL_103:

  return v56;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (*&has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_5:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_15:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_17:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_20:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_21:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_22:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_23:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_24:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_25:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_53:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x1000000) != 0)
  {
LABEL_26:
    PBDataWriterWriteUint32Field();
  }

LABEL_27:
}

- (void)setHasAmpMusicCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasFlightsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasWritingsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasWebVideoCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasKgcnCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasEdutainmentCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasConversionsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasAppsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasAmpVideoCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasWebImagesCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasWebCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasWeatherCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasVideoCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasTvCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasStocksCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasSportsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasPrecomputedWebanswersCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasNewsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasMoviesCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasMediaCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasMathCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasMapsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasKgCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasDictionaryCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end