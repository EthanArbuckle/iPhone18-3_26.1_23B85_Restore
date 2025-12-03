@interface INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppUsageCountForEntity10Min:(BOOL)min;
- (void)setHasAppUsageCountForEntity14Days:(BOOL)days;
- (void)setHasAppUsageCountForEntity1Day:(BOOL)day;
- (void)setHasAppUsageCountForEntity1Hr:(BOOL)hr;
- (void)setHasAppUsageCountForEntity28Days:(BOOL)days;
- (void)setHasAppUsageCountForEntity6Hrs:(BOOL)hrs;
- (void)setHasAppUsageCountForEntity7Days:(BOOL)days;
- (void)setHasAppUsageCountForEntityFromSiri10Min:(BOOL)min;
- (void)setHasAppUsageCountForEntityFromSiri14Days:(BOOL)days;
- (void)setHasAppUsageCountForEntityFromSiri1Day:(BOOL)day;
- (void)setHasAppUsageCountForEntityFromSiri1Hr:(BOOL)hr;
- (void)setHasAppUsageCountForEntityFromSiri28Days:(BOOL)days;
- (void)setHasAppUsageCountForEntityFromSiri2Min:(BOOL)min;
- (void)setHasAppUsageCountForEntityFromSiri6Hrs:(BOOL)hrs;
- (void)setHasAppUsageCountForEntityFromSiri7Days:(BOOL)days;
- (void)setHasAppUsageCountForEntityFromSiriInf:(BOOL)inf;
- (void)setHasAppUsageCountForEntityInf:(BOOL)inf;
- (void)setHasRecencyOrderOfAppUsageForEntityFromSiri:(BOOL)siri;
- (void)setHasRecencyOrderOfAppUsedForEntity:(BOOL)entity;
- (void)setHasTaskAbandonCountForEntityInUsingApp10Min:(BOOL)min;
- (void)setHasTaskAbandonCountForEntityInUsingApp14Days:(BOOL)days;
- (void)setHasTaskAbandonCountForEntityInUsingApp1Day:(BOOL)day;
- (void)setHasTaskAbandonCountForEntityInUsingApp1Hr:(BOOL)hr;
- (void)setHasTaskAbandonCountForEntityInUsingApp28Days:(BOOL)days;
- (void)setHasTaskAbandonCountForEntityInUsingApp2Min:(BOOL)min;
- (void)setHasTaskAbandonCountForEntityInUsingApp6Hrs:(BOOL)hrs;
- (void)setHasTaskAbandonCountForEntityInUsingApp7Days:(BOOL)days;
- (void)setHasTaskAbandonCountForEntityInUsingAppInf:(BOOL)inf;
- (void)setHasTimeSinceAppUsedForEntityFromSiriInSec:(BOOL)sec;
- (void)setHasTimeSinceAppUsedForEntityInSec:(BOOL)sec;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals

