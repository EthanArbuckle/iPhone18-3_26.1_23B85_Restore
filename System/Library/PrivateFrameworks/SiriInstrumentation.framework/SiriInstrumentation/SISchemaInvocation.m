@interface SISchemaInvocation
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaBluetoothCarInvocationContext)bluetoothCarInvocationContext;
- (SISchemaCarPlayInvocationContext)carPlayInvocationContext;
- (SISchemaCardSectionKeyboardInvocationContext)keyboardInvocationContext;
- (SISchemaHardwareButtonInvocationContext)hardwareButtonInvocationContext;
- (SISchemaInvocation)initWithDictionary:(id)a3;
- (SISchemaInvocation)initWithJSON:(id)a3;
- (SISchemaTVRemoteInvocationContext)tvRemoteInvocationContext;
- (SISchemaTapToEditInvocationContext)tapToEditContext;
- (SISchemaTypeToSiriInvocationContext)typeToSiriContext;
- (SISchemaVerticalLayoutCardSectionInvocationContext)cardInvocationContext;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteBluetoothCarInvocationContext;
- (void)deleteCarPlayInvocationContext;
- (void)deleteCardInvocationContext;
- (void)deleteHardwareButtonInvocationContext;
- (void)deleteKeyboardInvocationContext;
- (void)deleteTapToEditContext;
- (void)deleteTvRemoteInvocationContext;
- (void)deleteTypeToSiriContext;
- (void)setBluetoothCarInvocationContext:(id)a3;
- (void)setCarPlayInvocationContext:(id)a3;
- (void)setCardInvocationContext:(id)a3;
- (void)setHardwareButtonInvocationContext:(id)a3;
- (void)setHasInvocationSource:(BOOL)a3;
- (void)setHasIsDeviceLocked:(BOOL)a3;
- (void)setKeyboardInvocationContext:(id)a3;
- (void)setTapToEditContext:(id)a3;
- (void)setTvRemoteInvocationContext:(id)a3;
- (void)setTypeToSiriContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaInvocation

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_bluetoothCarInvocationContext)
  {
    v4 = [(SISchemaInvocation *)self bluetoothCarInvocationContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"bluetoothCarInvocationContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"bluetoothCarInvocationContext"];
    }
  }

  if (self->_carPlayInvocationContext)
  {
    v7 = [(SISchemaInvocation *)self carPlayInvocationContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"carPlayInvocationContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"carPlayInvocationContext"];
    }
  }

  if (self->_cardInvocationContext)
  {
    v10 = [(SISchemaInvocation *)self cardInvocationContext];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"cardInvocationContext"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"cardInvocationContext"];
    }
  }

  if (self->_hardwareButtonInvocationContext)
  {
    v13 = [(SISchemaInvocation *)self hardwareButtonInvocationContext];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"hardwareButtonInvocationContext"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"hardwareButtonInvocationContext"];
    }
  }

  has = self->_has;
  if (has)
  {
    v20 = [(SISchemaInvocation *)self invocationAction]- 1;
    if (v20 > 0xE)
    {
      v21 = @"INVOCATIONACTION_UNKNOWN_INVOCATION_ACTION";
    }

    else
    {
      v21 = off_1E78E4DE0[v20];
    }

    [v3 setObject:v21 forKeyedSubscript:@"invocationAction"];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_23:
      if ((has & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_23;
  }

  v22 = [(SISchemaInvocation *)self invocationSource]- 1;
  if (v22 > 0x66)
  {
    v23 = @"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE";
  }

  else
  {
    v23 = off_1E78E4E58[v22];
  }

  [v3 setObject:v23 forKeyedSubscript:@"invocationSource"];
  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaInvocation isDeviceLocked](self, "isDeviceLocked")}];
    [v3 setObject:v17 forKeyedSubscript:@"isDeviceLocked"];
  }

