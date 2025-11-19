@interface ORCHSchemaORCHDeviceDynamicContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaORCHDeviceDynamicContext)initWithDictionary:(id)a3;
- (ORCHSchemaORCHDeviceDynamicContext)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)genAIAgentsEnabledAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addGenAIAgentsEnabled:(int)a3;
- (void)setHasAcceptProceedGesture:(BOOL)a3;
- (void)setHasBluetoothState:(BOOL)a3;
- (void)setHasDeclineDismissGesture:(BOOL)a3;
- (void)setHasFlashlightLevel:(BOOL)a3;
- (void)setHasHeadGesturesEnabled:(BOOL)a3;
- (void)setHasHeadGesturesSupported:(BOOL)a3;
- (void)setHasIsChatGPTEnabled:(BOOL)a3;
- (void)setHasIsSoundAnalysisEnabled:(BOOL)a3;
- (void)setHasIsWifiEnabled:(BOOL)a3;
- (void)setHasMotionActivity:(BOOL)a3;
- (void)setHasTimeSinceAssistantDaemonStartedInMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ORCHSchemaORCHDeviceDynamicContext

- (ORCHSchemaORCHDeviceDynamicContext)initWithDictionary:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v45.receiver = self;
  v45.super_class = ORCHSchemaORCHDeviceDynamicContext;
  v5 = [(ORCHSchemaORCHDeviceDynamicContext *)&v45 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"thermalState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHDeviceDynamicContext setThermalState:](v5, "setThermalState:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"motionActivity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHDeviceDynamicContext setMotionActivity:](v5, "setMotionActivity:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"timeSinceAssistantDaemonStartedInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHDeviceDynamicContext setTimeSinceAssistantDaemonStartedInMs:](v5, "setTimeSinceAssistantDaemonStartedInMs:", [v8 unsignedLongLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"headGesturesSupported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHDeviceDynamicContext setHeadGesturesSupported:](v5, "setHeadGesturesSupported:", [v9 BOOLValue]);
    }

    v40 = v8;
    v10 = [v4 objectForKeyedSubscript:@"headGesturesEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHDeviceDynamicContext setHeadGesturesEnabled:](v5, "setHeadGesturesEnabled:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"acceptProceedGesture"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHDeviceDynamicContext setAcceptProceedGesture:](v5, "setAcceptProceedGesture:", [v11 intValue]);
    }

    v12 = v6;
    v13 = [v4 objectForKeyedSubscript:@"declineDismissGesture"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHDeviceDynamicContext setDeclineDismissGesture:](v5, "setDeclineDismissGesture:", [v13 intValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"isWifiEnabled"];
    objc_opt_class();
    v39 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHDeviceDynamicContext setIsWifiEnabled:](v5, "setIsWifiEnabled:", [v14 BOOLValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"bluetoothState"];
    objc_opt_class();
    v38 = v15;
    v16 = v12;
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHDeviceDynamicContext setBluetoothState:](v5, "setBluetoothState:", [v38 intValue]);
    }

    v37 = v10;
    v17 = [v4 objectForKeyedSubscript:@"flashlightLevel"];
    objc_opt_class();
    v18 = v7;
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHDeviceDynamicContext setFlashlightLevel:](v5, "setFlashlightLevel:", [v17 intValue]);
    }

    v34 = v17;
    v35 = v13;
    v36 = v11;
    v19 = [v4 objectForKeyedSubscript:@"isChatGPTEnabled"];
    objc_opt_class();
    v20 = v40;
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHDeviceDynamicContext setIsChatGPTEnabled:](v5, "setIsChatGPTEnabled:", [v19 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"genAIAgentsEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v9;
      v32 = v18;
      v33 = v16;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v42;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v42 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v41 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ORCHSchemaORCHDeviceDynamicContext addGenAIAgentsEnabled:](v5, "addGenAIAgentsEnabled:", [v27 intValue]);
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v24);
      }

      v18 = v32;
      v16 = v33;
      v20 = v40;
      v9 = v31;
    }

    v28 = [v4 objectForKeyedSubscript:{@"isSoundAnalysisEnabled", v31, v32, v33}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHDeviceDynamicContext setIsSoundAnalysisEnabled:](v5, "setIsSoundAnalysisEnabled:", [v28 BOOLValue]);
    }

    v29 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHDeviceDynamicContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHDeviceDynamicContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHDeviceDynamicContext *)self dictionaryRepresentation];
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
  v4 = *(&self->_isSoundAnalysisEnabled + 1);
  if ((v4 & 0x20) != 0)
  {
    v5 = [(ORCHSchemaORCHDeviceDynamicContext *)self acceptProceedGesture];
    if (v5 == 1)
    {
      v6 = @"ORCHHEADGESTUREMAPPING_SIDE_TO_SIDE";
    }

    else
    {
      v6 = @"ORCHHEADGESTUREMAPPING_UNKNOWN";
    }

    if (v5 == 2)
    {
      v7 = @"ORCHHEADGESTUREMAPPING_UP_AND_DOWN";
    }

    else
    {
      v7 = v6;
    }

    [v3 setObject:v7 forKeyedSubscript:@"acceptProceedGesture"];
    v4 = *(&self->_isSoundAnalysisEnabled + 1);
    if ((v4 & 0x100) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(&self->_isSoundAnalysisEnabled + 1) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v8 = [(ORCHSchemaORCHDeviceDynamicContext *)self bluetoothState]- 1;
  if (v8 > 5)
  {
    v9 = @"ORCHBLUETOOTHSTATE_UNKNOWN";
  }

  else
  {
    v9 = off_1E78DE9D8[v8];
  }

  [v3 setObject:v9 forKeyedSubscript:@"bluetoothState"];
  v4 = *(&self->_isSoundAnalysisEnabled + 1);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

LABEL_17:
  v10 = [(ORCHSchemaORCHDeviceDynamicContext *)self declineDismissGesture];
  if (v10 == 1)
  {
    v11 = @"ORCHHEADGESTUREMAPPING_SIDE_TO_SIDE";
  }

  else
  {
    v11 = @"ORCHHEADGESTUREMAPPING_UNKNOWN";
  }

  if (v10 == 2)
  {
    v12 = @"ORCHHEADGESTUREMAPPING_UP_AND_DOWN";
  }

  else
  {
    v12 = v11;
  }

  [v3 setObject:v12 forKeyedSubscript:@"declineDismissGesture"];
  if ((*(&self->_isSoundAnalysisEnabled + 1) & 0x200) != 0)
  {
LABEL_24:
    v13 = [(ORCHSchemaORCHDeviceDynamicContext *)self flashlightLevel]- 1;
    if (v13 > 4)
    {
      v14 = @"ORCHFLASHLIGHTLEVEL_UNKNOWN";
    }

    else
    {
      v14 = off_1E78DEA08[v13];
    }

    [v3 setObject:v14 forKeyedSubscript:@"flashlightLevel"];
  }

LABEL_28:
  if ([(NSArray *)self->_genAIAgentsEnableds count])
  {
    v15 = [(ORCHSchemaORCHDeviceDynamicContext *)self genAIAgentsEnableds];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"genAIAgentsEnabled"];
  }

  v17 = *(&self->_isSoundAnalysisEnabled + 1);
  if ((v17 & 0x10) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHDeviceDynamicContext headGesturesEnabled](self, "headGesturesEnabled")}];
    [v3 setObject:v20 forKeyedSubscript:@"headGesturesEnabled"];

    v17 = *(&self->_isSoundAnalysisEnabled + 1);
    if ((v17 & 8) == 0)
    {
LABEL_32:
      if ((v17 & 0x400) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_44;
    }
  }

  else if ((v17 & 8) == 0)
  {
    goto LABEL_32;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHDeviceDynamicContext headGesturesSupported](self, "headGesturesSupported")}];
  [v3 setObject:v21 forKeyedSubscript:@"headGesturesSupported"];

  v17 = *(&self->_isSoundAnalysisEnabled + 1);
  if ((v17 & 0x400) == 0)
  {
LABEL_33:
    if ((v17 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_45;
  }

LABEL_44:
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHDeviceDynamicContext isChatGPTEnabled](self, "isChatGPTEnabled")}];
  [v3 setObject:v22 forKeyedSubscript:@"isChatGPTEnabled"];

  v17 = *(&self->_isSoundAnalysisEnabled + 1);
  if ((v17 & 0x800) == 0)
  {
LABEL_34:
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_46;
  }