- (INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v68.receiver = self;
  v68.super_class = INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals;
  v5 = [(INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals *)&v68 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntity2Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntity2Min:](v5, "setAppUsageCountForEntity2Min:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntity10Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntity10Min:](v5, "setAppUsageCountForEntity10Min:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntity1Hr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntity1Hr:](v5, "setAppUsageCountForEntity1Hr:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntity6Hrs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntity6Hrs:](v5, "setAppUsageCountForEntity6Hrs:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntity1Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntity1Day:](v5, "setAppUsageCountForEntity1Day:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntity7Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntity7Days:](v5, "setAppUsageCountForEntity7Days:", [v11 intValue]);
    }

    v57 = v6;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntity14Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntity14Days:](v5, "setAppUsageCountForEntity14Days:", [v12 intValue]);
    }

    v51 = v12;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntity28Days"];
    objc_opt_class();
    v67 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntity28Days:](v5, "setAppUsageCountForEntity28Days:", [v13 intValue]);
    }

    v14 = v10;
    v56 = v7;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntityInf"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntityInf:](v5, "setAppUsageCountForEntityInf:", [v15 intValue]);
    }

    v16 = v9;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"recencyOrderOfAppUsedForEntity"];
    objc_opt_class();
    v66 = v17;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setRecencyOrderOfAppUsedForEntity:](v5, "setRecencyOrderOfAppUsedForEntity:", [v17 intValue]);
    }

    v18 = v8;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceAppUsedForEntityInSec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setTimeSinceAppUsedForEntityInSec:](v5, "setTimeSinceAppUsedForEntityInSec:", [v19 longLongValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntityFromSiri2Min"];
    objc_opt_class();
    v65 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntityFromSiri2Min:](v5, "setAppUsageCountForEntityFromSiri2Min:", [v20 intValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntityFromSiri10Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntityFromSiri10Min:](v5, "setAppUsageCountForEntityFromSiri10Min:", [v21 intValue]);
    }

    v48 = v21;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntityFromSiri1Hr"];
    objc_opt_class();
    v64 = v22;
    v55 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntityFromSiri1Hr:](v5, "setAppUsageCountForEntityFromSiri1Hr:", [v22 intValue]);
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntityFromSiri6Hrs"];
    objc_opt_class();
    v63 = v23;
    v54 = v16;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntityFromSiri6Hrs:](v5, "setAppUsageCountForEntityFromSiri6Hrs:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntityFromSiri1Day"];
    objc_opt_class();
    v62 = v24;
    v53 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntityFromSiri1Day:](v5, "setAppUsageCountForEntityFromSiri1Day:", [v24 intValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntityFromSiri7Days"];
    objc_opt_class();
    v61 = v25;
    v26 = v11;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntityFromSiri7Days:](v5, "setAppUsageCountForEntityFromSiri7Days:", [v61 intValue]);
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntityFromSiri14Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntityFromSiri14Days:](v5, "setAppUsageCountForEntityFromSiri14Days:", [v27 intValue]);
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntityFromSiri28Days"];
    objc_opt_class();
    v60 = v28;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntityFromSiri28Days:](v5, "setAppUsageCountForEntityFromSiri28Days:", [v28 intValue]);
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"appUsageCountForEntityFromSiriInf"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setAppUsageCountForEntityFromSiriInf:](v5, "setAppUsageCountForEntityFromSiriInf:", [v29 intValue]);
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"recencyOrderOfAppUsageForEntityFromSiri"];
    objc_opt_class();
    v59 = v30;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setRecencyOrderOfAppUsageForEntityFromSiri:](v5, "setRecencyOrderOfAppUsageForEntityFromSiri:", [v30 intValue]);
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceAppUsedForEntityFromSiriInSec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setTimeSinceAppUsedForEntityFromSiriInSec:](v5, "setTimeSinceAppUsedForEntityFromSiriInSec:", [v31 longLongValue]);
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"taskAbandonCountForEntityInUsingApp2Min"];
    objc_opt_class();
    v58 = v32;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setTaskAbandonCountForEntityInUsingApp2Min:](v5, "setTaskAbandonCountForEntityInUsingApp2Min:", [v32 intValue]);
    }

    v50 = v15;
    v33 = [dictionaryCopy objectForKeyedSubscript:@"taskAbandonCountForEntityInUsingApp10Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setTaskAbandonCountForEntityInUsingApp10Min:](v5, "setTaskAbandonCountForEntityInUsingApp10Min:", [v33 intValue]);
    }

    v49 = v19;
    v34 = [dictionaryCopy objectForKeyedSubscript:@"taskAbandonCountForEntityInUsingApp1Hr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setTaskAbandonCountForEntityInUsingApp1Hr:](v5, "setTaskAbandonCountForEntityInUsingApp1Hr:", [v34 intValue]);
    }

    v44 = v34;
    v47 = v29;
    v35 = [dictionaryCopy objectForKeyedSubscript:@"taskAbandonCountForEntityInUsingApp6Hrs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setTaskAbandonCountForEntityInUsingApp6Hrs:](v5, "setTaskAbandonCountForEntityInUsingApp6Hrs:", [v35 intValue]);
    }

    v46 = v31;
    v36 = [dictionaryCopy objectForKeyedSubscript:@"taskAbandonCountForEntityInUsingApp1Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setTaskAbandonCountForEntityInUsingApp1Day:](v5, "setTaskAbandonCountForEntityInUsingApp1Day:", [v36 intValue]);
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"taskAbandonCountForEntityInUsingApp7Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setTaskAbandonCountForEntityInUsingApp7Days:](v5, "setTaskAbandonCountForEntityInUsingApp7Days:", [v37 intValue]);
    }

    v45 = v33;
    v52 = v26;
    v38 = [dictionaryCopy objectForKeyedSubscript:@"taskAbandonCountForEntityInUsingApp14Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setTaskAbandonCountForEntityInUsingApp14Days:](v5, "setTaskAbandonCountForEntityInUsingApp14Days:", [v38 intValue]);
    }

    v39 = v27;
    v40 = [dictionaryCopy objectForKeyedSubscript:@"taskAbandonCountForEntityInUsingApp28Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setTaskAbandonCountForEntityInUsingApp28Days:](v5, "setTaskAbandonCountForEntityInUsingApp28Days:", [v40 intValue]);
    }

    v41 = [dictionaryCopy objectForKeyedSubscript:@"taskAbandonCountForEntityInUsingAppInf"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals setTaskAbandonCountForEntityInUsingAppInf:](v5, "setTaskAbandonCountForEntityInUsingAppInf:", [v41 intValue]);
    }

    v42 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals *)self dictionaryRepresentation];
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
  if ((*&has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntity10Min](self, "appUsageCountForEntity10Min")}];
    [dictionary setObject:v7 forKeyedSubscript:@"appUsageCountForEntity10Min"];

    has = self->_has;
    if ((*&has & 0x40) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((*&has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntity14Days](self, "appUsageCountForEntity14Days")}];
  [dictionary setObject:v8 forKeyedSubscript:@"appUsageCountForEntity14Days"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntity1Day](self, "appUsageCountForEntity1Day")}];
  [dictionary setObject:v9 forKeyedSubscript:@"appUsageCountForEntity1Day"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntity1Hr](self, "appUsageCountForEntity1Hr")}];
  [dictionary setObject:v10 forKeyedSubscript:@"appUsageCountForEntity1Hr"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_6:
    if ((*&has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntity28Days](self, "appUsageCountForEntity28Days")}];
  [dictionary setObject:v11 forKeyedSubscript:@"appUsageCountForEntity28Days"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_7:
    if ((*&has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_41:
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntity2Min](self, "appUsageCountForEntity2Min")}];
  [dictionary setObject:v12 forKeyedSubscript:@"appUsageCountForEntity2Min"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntity6Hrs](self, "appUsageCountForEntity6Hrs")}];
  [dictionary setObject:v13 forKeyedSubscript:@"appUsageCountForEntity6Hrs"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntity7Days](self, "appUsageCountForEntity7Days")}];
  [dictionary setObject:v14 forKeyedSubscript:@"appUsageCountForEntity7Days"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_10:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntityFromSiri10Min](self, "appUsageCountForEntityFromSiri10Min")}];
  [dictionary setObject:v15 forKeyedSubscript:@"appUsageCountForEntityFromSiri10Min"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntityFromSiri14Days](self, "appUsageCountForEntityFromSiri14Days")}];
  [dictionary setObject:v16 forKeyedSubscript:@"appUsageCountForEntityFromSiri14Days"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntityFromSiri1Day](self, "appUsageCountForEntityFromSiri1Day")}];
  [dictionary setObject:v17 forKeyedSubscript:@"appUsageCountForEntityFromSiri1Day"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_47:
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntityFromSiri1Hr](self, "appUsageCountForEntityFromSiri1Hr")}];
  [dictionary setObject:v18 forKeyedSubscript:@"appUsageCountForEntityFromSiri1Hr"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntityFromSiri28Days](self, "appUsageCountForEntityFromSiri28Days")}];
  [dictionary setObject:v19 forKeyedSubscript:@"appUsageCountForEntityFromSiri28Days"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_15:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  v20 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntityFromSiri2Min](self, "appUsageCountForEntityFromSiri2Min")}];
  [dictionary setObject:v20 forKeyedSubscript:@"appUsageCountForEntityFromSiri2Min"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_16:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntityFromSiri6Hrs](self, "appUsageCountForEntityFromSiri6Hrs")}];
  [dictionary setObject:v21 forKeyedSubscript:@"appUsageCountForEntityFromSiri6Hrs"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_17:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntityFromSiri7Days](self, "appUsageCountForEntityFromSiri7Days")}];
  [dictionary setObject:v22 forKeyedSubscript:@"appUsageCountForEntityFromSiri7Days"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_18:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  v23 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntityFromSiriInf](self, "appUsageCountForEntityFromSiriInf")}];
  [dictionary setObject:v23 forKeyedSubscript:@"appUsageCountForEntityFromSiriInf"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_19:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  v24 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals appUsageCountForEntityInf](self, "appUsageCountForEntityInf")}];
  [dictionary setObject:v24 forKeyedSubscript:@"appUsageCountForEntityInf"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_55;
  }

