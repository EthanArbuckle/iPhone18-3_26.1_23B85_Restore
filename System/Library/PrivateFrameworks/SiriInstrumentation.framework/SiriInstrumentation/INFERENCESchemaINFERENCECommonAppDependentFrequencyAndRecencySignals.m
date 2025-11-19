@interface INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppUsageCount10Min:(BOOL)a3;
- (void)setHasAppUsageCount14Days:(BOOL)a3;
- (void)setHasAppUsageCount1Day:(BOOL)a3;
- (void)setHasAppUsageCount1Hr:(BOOL)a3;
- (void)setHasAppUsageCount28Days:(BOOL)a3;
- (void)setHasAppUsageCount6Hrs:(BOOL)a3;
- (void)setHasAppUsageCount7Days:(BOOL)a3;
- (void)setHasAppUsageCountFromSiri10Min:(BOOL)a3;
- (void)setHasAppUsageCountFromSiri14Days:(BOOL)a3;
- (void)setHasAppUsageCountFromSiri1Day:(BOOL)a3;
- (void)setHasAppUsageCountFromSiri1Hr:(BOOL)a3;
- (void)setHasAppUsageCountFromSiri28Days:(BOOL)a3;
- (void)setHasAppUsageCountFromSiri2Min:(BOOL)a3;
- (void)setHasAppUsageCountFromSiri6Hrs:(BOOL)a3;
- (void)setHasAppUsageCountFromSiri7Days:(BOOL)a3;
- (void)setHasAppUsageCountFromSiriInf:(BOOL)a3;
- (void)setHasAppUsageCountInf:(BOOL)a3;
- (void)setHasRecencyOrderOfAppUsageFromSiri:(BOOL)a3;
- (void)setHasRecencyOrderOfAppUsed:(BOOL)a3;
- (void)setHasTaskAbandonCountInUsingApp10Min:(BOOL)a3;
- (void)setHasTaskAbandonCountInUsingApp14Days:(BOOL)a3;
- (void)setHasTaskAbandonCountInUsingApp1Day:(BOOL)a3;
- (void)setHasTaskAbandonCountInUsingApp1Hr:(BOOL)a3;
- (void)setHasTaskAbandonCountInUsingApp28Days:(BOOL)a3;
- (void)setHasTaskAbandonCountInUsingApp2Min:(BOOL)a3;
- (void)setHasTaskAbandonCountInUsingApp6Hrs:(BOOL)a3;
- (void)setHasTaskAbandonCountInUsingApp7Days:(BOOL)a3;
- (void)setHasTaskAbandonCountInUsingAppInf:(BOOL)a3;
- (void)setHasTimeSinceAppUsedFromSiriInSec:(BOOL)a3;
- (void)setHasTimeSinceAppUsedInSec:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals

- (INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals)initWithDictionary:(id)a3
{
  v4 = a3;
  v68.receiver = self;
  v68.super_class = INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals;
  v5 = [(INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals *)&v68 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"appUsageCount2Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCount2Min:](v5, "setAppUsageCount2Min:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"appUsageCount10Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCount10Min:](v5, "setAppUsageCount10Min:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"appUsageCount1Hr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCount1Hr:](v5, "setAppUsageCount1Hr:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"appUsageCount6Hrs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCount6Hrs:](v5, "setAppUsageCount6Hrs:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"appUsageCount1Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCount1Day:](v5, "setAppUsageCount1Day:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"appUsageCount7Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCount7Days:](v5, "setAppUsageCount7Days:", [v11 intValue]);
    }

    v57 = v6;
    v12 = [v4 objectForKeyedSubscript:@"appUsageCount14Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCount14Days:](v5, "setAppUsageCount14Days:", [v12 intValue]);
    }

    v51 = v12;
    v13 = [v4 objectForKeyedSubscript:@"appUsageCount28Days"];
    objc_opt_class();
    v67 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCount28Days:](v5, "setAppUsageCount28Days:", [v13 intValue]);
    }

    v14 = v10;
    v56 = v7;
    v15 = [v4 objectForKeyedSubscript:@"appUsageCountInf"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCountInf:](v5, "setAppUsageCountInf:", [v15 intValue]);
    }

    v16 = v9;
    v17 = [v4 objectForKeyedSubscript:@"recencyOrderOfAppUsed"];
    objc_opt_class();
    v66 = v17;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setRecencyOrderOfAppUsed:](v5, "setRecencyOrderOfAppUsed:", [v17 intValue]);
    }

    v18 = v8;
    v19 = [v4 objectForKeyedSubscript:@"timeSinceAppUsedInSec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setTimeSinceAppUsedInSec:](v5, "setTimeSinceAppUsedInSec:", [v19 longLongValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"appUsageCountFromSiri2Min"];
    objc_opt_class();
    v65 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCountFromSiri2Min:](v5, "setAppUsageCountFromSiri2Min:", [v20 intValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"appUsageCountFromSiri10Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCountFromSiri10Min:](v5, "setAppUsageCountFromSiri10Min:", [v21 intValue]);
    }

    v48 = v21;
    v22 = [v4 objectForKeyedSubscript:@"appUsageCountFromSiri1Hr"];
    objc_opt_class();
    v64 = v22;
    v55 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCountFromSiri1Hr:](v5, "setAppUsageCountFromSiri1Hr:", [v22 intValue]);
    }

    v23 = [v4 objectForKeyedSubscript:@"appUsageCountFromSiri6Hrs"];
    objc_opt_class();
    v63 = v23;
    v54 = v16;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCountFromSiri6Hrs:](v5, "setAppUsageCountFromSiri6Hrs:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"appUsageCountFromSiri1Day"];
    objc_opt_class();
    v62 = v24;
    v53 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCountFromSiri1Day:](v5, "setAppUsageCountFromSiri1Day:", [v24 intValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"appUsageCountFromSiri7Days"];
    objc_opt_class();
    v61 = v25;
    v26 = v11;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCountFromSiri7Days:](v5, "setAppUsageCountFromSiri7Days:", [v61 intValue]);
    }

    v27 = [v4 objectForKeyedSubscript:@"appUsageCountFromSiri14Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCountFromSiri14Days:](v5, "setAppUsageCountFromSiri14Days:", [v27 intValue]);
    }

    v28 = [v4 objectForKeyedSubscript:@"appUsageCountFromSiri28Days"];
    objc_opt_class();
    v60 = v28;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCountFromSiri28Days:](v5, "setAppUsageCountFromSiri28Days:", [v28 intValue]);
    }

    v29 = [v4 objectForKeyedSubscript:@"appUsageCountFromSiriInf"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setAppUsageCountFromSiriInf:](v5, "setAppUsageCountFromSiriInf:", [v29 intValue]);
    }

    v30 = [v4 objectForKeyedSubscript:@"recencyOrderOfAppUsageFromSiri"];
    objc_opt_class();
    v59 = v30;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setRecencyOrderOfAppUsageFromSiri:](v5, "setRecencyOrderOfAppUsageFromSiri:", [v30 intValue]);
    }

    v31 = [v4 objectForKeyedSubscript:@"timeSinceAppUsedFromSiriInSec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setTimeSinceAppUsedFromSiriInSec:](v5, "setTimeSinceAppUsedFromSiriInSec:", [v31 longLongValue]);
    }

    v32 = [v4 objectForKeyedSubscript:@"taskAbandonCountInUsingApp2Min"];
    objc_opt_class();
    v58 = v32;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setTaskAbandonCountInUsingApp2Min:](v5, "setTaskAbandonCountInUsingApp2Min:", [v32 intValue]);
    }

    v50 = v15;
    v33 = [v4 objectForKeyedSubscript:@"taskAbandonCountInUsingApp10Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setTaskAbandonCountInUsingApp10Min:](v5, "setTaskAbandonCountInUsingApp10Min:", [v33 intValue]);
    }

    v49 = v19;
    v34 = [v4 objectForKeyedSubscript:@"taskAbandonCountInUsingApp1Hr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setTaskAbandonCountInUsingApp1Hr:](v5, "setTaskAbandonCountInUsingApp1Hr:", [v34 intValue]);
    }

    v44 = v34;
    v47 = v29;
    v35 = [v4 objectForKeyedSubscript:@"taskAbandonCountInUsingApp6Hrs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setTaskAbandonCountInUsingApp6Hrs:](v5, "setTaskAbandonCountInUsingApp6Hrs:", [v35 intValue]);
    }

    v46 = v31;
    v36 = [v4 objectForKeyedSubscript:@"taskAbandonCountInUsingApp1Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setTaskAbandonCountInUsingApp1Day:](v5, "setTaskAbandonCountInUsingApp1Day:", [v36 intValue]);
    }

    v37 = [v4 objectForKeyedSubscript:@"taskAbandonCountInUsingApp7Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setTaskAbandonCountInUsingApp7Days:](v5, "setTaskAbandonCountInUsingApp7Days:", [v37 intValue]);
    }

    v45 = v33;
    v52 = v26;
    v38 = [v4 objectForKeyedSubscript:@"taskAbandonCountInUsingApp14Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setTaskAbandonCountInUsingApp14Days:](v5, "setTaskAbandonCountInUsingApp14Days:", [v38 intValue]);
    }

    v39 = v27;
    v40 = [v4 objectForKeyedSubscript:@"taskAbandonCountInUsingApp28Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setTaskAbandonCountInUsingApp28Days:](v5, "setTaskAbandonCountInUsingApp28Days:", [v40 intValue]);
    }

    v41 = [v4 objectForKeyedSubscript:@"taskAbandonCountInUsingAppInf"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals setTaskAbandonCountInUsingAppInf:](v5, "setTaskAbandonCountInUsingAppInf:", [v41 intValue]);
    }

    v42 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals *)self dictionaryRepresentation];
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
  if ((*&has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCount10Min](self, "appUsageCount10Min")}];
    [v3 setObject:v7 forKeyedSubscript:@"appUsageCount10Min"];

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

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCount14Days](self, "appUsageCount14Days")}];
  [v3 setObject:v8 forKeyedSubscript:@"appUsageCount14Days"];

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
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCount1Day](self, "appUsageCount1Day")}];
  [v3 setObject:v9 forKeyedSubscript:@"appUsageCount1Day"];

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
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCount1Hr](self, "appUsageCount1Hr")}];
  [v3 setObject:v10 forKeyedSubscript:@"appUsageCount1Hr"];

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
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCount28Days](self, "appUsageCount28Days")}];
  [v3 setObject:v11 forKeyedSubscript:@"appUsageCount28Days"];

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
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCount2Min](self, "appUsageCount2Min")}];
  [v3 setObject:v12 forKeyedSubscript:@"appUsageCount2Min"];

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
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCount6Hrs](self, "appUsageCount6Hrs")}];
  [v3 setObject:v13 forKeyedSubscript:@"appUsageCount6Hrs"];

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
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCount7Days](self, "appUsageCount7Days")}];
  [v3 setObject:v14 forKeyedSubscript:@"appUsageCount7Days"];

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
  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCountFromSiri10Min](self, "appUsageCountFromSiri10Min")}];
  [v3 setObject:v15 forKeyedSubscript:@"appUsageCountFromSiri10Min"];

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
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCountFromSiri14Days](self, "appUsageCountFromSiri14Days")}];
  [v3 setObject:v16 forKeyedSubscript:@"appUsageCountFromSiri14Days"];

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
  v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCountFromSiri1Day](self, "appUsageCountFromSiri1Day")}];
  [v3 setObject:v17 forKeyedSubscript:@"appUsageCountFromSiri1Day"];

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
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCountFromSiri1Hr](self, "appUsageCountFromSiri1Hr")}];
  [v3 setObject:v18 forKeyedSubscript:@"appUsageCountFromSiri1Hr"];

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
  v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCountFromSiri28Days](self, "appUsageCountFromSiri28Days")}];
  [v3 setObject:v19 forKeyedSubscript:@"appUsageCountFromSiri28Days"];

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
  v20 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCountFromSiri2Min](self, "appUsageCountFromSiri2Min")}];
  [v3 setObject:v20 forKeyedSubscript:@"appUsageCountFromSiri2Min"];

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
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCountFromSiri6Hrs](self, "appUsageCountFromSiri6Hrs")}];
  [v3 setObject:v21 forKeyedSubscript:@"appUsageCountFromSiri6Hrs"];

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
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCountFromSiri7Days](self, "appUsageCountFromSiri7Days")}];
  [v3 setObject:v22 forKeyedSubscript:@"appUsageCountFromSiri7Days"];

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
  v23 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCountFromSiriInf](self, "appUsageCountFromSiriInf")}];
  [v3 setObject:v23 forKeyedSubscript:@"appUsageCountFromSiriInf"];

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
  v24 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals appUsageCountInf](self, "appUsageCountInf")}];
  [v3 setObject:v24 forKeyedSubscript:@"appUsageCountInf"];

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
  v25 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals recencyOrderOfAppUsageFromSiri](self, "recencyOrderOfAppUsageFromSiri")}];
  [v3 setObject:v25 forKeyedSubscript:@"recencyOrderOfAppUsageFromSiri"];

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
  v26 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals recencyOrderOfAppUsed](self, "recencyOrderOfAppUsed")}];
  [v3 setObject:v26 forKeyedSubscript:@"recencyOrderOfAppUsed"];

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
  v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals taskAbandonCountInUsingApp10Min](self, "taskAbandonCountInUsingApp10Min")}];
  [v3 setObject:v27 forKeyedSubscript:@"taskAbandonCountInUsingApp10Min"];

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
  v28 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals taskAbandonCountInUsingApp14Days](self, "taskAbandonCountInUsingApp14Days")}];
  [v3 setObject:v28 forKeyedSubscript:@"taskAbandonCountInUsingApp14Days"];

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
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals taskAbandonCountInUsingApp1Day](self, "taskAbandonCountInUsingApp1Day")}];
  [v3 setObject:v29 forKeyedSubscript:@"taskAbandonCountInUsingApp1Day"];

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
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals taskAbandonCountInUsingApp1Hr](self, "taskAbandonCountInUsingApp1Hr")}];
  [v3 setObject:v30 forKeyedSubscript:@"taskAbandonCountInUsingApp1Hr"];

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
  v31 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals taskAbandonCountInUsingApp28Days](self, "taskAbandonCountInUsingApp28Days")}];
  [v3 setObject:v31 forKeyedSubscript:@"taskAbandonCountInUsingApp28Days"];

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
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals taskAbandonCountInUsingApp2Min](self, "taskAbandonCountInUsingApp2Min")}];
  [v3 setObject:v32 forKeyedSubscript:@"taskAbandonCountInUsingApp2Min"];

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
  v33 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals taskAbandonCountInUsingApp6Hrs](self, "taskAbandonCountInUsingApp6Hrs")}];
  [v3 setObject:v33 forKeyedSubscript:@"taskAbandonCountInUsingApp6Hrs"];

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
  v34 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals taskAbandonCountInUsingApp7Days](self, "taskAbandonCountInUsingApp7Days")}];
  [v3 setObject:v34 forKeyedSubscript:@"taskAbandonCountInUsingApp7Days"];

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
  v35 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals taskAbandonCountInUsingAppInf](self, "taskAbandonCountInUsingAppInf")}];
  [v3 setObject:v35 forKeyedSubscript:@"taskAbandonCountInUsingAppInf"];

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
  v36 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals timeSinceAppUsedFromSiriInSec](self, "timeSinceAppUsedFromSiriInSec")}];
  [v3 setObject:v36 forKeyedSubscript:@"timeSinceAppUsedFromSiriInSec"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_32:
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals timeSinceAppUsedInSec](self, "timeSinceAppUsedInSec")}];
    [v3 setObject:v5 forKeyedSubscript:@"timeSinceAppUsedInSec"];
  }