LABEL_25:
  if (self->_keyboardInvocationContext)
  {
    v18 = [(SISchemaInvocation *)self keyboardInvocationContext];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"keyboardInvocationContext"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"keyboardInvocationContext"];
    }
  }

  if (self->_linkId)
  {
    v25 = [(SISchemaInvocation *)self linkId];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_tapToEditContext)
  {
    v28 = [(SISchemaInvocation *)self tapToEditContext];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"tapToEditContext"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"tapToEditContext"];
    }
  }

  if (self->_tvRemoteInvocationContext)
  {
    v31 = [(SISchemaInvocation *)self tvRemoteInvocationContext];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"tvRemoteInvocationContext"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"tvRemoteInvocationContext"];
    }
  }

  if (self->_typeToSiriContext)
  {
    v34 = [(SISchemaInvocation *)self typeToSiriContext];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"typeToSiriContext"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"typeToSiriContext"];
    }
  }

  if (self->_viewContainer)
  {
    v37 = [(SISchemaInvocation *)self viewContainer];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"viewContainer"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"viewContainer"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (SISchemaCarPlayInvocationContext)carPlayInvocationContext
{
  if (self->_whichInvocationcontext == 4)
  {
    v3 = self->_carPlayInvocationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaVerticalLayoutCardSectionInvocationContext)cardInvocationContext
{
  if (self->_whichInvocationcontext == 5)
  {
    v3 = self->_cardInvocationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaTapToEditInvocationContext)tapToEditContext
{
  if (self->_whichInvocationcontext == 11)
  {
    v3 = self->_tapToEditContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaTVRemoteInvocationContext)tvRemoteInvocationContext
{
  if (self->_whichInvocationcontext == 7)
  {
    v3 = self->_tvRemoteInvocationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaCardSectionKeyboardInvocationContext)keyboardInvocationContext
{
  if (self->_whichInvocationcontext == 8)
  {
    v3 = self->_keyboardInvocationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaHardwareButtonInvocationContext)hardwareButtonInvocationContext
{
  if (self->_whichInvocationcontext == 9)
  {
    v3 = self->_hardwareButtonInvocationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaBluetoothCarInvocationContext)bluetoothCarInvocationContext
{
  if (self->_whichInvocationcontext == 10)
  {
    v3 = self->_bluetoothCarInvocationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaInvocation)initWithDictionary:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = SISchemaInvocation;
  v5 = [(SISchemaInvocation *)&v37 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"invocationAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaInvocation setInvocationAction:](v5, "setInvocationAction:", [v6 intValue]);
    }

    v36 = v6;
    v7 = [v4 objectForKeyedSubscript:@"invocationSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaInvocation setInvocationSource:](v5, "setInvocationSource:", [v7 intValue]);
    }

    v35 = v7;
    v8 = [v4 objectForKeyedSubscript:@"viewContainer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaViewContainer alloc] initWithDictionary:v8];
      [(SISchemaInvocation *)v5 setViewContainer:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"carPlayInvocationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaCarPlayInvocationContext alloc] initWithDictionary:v10];
      [(SISchemaInvocation *)v5 setCarPlayInvocationContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"cardInvocationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaVerticalLayoutCardSectionInvocationContext alloc] initWithDictionary:v12];
      [(SISchemaInvocation *)v5 setCardInvocationContext:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"tvRemoteInvocationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaTVRemoteInvocationContext alloc] initWithDictionary:v14];
      [(SISchemaInvocation *)v5 setTvRemoteInvocationContext:v15];
    }

    v16 = [v4 objectForKeyedSubscript:{@"keyboardInvocationContext", v14}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaCardSectionKeyboardInvocationContext alloc] initWithDictionary:v16];
      [(SISchemaInvocation *)v5 setKeyboardInvocationContext:v17];
    }

    v34 = v8;
    v18 = [v4 objectForKeyedSubscript:@"hardwareButtonInvocationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[SISchemaHardwareButtonInvocationContext alloc] initWithDictionary:v18];
      [(SISchemaInvocation *)v5 setHardwareButtonInvocationContext:v19];
    }

    v33 = v10;
    v20 = [v4 objectForKeyedSubscript:@"bluetoothCarInvocationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[SISchemaBluetoothCarInvocationContext alloc] initWithDictionary:v20];
      [(SISchemaInvocation *)v5 setBluetoothCarInvocationContext:v21];
    }

    v32 = v12;
    v22 = [v4 objectForKeyedSubscript:@"tapToEditContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[SISchemaTapToEditInvocationContext alloc] initWithDictionary:v22];
      [(SISchemaInvocation *)v5 setTapToEditContext:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"typeToSiriContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[SISchemaTypeToSiriInvocationContext alloc] initWithDictionary:v24];
      [(SISchemaInvocation *)v5 setTypeToSiriContext:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"isDeviceLocked"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaInvocation setIsDeviceLocked:](v5, "setIsDeviceLocked:", [v26 BOOLValue]);
    }

    v27 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[SISchemaUUID alloc] initWithDictionary:v27];
      [(SISchemaInvocation *)v5 setLinkId:v28];
    }

    v29 = v5;
  }

  return v5;
}

- (SISchemaInvocation)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaInvocation *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaInvocation *)self dictionaryRepresentation];
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

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v16 = 2654435761 * self->_invocationAction;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = [(SISchemaViewContainer *)self->_viewContainer hash];
      goto LABEL_6;
    }
  }

  v3 = [(SISchemaViewContainer *)self->_viewContainer hash];
LABEL_6:
  v4 = v3;
  v5 = [(SISchemaCarPlayInvocationContext *)self->_carPlayInvocationContext hash];
  v6 = [(SISchemaVerticalLayoutCardSectionInvocationContext *)self->_cardInvocationContext hash];
  v7 = [(SISchemaTVRemoteInvocationContext *)self->_tvRemoteInvocationContext hash];
  v8 = [(SISchemaCardSectionKeyboardInvocationContext *)self->_keyboardInvocationContext hash];
  v9 = [(SISchemaHardwareButtonInvocationContext *)self->_hardwareButtonInvocationContext hash];
  v10 = [(SISchemaBluetoothCarInvocationContext *)self->_bluetoothCarInvocationContext hash];
  v11 = [(SISchemaTapToEditInvocationContext *)self->_tapToEditContext hash];
  v12 = [(SISchemaTypeToSiriInvocationContext *)self->_typeToSiriContext hash];
  if ((*&self->_has & 4) != 0)
  {
    v13 = 2654435761 * self->_isDeviceLocked;
  }

  else
  {
    v13 = 0;
  }

  return v15 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ [(SISchemaUUID *)self->_linkId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_63;
  }

  whichInvocationcontext = self->_whichInvocationcontext;
  if (whichInvocationcontext != [v4 whichInvocationcontext])
  {
    goto LABEL_63;
  }

  has = self->_has;
  v7 = v4[104];
  if ((*&has & 1) != (v7 & 1))
  {
    goto LABEL_63;
  }

  if (*&has)
  {
    invocationAction = self->_invocationAction;
    if (invocationAction != [v4 invocationAction])
    {
      goto LABEL_63;
    }

    has = self->_has;
    v7 = v4[104];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v7 >> 1) & 1))
  {
    goto LABEL_63;
  }

  if (v9)
  {
    invocationSource = self->_invocationSource;
    if (invocationSource != [v4 invocationSource])
    {
      goto LABEL_63;
    }
  }

  v11 = [(SISchemaInvocation *)self viewContainer];
  v12 = [v4 viewContainer];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_62;
  }

  v13 = [(SISchemaInvocation *)self viewContainer];
  if (v13)
  {
    v14 = v13;
    v15 = [(SISchemaInvocation *)self viewContainer];
    v16 = [v4 viewContainer];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v11 = [(SISchemaInvocation *)self carPlayInvocationContext];
  v12 = [v4 carPlayInvocationContext];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_62;
  }

  v18 = [(SISchemaInvocation *)self carPlayInvocationContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(SISchemaInvocation *)self carPlayInvocationContext];
    v21 = [v4 carPlayInvocationContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v11 = [(SISchemaInvocation *)self cardInvocationContext];
  v12 = [v4 cardInvocationContext];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_62;
  }

  v23 = [(SISchemaInvocation *)self cardInvocationContext];
  if (v23)
  {
    v24 = v23;
    v25 = [(SISchemaInvocation *)self cardInvocationContext];
    v26 = [v4 cardInvocationContext];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v11 = [(SISchemaInvocation *)self tvRemoteInvocationContext];
  v12 = [v4 tvRemoteInvocationContext];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_62;
  }

  v28 = [(SISchemaInvocation *)self tvRemoteInvocationContext];
  if (v28)
  {
    v29 = v28;
    v30 = [(SISchemaInvocation *)self tvRemoteInvocationContext];
    v31 = [v4 tvRemoteInvocationContext];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v11 = [(SISchemaInvocation *)self keyboardInvocationContext];
  v12 = [v4 keyboardInvocationContext];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_62;
  }

  v33 = [(SISchemaInvocation *)self keyboardInvocationContext];
  if (v33)
  {
    v34 = v33;
    v35 = [(SISchemaInvocation *)self keyboardInvocationContext];
    v36 = [v4 keyboardInvocationContext];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v11 = [(SISchemaInvocation *)self hardwareButtonInvocationContext];
  v12 = [v4 hardwareButtonInvocationContext];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_62;
  }

  v38 = [(SISchemaInvocation *)self hardwareButtonInvocationContext];
  if (v38)
  {
    v39 = v38;
    v40 = [(SISchemaInvocation *)self hardwareButtonInvocationContext];
    v41 = [v4 hardwareButtonInvocationContext];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v11 = [(SISchemaInvocation *)self bluetoothCarInvocationContext];
  v12 = [v4 bluetoothCarInvocationContext];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_62;
  }

  v43 = [(SISchemaInvocation *)self bluetoothCarInvocationContext];
  if (v43)
  {
    v44 = v43;
    v45 = [(SISchemaInvocation *)self bluetoothCarInvocationContext];
    v46 = [v4 bluetoothCarInvocationContext];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v11 = [(SISchemaInvocation *)self tapToEditContext];
  v12 = [v4 tapToEditContext];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_62;
  }

  v48 = [(SISchemaInvocation *)self tapToEditContext];
  if (v48)
  {
    v49 = v48;
    v50 = [(SISchemaInvocation *)self tapToEditContext];
    v51 = [v4 tapToEditContext];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v11 = [(SISchemaInvocation *)self typeToSiriContext];
  v12 = [v4 typeToSiriContext];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_62;
  }

  v53 = [(SISchemaInvocation *)self typeToSiriContext];
  if (v53)
  {
    v54 = v53;
    v55 = [(SISchemaInvocation *)self typeToSiriContext];
    v56 = [v4 typeToSiriContext];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v58 = (*&self->_has >> 2) & 1;
  if (v58 != ((v4[104] >> 2) & 1))
  {
    goto LABEL_63;
  }

  if (v58)
  {
    isDeviceLocked = self->_isDeviceLocked;
    if (isDeviceLocked != [v4 isDeviceLocked])
    {
      goto LABEL_63;
    }
  }

  v11 = [(SISchemaInvocation *)self linkId];
  v12 = [v4 linkId];
  if ((v11 != 0) != (v12 == 0))
  {
    v60 = [(SISchemaInvocation *)self linkId];
    if (!v60)
    {

LABEL_66:
      v65 = 1;
      goto LABEL_64;
    }

    v61 = v60;
    v62 = [(SISchemaInvocation *)self linkId];
    v63 = [v4 linkId];
    v64 = [v62 isEqual:v63];

    if (v64)
    {
      goto LABEL_66;
    }
  }

  else
  {
LABEL_62:
  }

LABEL_63:
  v65 = 0;
LABEL_64:

  return v65;
}