LABEL_54:
  v25 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals recencyOrderOfAppUsageForEntityFromSiri](self, "recencyOrderOfAppUsageForEntityFromSiri")}];
  [dictionary setObject:v25 forKeyedSubscript:@"recencyOrderOfAppUsageForEntityFromSiri"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_21:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_56;
  }

LABEL_55:
  v26 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals recencyOrderOfAppUsedForEntity](self, "recencyOrderOfAppUsedForEntity")}];
  [dictionary setObject:v26 forKeyedSubscript:@"recencyOrderOfAppUsedForEntity"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_57;
  }

LABEL_56:
  v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals taskAbandonCountForEntityInUsingApp10Min](self, "taskAbandonCountForEntityInUsingApp10Min")}];
  [dictionary setObject:v27 forKeyedSubscript:@"taskAbandonCountForEntityInUsingApp10Min"];

  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_58;
  }

LABEL_57:
  v28 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals taskAbandonCountForEntityInUsingApp14Days](self, "taskAbandonCountForEntityInUsingApp14Days")}];
  [dictionary setObject:v28 forKeyedSubscript:@"taskAbandonCountForEntityInUsingApp14Days"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_59;
  }

LABEL_58:
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals taskAbandonCountForEntityInUsingApp1Day](self, "taskAbandonCountForEntityInUsingApp1Day")}];
  [dictionary setObject:v29 forKeyedSubscript:@"taskAbandonCountForEntityInUsingApp1Day"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_60;
  }