LABEL_45:
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHDeviceDynamicContext isSoundAnalysisEnabled](self, "isSoundAnalysisEnabled")}];
  [v3 setObject:v23 forKeyedSubscript:@"isSoundAnalysisEnabled"];

  v17 = *(&self->_isSoundAnalysisEnabled + 1);
  if ((v17 & 0x80) == 0)
  {
LABEL_35:
    if ((v17 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_47;
  }

LABEL_46:
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHDeviceDynamicContext isWifiEnabled](self, "isWifiEnabled")}];
  [v3 setObject:v24 forKeyedSubscript:@"isWifiEnabled"];

  v17 = *(&self->_isSoundAnalysisEnabled + 1);
  if ((v17 & 2) == 0)
  {
LABEL_36:
    if ((v17 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_51;
  }

LABEL_47:
  v25 = [(ORCHSchemaORCHDeviceDynamicContext *)self motionActivity]- 1;
  if (v25 > 4)
  {
    v26 = @"ORCHMOTIONACTIVITY_UNKNOWN";
  }

  else
  {
    v26 = off_1E78DEA30[v25];
  }

  [v3 setObject:v26 forKeyedSubscript:@"motionActivity"];
  v17 = *(&self->_isSoundAnalysisEnabled + 1);
  if ((v17 & 1) == 0)
  {
LABEL_37:
    if ((v17 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_51:
  v27 = [(ORCHSchemaORCHDeviceDynamicContext *)self thermalState]- 1;
  if (v27 > 3)
  {
    v28 = @"DEVICETHERMALSTATE_UNKNOWN";
  }

  else
  {
    v28 = off_1E78DEA58[v27];
  }

  [v3 setObject:v28 forKeyedSubscript:@"thermalState"];
  if ((*(&self->_isSoundAnalysisEnabled + 1) & 4) == 0)
  {
    goto LABEL_39;
  }

LABEL_38:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ORCHSchemaORCHDeviceDynamicContext timeSinceAssistantDaemonStartedInMs](self, "timeSinceAssistantDaemonStartedInMs")}];
  [v3 setObject:v18 forKeyedSubscript:@"timeSinceAssistantDaemonStartedInMs"];

LABEL_39:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = *(&self->_isSoundAnalysisEnabled + 1);
  if (v3)
  {
    v18 = 2654435761 * self->_thermalState;
    if ((v3 & 2) != 0)
    {
LABEL_3:
      v17 = 2654435761 * self->_motionActivity;
      if ((v3 & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v18 = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
  if ((v3 & 4) != 0)
  {
LABEL_4:
    v16 = 2654435761u * self->_timeSinceAssistantDaemonStartedInMs;
    if ((v3 & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v16 = 0;
  if ((v3 & 8) != 0)
  {
LABEL_5:
    v14 = 2654435761 * self->_headGesturesSupported;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v14 = 0;
  if ((v3 & 0x10) != 0)
  {
LABEL_6:
    v4 = 2654435761 * self->_headGesturesEnabled;
    if ((v3 & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v4 = 0;
  if ((v3 & 0x20) != 0)
  {
LABEL_7:
    v5 = 2654435761 * self->_acceptProceedGesture;
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = 0;
  if ((v3 & 0x40) != 0)
  {
LABEL_8:
    v6 = 2654435761 * self->_declineDismissGesture;
    if ((v3 & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = 0;
  if ((v3 & 0x80) != 0)
  {
LABEL_9:
    v7 = 2654435761 * self->_isWifiEnabled;
    if ((*(&self->_isSoundAnalysisEnabled + 1) & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = 0;
  if ((*(&self->_isSoundAnalysisEnabled + 1) & 0x100) != 0)
  {
LABEL_10:
    v8 = 2654435761 * self->_bluetoothState;
    if ((*(&self->_isSoundAnalysisEnabled + 1) & 0x200) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v9 = 0;
    if ((*(&self->_isSoundAnalysisEnabled + 1) & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_21:
  v8 = 0;
  if ((*(&self->_isSoundAnalysisEnabled + 1) & 0x200) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v9 = 2654435761 * self->_flashlightLevel;
  if ((*(&self->_isSoundAnalysisEnabled + 1) & 0x400) != 0)
  {
LABEL_12:
    v10 = 2654435761 * self->_isChatGPTEnabled;
    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
LABEL_24:
  v11 = [(NSArray *)self->_genAIAgentsEnableds hash];
  if ((*(&self->_isSoundAnalysisEnabled + 1) & 0x800) != 0)
  {
    v12 = 2654435761 * self->_isSoundAnalysisEnabled;
  }

  else
  {
    v12 = 0;
  }

  return v17 ^ v18 ^ v16 ^ v15 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_55;
  }

  v5 = *(&self->_isSoundAnalysisEnabled + 1);
  v6 = *(v4 + 65);
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_55;
  }

  if (v5)
  {
    thermalState = self->_thermalState;
    if (thermalState != [v4 thermalState])
    {
      goto LABEL_55;
    }

    v5 = *(&self->_isSoundAnalysisEnabled + 1);
    v6 = *(v4 + 65);
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_55;
  }

  if (v8)
  {
    motionActivity = self->_motionActivity;
    if (motionActivity != [v4 motionActivity])
    {
      goto LABEL_55;
    }

    v5 = *(&self->_isSoundAnalysisEnabled + 1);
    v6 = *(v4 + 65);
  }

  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_55;
  }

  if (v10)
  {
    timeSinceAssistantDaemonStartedInMs = self->_timeSinceAssistantDaemonStartedInMs;
    if (timeSinceAssistantDaemonStartedInMs != [v4 timeSinceAssistantDaemonStartedInMs])
    {
      goto LABEL_55;
    }

    v5 = *(&self->_isSoundAnalysisEnabled + 1);
    v6 = *(v4 + 65);
  }

  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_55;
  }

  if (v12)
  {
    headGesturesSupported = self->_headGesturesSupported;
    if (headGesturesSupported != [v4 headGesturesSupported])
    {
      goto LABEL_55;
    }

    v5 = *(&self->_isSoundAnalysisEnabled + 1);
    v6 = *(v4 + 65);
  }

  v14 = (v5 >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_55;
  }

  if (v14)
  {
    headGesturesEnabled = self->_headGesturesEnabled;
    if (headGesturesEnabled != [v4 headGesturesEnabled])
    {
      goto LABEL_55;
    }

    v5 = *(&self->_isSoundAnalysisEnabled + 1);
    v6 = *(v4 + 65);
  }

  v16 = (v5 >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_55;
  }

  if (v16)
  {
    acceptProceedGesture = self->_acceptProceedGesture;
    if (acceptProceedGesture != [v4 acceptProceedGesture])
    {
      goto LABEL_55;
    }

    v5 = *(&self->_isSoundAnalysisEnabled + 1);
    v6 = *(v4 + 65);
  }

  v18 = (v5 >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_55;
  }

  if (v18)
  {
    declineDismissGesture = self->_declineDismissGesture;
    if (declineDismissGesture != [v4 declineDismissGesture])
    {
      goto LABEL_55;
    }

    v5 = *(&self->_isSoundAnalysisEnabled + 1);
    v6 = *(v4 + 65);
  }

  v20 = (v5 >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_55;
  }

  if (v20)
  {
    isWifiEnabled = self->_isWifiEnabled;
    if (isWifiEnabled != [v4 isWifiEnabled])
    {
      goto LABEL_55;
    }

    v5 = *(&self->_isSoundAnalysisEnabled + 1);
    v6 = *(v4 + 65);
  }

  v22 = (v5 >> 8) & 1;
  if (v22 != ((v6 >> 8) & 1))
  {
    goto LABEL_55;
  }

  if (v22)
  {
    bluetoothState = self->_bluetoothState;
    if (bluetoothState != [v4 bluetoothState])
    {
      goto LABEL_55;
    }

    v5 = *(&self->_isSoundAnalysisEnabled + 1);
    v6 = *(v4 + 65);
  }

  v24 = (v5 >> 9) & 1;
  if (v24 != ((v6 >> 9) & 1))
  {
    goto LABEL_55;
  }

  if (v24)
  {
    flashlightLevel = self->_flashlightLevel;
    if (flashlightLevel == [v4 flashlightLevel])
    {
      v5 = *(&self->_isSoundAnalysisEnabled + 1);
      v6 = *(v4 + 65);
      goto LABEL_42;
    }

LABEL_55:
    v38 = 0;
    goto LABEL_56;
  }

LABEL_42:
  v26 = (v5 >> 10) & 1;
  if (v26 != ((v6 >> 10) & 1))
  {
    goto LABEL_55;
  }

  if (v26)
  {
    isChatGPTEnabled = self->_isChatGPTEnabled;
    if (isChatGPTEnabled != [v4 isChatGPTEnabled])
    {
      goto LABEL_55;
    }
  }

  v28 = [(ORCHSchemaORCHDeviceDynamicContext *)self genAIAgentsEnableds];
  v29 = [v4 genAIAgentsEnableds];
  v30 = v29;
  if ((v28 != 0) == (v29 == 0))
  {

    goto LABEL_55;
  }

  v31 = [(ORCHSchemaORCHDeviceDynamicContext *)self genAIAgentsEnableds];
  if (v31)
  {
    v32 = v31;
    v33 = [(ORCHSchemaORCHDeviceDynamicContext *)self genAIAgentsEnableds];
    v34 = [v4 genAIAgentsEnableds];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v36 = (*(&self->_isSoundAnalysisEnabled + 1) >> 11) & 1;
  if (v36 != ((*(v4 + 65) >> 11) & 1))
  {
    goto LABEL_55;
  }

  if (v36)
  {
    isSoundAnalysisEnabled = self->_isSoundAnalysisEnabled;
    if (isSoundAnalysisEnabled != [v4 isSoundAnalysisEnabled])
    {
      goto LABEL_55;
    }
  }

  v38 = 1;
LABEL_56:

  return v38;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(&self->_isSoundAnalysisEnabled + 1);
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    v5 = *(&self->_isSoundAnalysisEnabled + 1);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  v5 = *(&self->_isSoundAnalysisEnabled + 1);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteUint64Field();
  v5 = *(&self->_isSoundAnalysisEnabled + 1);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteBOOLField();
  v5 = *(&self->_isSoundAnalysisEnabled + 1);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteBOOLField();
  v5 = *(&self->_isSoundAnalysisEnabled + 1);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteInt32Field();
  v5 = *(&self->_isSoundAnalysisEnabled + 1);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteInt32Field();
  v5 = *(&self->_isSoundAnalysisEnabled + 1);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteBOOLField();
  v5 = *(&self->_isSoundAnalysisEnabled + 1);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  PBDataWriterWriteInt32Field();
  v5 = *(&self->_isSoundAnalysisEnabled + 1);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_32:
  PBDataWriterWriteInt32Field();
  if ((*(&self->_isSoundAnalysisEnabled + 1) & 0x400) != 0)
  {
LABEL_12:
    PBDataWriterWriteBOOLField();
  }

LABEL_13:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_genAIAgentsEnableds;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if ((*(&self->_isSoundAnalysisEnabled + 1) & 0x800) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasIsSoundAnalysisEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSoundAnalysisEnabled + 1) = *(&self->_isSoundAnalysisEnabled + 1) & 0xF7FF | v3;
}

- (int)genAIAgentsEnabledAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_genAIAgentsEnableds objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addGenAIAgentsEnabled:(int)a3
{
  v3 = *&a3;
  genAIAgentsEnableds = self->_genAIAgentsEnableds;
  if (!genAIAgentsEnableds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_genAIAgentsEnableds;
    self->_genAIAgentsEnableds = v6;

    genAIAgentsEnableds = self->_genAIAgentsEnableds;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)genAIAgentsEnableds addObject:v8];
}

- (void)setHasIsChatGPTEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSoundAnalysisEnabled + 1) = *(&self->_isSoundAnalysisEnabled + 1) & 0xFBFF | v3;
}

- (void)setHasFlashlightLevel:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSoundAnalysisEnabled + 1) = *(&self->_isSoundAnalysisEnabled + 1) & 0xFDFF | v3;
}

- (void)setHasBluetoothState:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSoundAnalysisEnabled + 1) = *(&self->_isSoundAnalysisEnabled + 1) & 0xFEFF | v3;
}

- (void)setHasIsWifiEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSoundAnalysisEnabled + 1) = *(&self->_isSoundAnalysisEnabled + 1) & 0xFF7F | v3;
}

- (void)setHasDeclineDismissGesture:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSoundAnalysisEnabled + 1) = *(&self->_isSoundAnalysisEnabled + 1) & 0xFFBF | v3;
}

- (void)setHasAcceptProceedGesture:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSoundAnalysisEnabled + 1) = *(&self->_isSoundAnalysisEnabled + 1) & 0xFFDF | v3;
}

- (void)setHasHeadGesturesEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSoundAnalysisEnabled + 1) = *(&self->_isSoundAnalysisEnabled + 1) & 0xFFEF | v3;
}

- (void)setHasHeadGesturesSupported:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSoundAnalysisEnabled + 1) = *(&self->_isSoundAnalysisEnabled + 1) & 0xFFF7 | v3;
}

- (void)setHasTimeSinceAssistantDaemonStartedInMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSoundAnalysisEnabled + 1) = *(&self->_isSoundAnalysisEnabled + 1) & 0xFFFB | v3;
}

- (void)setHasMotionActivity:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSoundAnalysisEnabled + 1) = *(&self->_isSoundAnalysisEnabled + 1) & 0xFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end