- (void)writeTo:(id)a3
{
  v26 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(SISchemaInvocation *)self viewContainer];

  if (v5)
  {
    v6 = [(SISchemaInvocation *)self viewContainer];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(SISchemaInvocation *)self carPlayInvocationContext];

  if (v7)
  {
    v8 = [(SISchemaInvocation *)self carPlayInvocationContext];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(SISchemaInvocation *)self cardInvocationContext];

  if (v9)
  {
    v10 = [(SISchemaInvocation *)self cardInvocationContext];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(SISchemaInvocation *)self tvRemoteInvocationContext];

  if (v11)
  {
    v12 = [(SISchemaInvocation *)self tvRemoteInvocationContext];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(SISchemaInvocation *)self keyboardInvocationContext];

  if (v13)
  {
    v14 = [(SISchemaInvocation *)self keyboardInvocationContext];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(SISchemaInvocation *)self hardwareButtonInvocationContext];

  if (v15)
  {
    v16 = [(SISchemaInvocation *)self hardwareButtonInvocationContext];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(SISchemaInvocation *)self bluetoothCarInvocationContext];

  if (v17)
  {
    v18 = [(SISchemaInvocation *)self bluetoothCarInvocationContext];
    PBDataWriterWriteSubmessage();
  }

  v19 = [(SISchemaInvocation *)self tapToEditContext];

  if (v19)
  {
    v20 = [(SISchemaInvocation *)self tapToEditContext];
    PBDataWriterWriteSubmessage();
  }

  v21 = [(SISchemaInvocation *)self typeToSiriContext];

  if (v21)
  {
    v22 = [(SISchemaInvocation *)self typeToSiriContext];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v23 = [(SISchemaInvocation *)self linkId];

  v24 = v26;
  if (v23)
  {
    v25 = [(SISchemaInvocation *)self linkId];
    PBDataWriterWriteSubmessage();

    v24 = v26;
  }
}