LABEL_59:
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals taskAbandonCountForEntityInUsingApp1Hr](self, "taskAbandonCountForEntityInUsingApp1Hr")}];
  [dictionary setObject:v30 forKeyedSubscript:@"taskAbandonCountForEntityInUsingApp1Hr"];

  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_61;
  }

LABEL_60:
  v31 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals taskAbandonCountForEntityInUsingApp28Days](self, "taskAbandonCountForEntityInUsingApp28Days")}];
  [dictionary setObject:v31 forKeyedSubscript:@"taskAbandonCountForEntityInUsingApp28Days"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_27:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_62;
  }

LABEL_61:
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals taskAbandonCountForEntityInUsingApp2Min](self, "taskAbandonCountForEntityInUsingApp2Min")}];
  [dictionary setObject:v32 forKeyedSubscript:@"taskAbandonCountForEntityInUsingApp2Min"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_63;
  }

LABEL_62:
  v33 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals taskAbandonCountForEntityInUsingApp6Hrs](self, "taskAbandonCountForEntityInUsingApp6Hrs")}];
  [dictionary setObject:v33 forKeyedSubscript:@"taskAbandonCountForEntityInUsingApp6Hrs"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_64;
  }

LABEL_63:
  v34 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals taskAbandonCountForEntityInUsingApp7Days](self, "taskAbandonCountForEntityInUsingApp7Days")}];
  [dictionary setObject:v34 forKeyedSubscript:@"taskAbandonCountForEntityInUsingApp7Days"];

  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_65;
  }

LABEL_64:
  v35 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals taskAbandonCountForEntityInUsingAppInf](self, "taskAbandonCountForEntityInUsingAppInf")}];
  [dictionary setObject:v35 forKeyedSubscript:@"taskAbandonCountForEntityInUsingAppInf"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_31:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_65:
  v36 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals timeSinceAppUsedForEntityFromSiriInSec](self, "timeSinceAppUsedForEntityFromSiriInSec")}];
  [dictionary setObject:v36 forKeyedSubscript:@"timeSinceAppUsedForEntityFromSiriInSec"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_32:
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals timeSinceAppUsedForEntityInSec](self, "timeSinceAppUsedForEntityInSec")}];
    [dictionary setObject:v5 forKeyedSubscript:@"timeSinceAppUsedForEntityInSec"];
  }