LABEL_33:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v34 = 2654435761 * self->_appUsageCount2Min;
    if ((*&has & 2) != 0)
    {
LABEL_3:
      v33 = 2654435761 * self->_appUsageCount10Min;
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
    v32 = 2654435761 * self->_appUsageCount1Hr;
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
    v31 = 2654435761 * self->_appUsageCount6Hrs;
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
    v30 = 2654435761 * self->_appUsageCount1Day;
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
    v3 = 2654435761 * self->_appUsageCount7Days;
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
    v4 = 2654435761 * self->_appUsageCount14Days;
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
    v5 = 2654435761 * self->_appUsageCount28Days;
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
    v6 = 2654435761 * self->_appUsageCountInf;
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
    v7 = 2654435761 * self->_recencyOrderOfAppUsed;
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
    v8 = 2654435761 * self->_timeSinceAppUsedInSec;
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
    v9 = 2654435761 * self->_appUsageCountFromSiri2Min;
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
    v10 = 2654435761 * self->_appUsageCountFromSiri10Min;
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
    v11 = 2654435761 * self->_appUsageCountFromSiri1Hr;
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
    v12 = 2654435761 * self->_appUsageCountFromSiri6Hrs;
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
    v13 = 2654435761 * self->_appUsageCountFromSiri1Day;
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
    v14 = 2654435761 * self->_appUsageCountFromSiri7Days;
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
    v15 = 2654435761 * self->_appUsageCountFromSiri14Days;
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
    v16 = 2654435761 * self->_appUsageCountFromSiri28Days;
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
    v17 = 2654435761 * self->_appUsageCountFromSiriInf;
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
    v18 = 2654435761 * self->_recencyOrderOfAppUsageFromSiri;
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
    v19 = 2654435761 * self->_timeSinceAppUsedFromSiriInSec;
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
    v20 = 2654435761 * self->_taskAbandonCountInUsingApp2Min;
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
    v21 = 2654435761 * self->_taskAbandonCountInUsingApp10Min;
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
    v22 = 2654435761 * self->_taskAbandonCountInUsingApp1Hr;
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
    v23 = 2654435761 * self->_taskAbandonCountInUsingApp6Hrs;
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
    v24 = 2654435761 * self->_taskAbandonCountInUsingApp1Day;
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
    v25 = 2654435761 * self->_taskAbandonCountInUsingApp7Days;
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
    v26 = 2654435761 * self->_taskAbandonCountInUsingApp14Days;
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
  v27 = 2654435761 * self->_taskAbandonCountInUsingApp28Days;
  if ((*&has & 0x40000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_32:
  v28 = 2654435761 * self->_taskAbandonCountInUsingAppInf;
  return v33 ^ v34 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_126;
  }

  has = self->_has;
  v6 = v4[35];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_126;
  }

  if (*&has)
  {
    appUsageCount2Min = self->_appUsageCount2Min;
    if (appUsageCount2Min != [v4 appUsageCount2Min])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_126;
  }

  if (v8)
  {
    appUsageCount10Min = self->_appUsageCount10Min;
    if (appUsageCount10Min != [v4 appUsageCount10Min])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_126;
  }

  if (v10)
  {
    appUsageCount1Hr = self->_appUsageCount1Hr;
    if (appUsageCount1Hr != [v4 appUsageCount1Hr])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_126;
  }

  if (v12)
  {
    appUsageCount6Hrs = self->_appUsageCount6Hrs;
    if (appUsageCount6Hrs != [v4 appUsageCount6Hrs])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_126;
  }

  if (v14)
  {
    appUsageCount1Day = self->_appUsageCount1Day;
    if (appUsageCount1Day != [v4 appUsageCount1Day])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_126;
  }

  if (v16)
  {
    appUsageCount7Days = self->_appUsageCount7Days;
    if (appUsageCount7Days != [v4 appUsageCount7Days])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_126;
  }

  if (v18)
  {
    appUsageCount14Days = self->_appUsageCount14Days;
    if (appUsageCount14Days != [v4 appUsageCount14Days])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v20 = (*&has >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_126;
  }

  if (v20)
  {
    appUsageCount28Days = self->_appUsageCount28Days;
    if (appUsageCount28Days != [v4 appUsageCount28Days])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v22 = (*&has >> 8) & 1;
  if (v22 != ((v6 >> 8) & 1))
  {
    goto LABEL_126;
  }

  if (v22)
  {
    appUsageCountInf = self->_appUsageCountInf;
    if (appUsageCountInf != [v4 appUsageCountInf])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v24 = (*&has >> 9) & 1;
  if (v24 != ((v6 >> 9) & 1))
  {
    goto LABEL_126;
  }

  if (v24)
  {
    recencyOrderOfAppUsed = self->_recencyOrderOfAppUsed;
    if (recencyOrderOfAppUsed != [v4 recencyOrderOfAppUsed])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v26 = (*&has >> 10) & 1;
  if (v26 != ((v6 >> 10) & 1))
  {
    goto LABEL_126;
  }

  if (v26)
  {
    timeSinceAppUsedInSec = self->_timeSinceAppUsedInSec;
    if (timeSinceAppUsedInSec != [v4 timeSinceAppUsedInSec])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v28 = (*&has >> 11) & 1;
  if (v28 != ((v6 >> 11) & 1))
  {
    goto LABEL_126;
  }

  if (v28)
  {
    appUsageCountFromSiri2Min = self->_appUsageCountFromSiri2Min;
    if (appUsageCountFromSiri2Min != [v4 appUsageCountFromSiri2Min])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v30 = (*&has >> 12) & 1;
  if (v30 != ((v6 >> 12) & 1))
  {
    goto LABEL_126;
  }

  if (v30)
  {
    appUsageCountFromSiri10Min = self->_appUsageCountFromSiri10Min;
    if (appUsageCountFromSiri10Min != [v4 appUsageCountFromSiri10Min])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v32 = (*&has >> 13) & 1;
  if (v32 != ((v6 >> 13) & 1))
  {
    goto LABEL_126;
  }

  if (v32)
  {
    appUsageCountFromSiri1Hr = self->_appUsageCountFromSiri1Hr;
    if (appUsageCountFromSiri1Hr != [v4 appUsageCountFromSiri1Hr])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v34 = (*&has >> 14) & 1;
  if (v34 != ((v6 >> 14) & 1))
  {
    goto LABEL_126;
  }

  if (v34)
  {
    appUsageCountFromSiri6Hrs = self->_appUsageCountFromSiri6Hrs;
    if (appUsageCountFromSiri6Hrs != [v4 appUsageCountFromSiri6Hrs])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v36 = (*&has >> 15) & 1;
  if (v36 != ((v6 >> 15) & 1))
  {
    goto LABEL_126;
  }

  if (v36)
  {
    appUsageCountFromSiri1Day = self->_appUsageCountFromSiri1Day;
    if (appUsageCountFromSiri1Day != [v4 appUsageCountFromSiri1Day])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v38 = HIWORD(*&has) & 1;
  if (v38 != (HIWORD(v6) & 1))
  {
    goto LABEL_126;
  }

  if (v38)
  {
    appUsageCountFromSiri7Days = self->_appUsageCountFromSiri7Days;
    if (appUsageCountFromSiri7Days != [v4 appUsageCountFromSiri7Days])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v40 = (*&has >> 17) & 1;
  if (v40 != ((v6 >> 17) & 1))
  {
    goto LABEL_126;
  }

  if (v40)
  {
    appUsageCountFromSiri14Days = self->_appUsageCountFromSiri14Days;
    if (appUsageCountFromSiri14Days != [v4 appUsageCountFromSiri14Days])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v42 = (*&has >> 18) & 1;
  if (v42 != ((v6 >> 18) & 1))
  {
    goto LABEL_126;
  }

  if (v42)
  {
    appUsageCountFromSiri28Days = self->_appUsageCountFromSiri28Days;
    if (appUsageCountFromSiri28Days != [v4 appUsageCountFromSiri28Days])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v44 = (*&has >> 19) & 1;
  if (v44 != ((v6 >> 19) & 1))
  {
    goto LABEL_126;
  }

  if (v44)
  {
    appUsageCountFromSiriInf = self->_appUsageCountFromSiriInf;
    if (appUsageCountFromSiriInf != [v4 appUsageCountFromSiriInf])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v46 = (*&has >> 20) & 1;
  if (v46 != ((v6 >> 20) & 1))
  {
    goto LABEL_126;
  }

  if (v46)
  {
    recencyOrderOfAppUsageFromSiri = self->_recencyOrderOfAppUsageFromSiri;
    if (recencyOrderOfAppUsageFromSiri != [v4 recencyOrderOfAppUsageFromSiri])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v48 = (*&has >> 21) & 1;
  if (v48 != ((v6 >> 21) & 1))
  {
    goto LABEL_126;
  }

  if (v48)
  {
    timeSinceAppUsedFromSiriInSec = self->_timeSinceAppUsedFromSiriInSec;
    if (timeSinceAppUsedFromSiriInSec != [v4 timeSinceAppUsedFromSiriInSec])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v50 = (*&has >> 22) & 1;
  if (v50 != ((v6 >> 22) & 1))
  {
    goto LABEL_126;
  }

  if (v50)
  {
    taskAbandonCountInUsingApp2Min = self->_taskAbandonCountInUsingApp2Min;
    if (taskAbandonCountInUsingApp2Min != [v4 taskAbandonCountInUsingApp2Min])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v52 = (*&has >> 23) & 1;
  if (v52 != ((v6 >> 23) & 1))
  {
    goto LABEL_126;
  }

  if (v52)
  {
    taskAbandonCountInUsingApp10Min = self->_taskAbandonCountInUsingApp10Min;
    if (taskAbandonCountInUsingApp10Min != [v4 taskAbandonCountInUsingApp10Min])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v54 = HIBYTE(*&has) & 1;
  if (v54 != (HIBYTE(v6) & 1))
  {
    goto LABEL_126;
  }

  if (v54)
  {
    taskAbandonCountInUsingApp1Hr = self->_taskAbandonCountInUsingApp1Hr;
    if (taskAbandonCountInUsingApp1Hr != [v4 taskAbandonCountInUsingApp1Hr])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v56 = (*&has >> 25) & 1;
  if (v56 != ((v6 >> 25) & 1))
  {
    goto LABEL_126;
  }

  if (v56)
  {
    taskAbandonCountInUsingApp6Hrs = self->_taskAbandonCountInUsingApp6Hrs;
    if (taskAbandonCountInUsingApp6Hrs != [v4 taskAbandonCountInUsingApp6Hrs])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v58 = (*&has >> 26) & 1;
  if (v58 != ((v6 >> 26) & 1))
  {
    goto LABEL_126;
  }

  if (v58)
  {
    taskAbandonCountInUsingApp1Day = self->_taskAbandonCountInUsingApp1Day;
    if (taskAbandonCountInUsingApp1Day != [v4 taskAbandonCountInUsingApp1Day])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v60 = (*&has >> 27) & 1;
  if (v60 != ((v6 >> 27) & 1))
  {
    goto LABEL_126;
  }

  if (v60)
  {
    taskAbandonCountInUsingApp7Days = self->_taskAbandonCountInUsingApp7Days;
    if (taskAbandonCountInUsingApp7Days != [v4 taskAbandonCountInUsingApp7Days])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v62 = (*&has >> 28) & 1;
  if (v62 != ((v6 >> 28) & 1))
  {
    goto LABEL_126;
  }

  if (v62)
  {
    taskAbandonCountInUsingApp14Days = self->_taskAbandonCountInUsingApp14Days;
    if (taskAbandonCountInUsingApp14Days != [v4 taskAbandonCountInUsingApp14Days])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v6 = v4[35];
  }

  v64 = (*&has >> 29) & 1;
  if (v64 != ((v6 >> 29) & 1))
  {
    goto LABEL_126;
  }

  if (v64)
  {
    taskAbandonCountInUsingApp28Days = self->_taskAbandonCountInUsingApp28Days;
    if (taskAbandonCountInUsingApp28Days == [v4 taskAbandonCountInUsingApp28Days])
    {
      has = self->_has;
      v6 = v4[35];
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
    taskAbandonCountInUsingAppInf = self->_taskAbandonCountInUsingAppInf;
    if (taskAbandonCountInUsingAppInf != [v4 taskAbandonCountInUsingAppInf])
    {
      goto LABEL_126;
    }
  }

  v68 = 1;
LABEL_127:

  return v68;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (void)setHasTaskAbandonCountInUsingAppInf:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xBFFFFFFF | v3);
}

- (void)setHasTaskAbandonCountInUsingApp28Days:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xDFFFFFFF | v3);
}

- (void)setHasTaskAbandonCountInUsingApp14Days:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFF | v3);
}

- (void)setHasTaskAbandonCountInUsingApp7Days:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasTaskAbandonCountInUsingApp1Day:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasTaskAbandonCountInUsingApp6Hrs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasTaskAbandonCountInUsingApp1Hr:(BOOL)a3
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

- (void)setHasTaskAbandonCountInUsingApp10Min:(BOOL)a3
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

- (void)setHasTaskAbandonCountInUsingApp2Min:(BOOL)a3
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

- (void)setHasTimeSinceAppUsedFromSiriInSec:(BOOL)a3
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

- (void)setHasRecencyOrderOfAppUsageFromSiri:(BOOL)a3
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

- (void)setHasAppUsageCountFromSiriInf:(BOOL)a3
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

- (void)setHasAppUsageCountFromSiri28Days:(BOOL)a3
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

- (void)setHasAppUsageCountFromSiri14Days:(BOOL)a3
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

- (void)setHasAppUsageCountFromSiri7Days:(BOOL)a3
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

- (void)setHasAppUsageCountFromSiri1Day:(BOOL)a3
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

- (void)setHasAppUsageCountFromSiri6Hrs:(BOOL)a3
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

- (void)setHasAppUsageCountFromSiri1Hr:(BOOL)a3
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

- (void)setHasAppUsageCountFromSiri10Min:(BOOL)a3
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

- (void)setHasAppUsageCountFromSiri2Min:(BOOL)a3
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

- (void)setHasTimeSinceAppUsedInSec:(BOOL)a3
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

- (void)setHasRecencyOrderOfAppUsed:(BOOL)a3
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

- (void)setHasAppUsageCountInf:(BOOL)a3
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

- (void)setHasAppUsageCount28Days:(BOOL)a3
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

- (void)setHasAppUsageCount14Days:(BOOL)a3
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

- (void)setHasAppUsageCount7Days:(BOOL)a3
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

- (void)setHasAppUsageCount1Day:(BOOL)a3
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

- (void)setHasAppUsageCount6Hrs:(BOOL)a3
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

- (void)setHasAppUsageCount1Hr:(BOOL)a3
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

- (void)setHasAppUsageCount10Min:(BOOL)a3
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