- (void)setHasIsDeviceLocked:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)deleteTypeToSiriContext
{
  if (self->_whichInvocationcontext == 13)
  {
    self->_whichInvocationcontext = 0;
    self->_typeToSiriContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaTypeToSiriInvocationContext)typeToSiriContext
{
  if (self->_whichInvocationcontext == 13)
  {
    v3 = self->_typeToSiriContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTypeToSiriContext:(id)a3
{
  v4 = a3;
  carPlayInvocationContext = self->_carPlayInvocationContext;
  self->_carPlayInvocationContext = 0;

  cardInvocationContext = self->_cardInvocationContext;
  self->_cardInvocationContext = 0;

  tvRemoteInvocationContext = self->_tvRemoteInvocationContext;
  self->_tvRemoteInvocationContext = 0;

  keyboardInvocationContext = self->_keyboardInvocationContext;
  self->_keyboardInvocationContext = 0;

  hardwareButtonInvocationContext = self->_hardwareButtonInvocationContext;
  self->_hardwareButtonInvocationContext = 0;

  bluetoothCarInvocationContext = self->_bluetoothCarInvocationContext;
  self->_bluetoothCarInvocationContext = 0;

  tapToEditContext = self->_tapToEditContext;
  self->_tapToEditContext = 0;

  v12 = 13;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichInvocationcontext = v12;
  typeToSiriContext = self->_typeToSiriContext;
  self->_typeToSiriContext = v4;
}

- (void)deleteTapToEditContext
{
  if (self->_whichInvocationcontext == 11)
  {
    self->_whichInvocationcontext = 0;
    self->_tapToEditContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setTapToEditContext:(id)a3
{
  v4 = a3;
  carPlayInvocationContext = self->_carPlayInvocationContext;
  self->_carPlayInvocationContext = 0;

  cardInvocationContext = self->_cardInvocationContext;
  self->_cardInvocationContext = 0;

  tvRemoteInvocationContext = self->_tvRemoteInvocationContext;
  self->_tvRemoteInvocationContext = 0;

  keyboardInvocationContext = self->_keyboardInvocationContext;
  self->_keyboardInvocationContext = 0;

  hardwareButtonInvocationContext = self->_hardwareButtonInvocationContext;
  self->_hardwareButtonInvocationContext = 0;

  bluetoothCarInvocationContext = self->_bluetoothCarInvocationContext;
  self->_bluetoothCarInvocationContext = 0;

  typeToSiriContext = self->_typeToSiriContext;
  self->_typeToSiriContext = 0;

  v12 = 11;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichInvocationcontext = v12;
  tapToEditContext = self->_tapToEditContext;
  self->_tapToEditContext = v4;
}

- (void)deleteBluetoothCarInvocationContext
{
  if (self->_whichInvocationcontext == 10)
  {
    self->_whichInvocationcontext = 0;
    self->_bluetoothCarInvocationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setBluetoothCarInvocationContext:(id)a3
{
  v4 = a3;
  carPlayInvocationContext = self->_carPlayInvocationContext;
  self->_carPlayInvocationContext = 0;

  cardInvocationContext = self->_cardInvocationContext;
  self->_cardInvocationContext = 0;

  tvRemoteInvocationContext = self->_tvRemoteInvocationContext;
  self->_tvRemoteInvocationContext = 0;

  keyboardInvocationContext = self->_keyboardInvocationContext;
  self->_keyboardInvocationContext = 0;

  hardwareButtonInvocationContext = self->_hardwareButtonInvocationContext;
  self->_hardwareButtonInvocationContext = 0;

  tapToEditContext = self->_tapToEditContext;
  self->_tapToEditContext = 0;

  typeToSiriContext = self->_typeToSiriContext;
  self->_typeToSiriContext = 0;

  v12 = 10;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichInvocationcontext = v12;
  bluetoothCarInvocationContext = self->_bluetoothCarInvocationContext;
  self->_bluetoothCarInvocationContext = v4;
}

- (void)deleteHardwareButtonInvocationContext
{
  if (self->_whichInvocationcontext == 9)
  {
    self->_whichInvocationcontext = 0;
    self->_hardwareButtonInvocationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setHardwareButtonInvocationContext:(id)a3
{
  v4 = a3;
  carPlayInvocationContext = self->_carPlayInvocationContext;
  self->_carPlayInvocationContext = 0;

  cardInvocationContext = self->_cardInvocationContext;
  self->_cardInvocationContext = 0;

  tvRemoteInvocationContext = self->_tvRemoteInvocationContext;
  self->_tvRemoteInvocationContext = 0;

  keyboardInvocationContext = self->_keyboardInvocationContext;
  self->_keyboardInvocationContext = 0;

  bluetoothCarInvocationContext = self->_bluetoothCarInvocationContext;
  self->_bluetoothCarInvocationContext = 0;

  tapToEditContext = self->_tapToEditContext;
  self->_tapToEditContext = 0;

  typeToSiriContext = self->_typeToSiriContext;
  self->_typeToSiriContext = 0;

  v12 = 9;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichInvocationcontext = v12;
  hardwareButtonInvocationContext = self->_hardwareButtonInvocationContext;
  self->_hardwareButtonInvocationContext = v4;
}

- (void)deleteKeyboardInvocationContext
{
  if (self->_whichInvocationcontext == 8)
  {
    self->_whichInvocationcontext = 0;
    self->_keyboardInvocationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setKeyboardInvocationContext:(id)a3
{
  v4 = a3;
  carPlayInvocationContext = self->_carPlayInvocationContext;
  self->_carPlayInvocationContext = 0;

  cardInvocationContext = self->_cardInvocationContext;
  self->_cardInvocationContext = 0;

  tvRemoteInvocationContext = self->_tvRemoteInvocationContext;
  self->_tvRemoteInvocationContext = 0;

  hardwareButtonInvocationContext = self->_hardwareButtonInvocationContext;
  self->_hardwareButtonInvocationContext = 0;

  bluetoothCarInvocationContext = self->_bluetoothCarInvocationContext;
  self->_bluetoothCarInvocationContext = 0;

  tapToEditContext = self->_tapToEditContext;
  self->_tapToEditContext = 0;

  typeToSiriContext = self->_typeToSiriContext;
  self->_typeToSiriContext = 0;

  self->_whichInvocationcontext = 8 * (v4 != 0);
  keyboardInvocationContext = self->_keyboardInvocationContext;
  self->_keyboardInvocationContext = v4;
}

- (void)deleteTvRemoteInvocationContext
{
  if (self->_whichInvocationcontext == 7)
  {
    self->_whichInvocationcontext = 0;
    self->_tvRemoteInvocationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setTvRemoteInvocationContext:(id)a3
{
  v4 = a3;
  carPlayInvocationContext = self->_carPlayInvocationContext;
  self->_carPlayInvocationContext = 0;

  cardInvocationContext = self->_cardInvocationContext;
  self->_cardInvocationContext = 0;

  keyboardInvocationContext = self->_keyboardInvocationContext;
  self->_keyboardInvocationContext = 0;

  hardwareButtonInvocationContext = self->_hardwareButtonInvocationContext;
  self->_hardwareButtonInvocationContext = 0;

  bluetoothCarInvocationContext = self->_bluetoothCarInvocationContext;
  self->_bluetoothCarInvocationContext = 0;

  tapToEditContext = self->_tapToEditContext;
  self->_tapToEditContext = 0;

  typeToSiriContext = self->_typeToSiriContext;
  self->_typeToSiriContext = 0;

  v12 = 7;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichInvocationcontext = v12;
  tvRemoteInvocationContext = self->_tvRemoteInvocationContext;
  self->_tvRemoteInvocationContext = v4;
}

- (void)deleteCardInvocationContext
{
  if (self->_whichInvocationcontext == 5)
  {
    self->_whichInvocationcontext = 0;
    self->_cardInvocationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCardInvocationContext:(id)a3
{
  v4 = a3;
  carPlayInvocationContext = self->_carPlayInvocationContext;
  self->_carPlayInvocationContext = 0;

  tvRemoteInvocationContext = self->_tvRemoteInvocationContext;
  self->_tvRemoteInvocationContext = 0;

  keyboardInvocationContext = self->_keyboardInvocationContext;
  self->_keyboardInvocationContext = 0;

  hardwareButtonInvocationContext = self->_hardwareButtonInvocationContext;
  self->_hardwareButtonInvocationContext = 0;

  bluetoothCarInvocationContext = self->_bluetoothCarInvocationContext;
  self->_bluetoothCarInvocationContext = 0;

  tapToEditContext = self->_tapToEditContext;
  self->_tapToEditContext = 0;

  typeToSiriContext = self->_typeToSiriContext;
  self->_typeToSiriContext = 0;

  v12 = 5;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichInvocationcontext = v12;
  cardInvocationContext = self->_cardInvocationContext;
  self->_cardInvocationContext = v4;
}

- (void)deleteCarPlayInvocationContext
{
  if (self->_whichInvocationcontext == 4)
  {
    self->_whichInvocationcontext = 0;
    self->_carPlayInvocationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCarPlayInvocationContext:(id)a3
{
  v4 = a3;
  cardInvocationContext = self->_cardInvocationContext;
  self->_cardInvocationContext = 0;

  tvRemoteInvocationContext = self->_tvRemoteInvocationContext;
  self->_tvRemoteInvocationContext = 0;

  keyboardInvocationContext = self->_keyboardInvocationContext;
  self->_keyboardInvocationContext = 0;

  hardwareButtonInvocationContext = self->_hardwareButtonInvocationContext;
  self->_hardwareButtonInvocationContext = 0;

  bluetoothCarInvocationContext = self->_bluetoothCarInvocationContext;
  self->_bluetoothCarInvocationContext = 0;

  tapToEditContext = self->_tapToEditContext;
  self->_tapToEditContext = 0;

  typeToSiriContext = self->_typeToSiriContext;
  self->_typeToSiriContext = 0;

  self->_whichInvocationcontext = 4 * (v4 != 0);
  carPlayInvocationContext = self->_carPlayInvocationContext;
  self->_carPlayInvocationContext = v4;
}

- (void)setHasInvocationSource:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = SISchemaInvocation;
  v5 = [(SISchemaInstrumentationMessage *)&v37 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaInvocation *)self viewContainer];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SISchemaInvocation *)self deleteViewContainer];
  }

  v9 = [(SISchemaInvocation *)self carPlayInvocationContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SISchemaInvocation *)self deleteCarPlayInvocationContext];
  }

  v12 = [(SISchemaInvocation *)self cardInvocationContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(SISchemaInvocation *)self deleteCardInvocationContext];
  }

  v15 = [(SISchemaInvocation *)self tvRemoteInvocationContext];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(SISchemaInvocation *)self deleteTvRemoteInvocationContext];
  }

  v18 = [(SISchemaInvocation *)self keyboardInvocationContext];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(SISchemaInvocation *)self deleteKeyboardInvocationContext];
  }

  v21 = [(SISchemaInvocation *)self hardwareButtonInvocationContext];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(SISchemaInvocation *)self deleteHardwareButtonInvocationContext];
  }

  v24 = [(SISchemaInvocation *)self bluetoothCarInvocationContext];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(SISchemaInvocation *)self deleteBluetoothCarInvocationContext];
  }

  v27 = [(SISchemaInvocation *)self tapToEditContext];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(SISchemaInvocation *)self deleteTapToEditContext];
  }

  v30 = [(SISchemaInvocation *)self typeToSiriContext];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(SISchemaInvocation *)self deleteTypeToSiriContext];
  }

  v33 = [(SISchemaInvocation *)self linkId];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(SISchemaInvocation *)self deleteLinkId];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end