LABEL_33:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v34 = 2654435761 * self->_appUsageCountForEntity2Min;
    if ((*&has & 2) != 0)
    {
LABEL_3:
      v33 = 2654435761 * self->_appUsageCountForEntity10Min;
      if ((*&has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v34 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v33 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_4:
    v32 = 2654435761 * self->_appUsageCountForEntity1Hr;
    if ((*&has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  v32 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_5:
    v31 = 2654435761 * self->_appUsageCountForEntity6Hrs;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  v31 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_6:
    v30 = 2654435761 * self->_appUsageCountForEntity1Day;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  v30 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_7:
    v3 = 2654435761 * self->_appUsageCountForEntity7Days;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  v3 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_8:
    v4 = 2654435761 * self->_appUsageCountForEntity14Days;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  v4 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_9:
    v5 = 2654435761 * self->_appUsageCountForEntity28Days;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  v5 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_10:
    v6 = 2654435761 * self->_appUsageCountForEntityInf;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  v6 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_11:
    v7 = 2654435761 * self->_recencyOrderOfAppUsedForEntity;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  v7 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_12:
    v8 = 2654435761 * self->_timeSinceAppUsedForEntityInSec;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  v8 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_13:
    v9 = 2654435761 * self->_appUsageCountForEntityFromSiri2Min;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  v9 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_14:
    v10 = 2654435761 * self->_appUsageCountForEntityFromSiri10Min;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  v10 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_15:
    v11 = 2654435761 * self->_appUsageCountForEntityFromSiri1Hr;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  v11 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_16:
    v12 = 2654435761 * self->_appUsageCountForEntityFromSiri6Hrs;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  v12 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_17:
    v13 = 2654435761 * self->_appUsageCountForEntityFromSiri1Day;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  v13 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_18:
    v14 = 2654435761 * self->_appUsageCountForEntityFromSiri7Days;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  v14 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_19:
    v15 = 2654435761 * self->_appUsageCountForEntityFromSiri14Days;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  v15 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_20:
    v16 = 2654435761 * self->_appUsageCountForEntityFromSiri28Days;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  v16 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_21:
    v17 = 2654435761 * self->_appUsageCountForEntityFromSiriInf;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  v17 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_22:
    v18 = 2654435761 * self->_recencyOrderOfAppUsageForEntityFromSiri;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  v18 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_23:
    v19 = 2654435761 * self->_timeSinceAppUsedForEntityFromSiriInSec;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  v19 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_24:
    v20 = 2654435761 * self->_taskAbandonCountForEntityInUsingApp2Min;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  v20 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_25:
    v21 = 2654435761 * self->_taskAbandonCountForEntityInUsingApp10Min;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  v21 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_26:
    v22 = 2654435761 * self->_taskAbandonCountForEntityInUsingApp1Hr;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  v22 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_27:
    v23 = 2654435761 * self->_taskAbandonCountForEntityInUsingApp6Hrs;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  v23 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_28:
    v24 = 2654435761 * self->_taskAbandonCountForEntityInUsingApp1Day;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  v24 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_29:
    v25 = 2654435761 * self->_taskAbandonCountForEntityInUsingApp7Days;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  v25 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_30:
    v26 = 2654435761 * self->_taskAbandonCountForEntityInUsingApp14Days;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_31;
    }

LABEL_62:
    v27 = 0;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_32;
    }

LABEL_63:
    v28 = 0;
    return v33 ^ v34 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
  }

LABEL_61:
  v26 = 0;
  if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_62;
  }

LABEL_31:
  v27 = 2654435761 * self->_taskAbandonCountForEntityInUsingApp28Days;
  if ((*&has & 0x40000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_32:
  v28 = 2654435761 * self->_taskAbandonCountForEntityInUsingAppInf;
  return v33 ^ v34 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_126;
  }

  has = self->_has;
  v6 = equalCopy[35];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_126;
  }

  if (*&has)
  {
    appUsageCountForEntity2Min = self->_appUsageCountForEntity2Min;
    if (appUsageCountForEntity2Min != [equalCopy appUsageCountForEntity2Min])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_126;
  }

  if (v8)
  {
    appUsageCountForEntity10Min = self->_appUsageCountForEntity10Min;
    if (appUsageCountForEntity10Min != [equalCopy appUsageCountForEntity10Min])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_126;
  }

  if (v10)
  {
    appUsageCountForEntity1Hr = self->_appUsageCountForEntity1Hr;
    if (appUsageCountForEntity1Hr != [equalCopy appUsageCountForEntity1Hr])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_126;
  }

  if (v12)
  {
    appUsageCountForEntity6Hrs = self->_appUsageCountForEntity6Hrs;
    if (appUsageCountForEntity6Hrs != [equalCopy appUsageCountForEntity6Hrs])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_126;
  }

  if (v14)
  {
    appUsageCountForEntity1Day = self->_appUsageCountForEntity1Day;
    if (appUsageCountForEntity1Day != [equalCopy appUsageCountForEntity1Day])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_126;
  }

  if (v16)
  {
    appUsageCountForEntity7Days = self->_appUsageCountForEntity7Days;
    if (appUsageCountForEntity7Days != [equalCopy appUsageCountForEntity7Days])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_126;
  }

  if (v18)
  {
    appUsageCountForEntity14Days = self->_appUsageCountForEntity14Days;
    if (appUsageCountForEntity14Days != [equalCopy appUsageCountForEntity14Days])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v20 = (*&has >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_126;
  }

  if (v20)
  {
    appUsageCountForEntity28Days = self->_appUsageCountForEntity28Days;
    if (appUsageCountForEntity28Days != [equalCopy appUsageCountForEntity28Days])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v22 = (*&has >> 8) & 1;
  if (v22 != ((v6 >> 8) & 1))
  {
    goto LABEL_126;
  }

  if (v22)
  {
    appUsageCountForEntityInf = self->_appUsageCountForEntityInf;
    if (appUsageCountForEntityInf != [equalCopy appUsageCountForEntityInf])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v24 = (*&has >> 9) & 1;
  if (v24 != ((v6 >> 9) & 1))
  {
    goto LABEL_126;
  }

  if (v24)
  {
    recencyOrderOfAppUsedForEntity = self->_recencyOrderOfAppUsedForEntity;
    if (recencyOrderOfAppUsedForEntity != [equalCopy recencyOrderOfAppUsedForEntity])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v26 = (*&has >> 10) & 1;
  if (v26 != ((v6 >> 10) & 1))
  {
    goto LABEL_126;
  }

  if (v26)
  {
    timeSinceAppUsedForEntityInSec = self->_timeSinceAppUsedForEntityInSec;
    if (timeSinceAppUsedForEntityInSec != [equalCopy timeSinceAppUsedForEntityInSec])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v28 = (*&has >> 11) & 1;
  if (v28 != ((v6 >> 11) & 1))
  {
    goto LABEL_126;
  }

  if (v28)
  {
    appUsageCountForEntityFromSiri2Min = self->_appUsageCountForEntityFromSiri2Min;
    if (appUsageCountForEntityFromSiri2Min != [equalCopy appUsageCountForEntityFromSiri2Min])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v30 = (*&has >> 12) & 1;
  if (v30 != ((v6 >> 12) & 1))
  {
    goto LABEL_126;
  }

  if (v30)
  {
    appUsageCountForEntityFromSiri10Min = self->_appUsageCountForEntityFromSiri10Min;
    if (appUsageCountForEntityFromSiri10Min != [equalCopy appUsageCountForEntityFromSiri10Min])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v32 = (*&has >> 13) & 1;
  if (v32 != ((v6 >> 13) & 1))
  {
    goto LABEL_126;
  }

  if (v32)
  {
    appUsageCountForEntityFromSiri1Hr = self->_appUsageCountForEntityFromSiri1Hr;
    if (appUsageCountForEntityFromSiri1Hr != [equalCopy appUsageCountForEntityFromSiri1Hr])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v34 = (*&has >> 14) & 1;
  if (v34 != ((v6 >> 14) & 1))
  {
    goto LABEL_126;
  }

  if (v34)
  {
    appUsageCountForEntityFromSiri6Hrs = self->_appUsageCountForEntityFromSiri6Hrs;
    if (appUsageCountForEntityFromSiri6Hrs != [equalCopy appUsageCountForEntityFromSiri6Hrs])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v36 = (*&has >> 15) & 1;
  if (v36 != ((v6 >> 15) & 1))
  {
    goto LABEL_126;
  }

  if (v36)
  {
    appUsageCountForEntityFromSiri1Day = self->_appUsageCountForEntityFromSiri1Day;
    if (appUsageCountForEntityFromSiri1Day != [equalCopy appUsageCountForEntityFromSiri1Day])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v38 = HIWORD(*&has) & 1;
  if (v38 != (HIWORD(v6) & 1))
  {
    goto LABEL_126;
  }

  if (v38)
  {
    appUsageCountForEntityFromSiri7Days = self->_appUsageCountForEntityFromSiri7Days;
    if (appUsageCountForEntityFromSiri7Days != [equalCopy appUsageCountForEntityFromSiri7Days])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v40 = (*&has >> 17) & 1;
  if (v40 != ((v6 >> 17) & 1))
  {
    goto LABEL_126;
  }

  if (v40)
  {
    appUsageCountForEntityFromSiri14Days = self->_appUsageCountForEntityFromSiri14Days;
    if (appUsageCountForEntityFromSiri14Days != [equalCopy appUsageCountForEntityFromSiri14Days])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v42 = (*&has >> 18) & 1;
  if (v42 != ((v6 >> 18) & 1))
  {
    goto LABEL_126;
  }

  if (v42)
  {
    appUsageCountForEntityFromSiri28Days = self->_appUsageCountForEntityFromSiri28Days;
    if (appUsageCountForEntityFromSiri28Days != [equalCopy appUsageCountForEntityFromSiri28Days])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v44 = (*&has >> 19) & 1;
  if (v44 != ((v6 >> 19) & 1))
  {
    goto LABEL_126;
  }

  if (v44)
  {
    appUsageCountForEntityFromSiriInf = self->_appUsageCountForEntityFromSiriInf;
    if (appUsageCountForEntityFromSiriInf != [equalCopy appUsageCountForEntityFromSiriInf])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v46 = (*&has >> 20) & 1;
  if (v46 != ((v6 >> 20) & 1))
  {
    goto LABEL_126;
  }

  if (v46)
  {
    recencyOrderOfAppUsageForEntityFromSiri = self->_recencyOrderOfAppUsageForEntityFromSiri;
    if (recencyOrderOfAppUsageForEntityFromSiri != [equalCopy recencyOrderOfAppUsageForEntityFromSiri])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v48 = (*&has >> 21) & 1;
  if (v48 != ((v6 >> 21) & 1))
  {
    goto LABEL_126;
  }

  if (v48)
  {
    timeSinceAppUsedForEntityFromSiriInSec = self->_timeSinceAppUsedForEntityFromSiriInSec;
    if (timeSinceAppUsedForEntityFromSiriInSec != [equalCopy timeSinceAppUsedForEntityFromSiriInSec])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v50 = (*&has >> 22) & 1;
  if (v50 != ((v6 >> 22) & 1))
  {
    goto LABEL_126;
  }

  if (v50)
  {
    taskAbandonCountForEntityInUsingApp2Min = self->_taskAbandonCountForEntityInUsingApp2Min;
    if (taskAbandonCountForEntityInUsingApp2Min != [equalCopy taskAbandonCountForEntityInUsingApp2Min])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v52 = (*&has >> 23) & 1;
  if (v52 != ((v6 >> 23) & 1))
  {
    goto LABEL_126;
  }

  if (v52)
  {
    taskAbandonCountForEntityInUsingApp10Min = self->_taskAbandonCountForEntityInUsingApp10Min;
    if (taskAbandonCountForEntityInUsingApp10Min != [equalCopy taskAbandonCountForEntityInUsingApp10Min])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v54 = HIBYTE(*&has) & 1;
  if (v54 != (HIBYTE(v6) & 1))
  {
    goto LABEL_126;
  }

  if (v54)
  {
    taskAbandonCountForEntityInUsingApp1Hr = self->_taskAbandonCountForEntityInUsingApp1Hr;
    if (taskAbandonCountForEntityInUsingApp1Hr != [equalCopy taskAbandonCountForEntityInUsingApp1Hr])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v56 = (*&has >> 25) & 1;
  if (v56 != ((v6 >> 25) & 1))
  {
    goto LABEL_126;
  }

  if (v56)
  {
    taskAbandonCountForEntityInUsingApp6Hrs = self->_taskAbandonCountForEntityInUsingApp6Hrs;
    if (taskAbandonCountForEntityInUsingApp6Hrs != [equalCopy taskAbandonCountForEntityInUsingApp6Hrs])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v58 = (*&has >> 26) & 1;
  if (v58 != ((v6 >> 26) & 1))
  {
    goto LABEL_126;
  }

  if (v58)
  {
    taskAbandonCountForEntityInUsingApp1Day = self->_taskAbandonCountForEntityInUsingApp1Day;
    if (taskAbandonCountForEntityInUsingApp1Day != [equalCopy taskAbandonCountForEntityInUsingApp1Day])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v60 = (*&has >> 27) & 1;
  if (v60 != ((v6 >> 27) & 1))
  {
    goto LABEL_126;
  }

  if (v60)
  {
    taskAbandonCountForEntityInUsingApp7Days = self->_taskAbandonCountForEntityInUsingApp7Days;
    if (taskAbandonCountForEntityInUsingApp7Days != [equalCopy taskAbandonCountForEntityInUsingApp7Days])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v62 = (*&has >> 28) & 1;
  if (v62 != ((v6 >> 28) & 1))
  {
    goto LABEL_126;
  }

  if (v62)
  {
    taskAbandonCountForEntityInUsingApp14Days = self->_taskAbandonCountForEntityInUsingApp14Days;
    if (taskAbandonCountForEntityInUsingApp14Days != [equalCopy taskAbandonCountForEntityInUsingApp14Days])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = equalCopy[35];
  }

  v64 = (*&has >> 29) & 1;
  if (v64 != ((v6 >> 29) & 1))
  {
    goto LABEL_126;
  }

  if (v64)
  {
    taskAbandonCountForEntityInUsingApp28Days = self->_taskAbandonCountForEntityInUsingApp28Days;
    if (taskAbandonCountForEntityInUsingApp28Days == [equalCopy taskAbandonCountForEntityInUsingApp28Days])
    {
      has = self->_has;
      v6 = equalCopy[35];
      goto LABEL_122;
    }

LABEL_126:
    v68 = 0;
    goto LABEL_127;
  }

LABEL_122:
  v66 = (*&has >> 30) & 1;
  if (v66 != ((v6 >> 30) & 1))
  {
    goto LABEL_126;
  }

  if (v66)
  {
    taskAbandonCountForEntityInUsingAppInf = self->_taskAbandonCountForEntityInUsingAppInf;
    if (taskAbandonCountForEntityInUsingAppInf != [equalCopy taskAbandonCountForEntityInUsingAppInf])
    {
      goto LABEL_126;
    }
  }

  v68 = 1;
LABEL_127:

  return v68;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_5:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_41:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_47:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_15:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_17:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_20:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_55;
  }

LABEL_54:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_21:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_56;
  }

LABEL_55:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_22:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_57;
  }

LABEL_56:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_23:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_58;
  }

LABEL_57:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_24:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_59;
  }

LABEL_58:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_25:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_60;
  }

LABEL_59:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_61;
  }

LABEL_60:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_62;
  }

LABEL_61:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_63;
  }

LABEL_62:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_64;
  }

LABEL_63:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_65;
  }

LABEL_64:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_65:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x40000000) != 0)
  {
LABEL_32:
    PBDataWriterWriteInt32Field();
  }

LABEL_33:
}

- (void)setHasTaskAbandonCountForEntityInUsingAppInf:(BOOL)inf
{
  if (inf)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xBFFFFFFF | v3);
}

- (void)setHasTaskAbandonCountForEntityInUsingApp28Days:(BOOL)days
{
  if (days)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xDFFFFFFF | v3);
}

- (void)setHasTaskAbandonCountForEntityInUsingApp14Days:(BOOL)days
{
  if (days)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFF | v3);
}

- (void)setHasTaskAbandonCountForEntityInUsingApp7Days:(BOOL)days
{
  if (days)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasTaskAbandonCountForEntityInUsingApp1Day:(BOOL)day
{
  if (day)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasTaskAbandonCountForEntityInUsingApp6Hrs:(BOOL)hrs
{
  if (hrs)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasTaskAbandonCountForEntityInUsingApp1Hr:(BOOL)hr
{
  if (hr)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasTaskAbandonCountForEntityInUsingApp10Min:(BOOL)min
{
  if (min)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasTaskAbandonCountForEntityInUsingApp2Min:(BOOL)min
{
  if (min)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasTimeSinceAppUsedForEntityFromSiriInSec:(BOOL)sec
{
  if (sec)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasRecencyOrderOfAppUsageForEntityFromSiri:(BOOL)siri
{
  if (siri)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasAppUsageCountForEntityFromSiriInf:(BOOL)inf
{
  if (inf)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasAppUsageCountForEntityFromSiri28Days:(BOOL)days
{
  if (days)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasAppUsageCountForEntityFromSiri14Days:(BOOL)days
{
  if (days)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasAppUsageCountForEntityFromSiri7Days:(BOOL)days
{
  if (days)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasAppUsageCountForEntityFromSiri1Day:(BOOL)day
{
  if (day)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasAppUsageCountForEntityFromSiri6Hrs:(BOOL)hrs
{
  if (hrs)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasAppUsageCountForEntityFromSiri1Hr:(BOOL)hr
{
  if (hr)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasAppUsageCountForEntityFromSiri10Min:(BOOL)min
{
  if (min)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasAppUsageCountForEntityFromSiri2Min:(BOOL)min
{
  if (min)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasTimeSinceAppUsedForEntityInSec:(BOOL)sec
{
  if (sec)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasRecencyOrderOfAppUsedForEntity:(BOOL)entity
{
  if (entity)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasAppUsageCountForEntityInf:(BOOL)inf
{
  if (inf)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasAppUsageCountForEntity28Days:(BOOL)days
{
  if (days)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasAppUsageCountForEntity14Days:(BOOL)days
{
  if (days)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasAppUsageCountForEntity7Days:(BOOL)days
{
  if (days)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasAppUsageCountForEntity1Day:(BOOL)day
{
  if (day)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasAppUsageCountForEntity6Hrs:(BOOL)hrs
{
  if (hrs)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasAppUsageCountForEntity1Hr:(BOOL)hr
{
  if (hr)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasAppUsageCountForEntity10Min:(BOOL)min
{
  if (min)
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