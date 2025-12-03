@interface SISchemaInvocation
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaBluetoothCarInvocationContext)bluetoothCarInvocationContext;
- (SISchemaCarPlayInvocationContext)carPlayInvocationContext;
- (SISchemaCardSectionKeyboardInvocationContext)keyboardInvocationContext;
- (SISchemaHardwareButtonInvocationContext)hardwareButtonInvocationContext;
- (SISchemaInvocation)initWithDictionary:(id)dictionary;
- (SISchemaInvocation)initWithJSON:(id)n;
- (SISchemaTVRemoteInvocationContext)tvRemoteInvocationContext;
- (SISchemaTapToEditInvocationContext)tapToEditContext;
- (SISchemaTypeToSiriInvocationContext)typeToSiriContext;
- (SISchemaVerticalLayoutCardSectionInvocationContext)cardInvocationContext;
- (id)applySensitiveConditionsPolicy:(id)policy;
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
- (void)setBluetoothCarInvocationContext:(id)context;
- (void)setCarPlayInvocationContext:(id)context;
- (void)setCardInvocationContext:(id)context;
- (void)setHardwareButtonInvocationContext:(id)context;
- (void)setHasInvocationSource:(BOOL)source;
- (void)setHasIsDeviceLocked:(BOOL)locked;
- (void)setKeyboardInvocationContext:(id)context;
- (void)setTapToEditContext:(id)context;
- (void)setTvRemoteInvocationContext:(id)context;
- (void)setTypeToSiriContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation SISchemaInvocation

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_bluetoothCarInvocationContext)
  {
    bluetoothCarInvocationContext = [(SISchemaInvocation *)self bluetoothCarInvocationContext];
    dictionaryRepresentation = [bluetoothCarInvocationContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"bluetoothCarInvocationContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"bluetoothCarInvocationContext"];
    }
  }

  if (self->_carPlayInvocationContext)
  {
    carPlayInvocationContext = [(SISchemaInvocation *)self carPlayInvocationContext];
    dictionaryRepresentation2 = [carPlayInvocationContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"carPlayInvocationContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"carPlayInvocationContext"];
    }
  }

  if (self->_cardInvocationContext)
  {
    cardInvocationContext = [(SISchemaInvocation *)self cardInvocationContext];
    dictionaryRepresentation3 = [cardInvocationContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"cardInvocationContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"cardInvocationContext"];
    }
  }

  if (self->_hardwareButtonInvocationContext)
  {
    hardwareButtonInvocationContext = [(SISchemaInvocation *)self hardwareButtonInvocationContext];
    dictionaryRepresentation4 = [hardwareButtonInvocationContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"hardwareButtonInvocationContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"hardwareButtonInvocationContext"];
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

    [dictionary setObject:v21 forKeyedSubscript:@"invocationAction"];
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

  [dictionary setObject:v23 forKeyedSubscript:@"invocationSource"];
  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaInvocation isDeviceLocked](self, "isDeviceLocked")}];
    [dictionary setObject:v17 forKeyedSubscript:@"isDeviceLocked"];
  }

LABEL_25:
  if (self->_keyboardInvocationContext)
  {
    keyboardInvocationContext = [(SISchemaInvocation *)self keyboardInvocationContext];
    dictionaryRepresentation5 = [keyboardInvocationContext dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"keyboardInvocationContext"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"keyboardInvocationContext"];
    }
  }

  if (self->_linkId)
  {
    linkId = [(SISchemaInvocation *)self linkId];
    dictionaryRepresentation6 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_tapToEditContext)
  {
    tapToEditContext = [(SISchemaInvocation *)self tapToEditContext];
    dictionaryRepresentation7 = [tapToEditContext dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"tapToEditContext"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"tapToEditContext"];
    }
  }

  if (self->_tvRemoteInvocationContext)
  {
    tvRemoteInvocationContext = [(SISchemaInvocation *)self tvRemoteInvocationContext];
    dictionaryRepresentation8 = [tvRemoteInvocationContext dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"tvRemoteInvocationContext"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"tvRemoteInvocationContext"];
    }
  }

  if (self->_typeToSiriContext)
  {
    typeToSiriContext = [(SISchemaInvocation *)self typeToSiriContext];
    dictionaryRepresentation9 = [typeToSiriContext dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"typeToSiriContext"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"typeToSiriContext"];
    }
  }

  if (self->_viewContainer)
  {
    viewContainer = [(SISchemaInvocation *)self viewContainer];
    dictionaryRepresentation10 = [viewContainer dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"viewContainer"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"viewContainer"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (SISchemaInvocation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = SISchemaInvocation;
  v5 = [(SISchemaInvocation *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"invocationAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaInvocation setInvocationAction:](v5, "setInvocationAction:", [v6 intValue]);
    }

    v36 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"invocationSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaInvocation setInvocationSource:](v5, "setInvocationSource:", [v7 intValue]);
    }

    v35 = v7;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"viewContainer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaViewContainer alloc] initWithDictionary:v8];
      [(SISchemaInvocation *)v5 setViewContainer:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"carPlayInvocationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaCarPlayInvocationContext alloc] initWithDictionary:v10];
      [(SISchemaInvocation *)v5 setCarPlayInvocationContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"cardInvocationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaVerticalLayoutCardSectionInvocationContext alloc] initWithDictionary:v12];
      [(SISchemaInvocation *)v5 setCardInvocationContext:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"tvRemoteInvocationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaTVRemoteInvocationContext alloc] initWithDictionary:v14];
      [(SISchemaInvocation *)v5 setTvRemoteInvocationContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:{@"keyboardInvocationContext", v14}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaCardSectionKeyboardInvocationContext alloc] initWithDictionary:v16];
      [(SISchemaInvocation *)v5 setKeyboardInvocationContext:v17];
    }

    v34 = v8;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"hardwareButtonInvocationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[SISchemaHardwareButtonInvocationContext alloc] initWithDictionary:v18];
      [(SISchemaInvocation *)v5 setHardwareButtonInvocationContext:v19];
    }

    v33 = v10;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"bluetoothCarInvocationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[SISchemaBluetoothCarInvocationContext alloc] initWithDictionary:v20];
      [(SISchemaInvocation *)v5 setBluetoothCarInvocationContext:v21];
    }

    v32 = v12;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"tapToEditContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[SISchemaTapToEditInvocationContext alloc] initWithDictionary:v22];
      [(SISchemaInvocation *)v5 setTapToEditContext:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"typeToSiriContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[SISchemaTypeToSiriInvocationContext alloc] initWithDictionary:v24];
      [(SISchemaInvocation *)v5 setTypeToSiriContext:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"isDeviceLocked"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaInvocation setIsDeviceLocked:](v5, "setIsDeviceLocked:", [v26 BOOLValue]);
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
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

- (SISchemaInvocation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaInvocation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaInvocation *)self dictionaryRepresentation];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_63;
  }

  whichInvocationcontext = self->_whichInvocationcontext;
  if (whichInvocationcontext != [equalCopy whichInvocationcontext])
  {
    goto LABEL_63;
  }

  has = self->_has;
  v7 = equalCopy[104];
  if ((*&has & 1) != (v7 & 1))
  {
    goto LABEL_63;
  }

  if (*&has)
  {
    invocationAction = self->_invocationAction;
    if (invocationAction != [equalCopy invocationAction])
    {
      goto LABEL_63;
    }

    has = self->_has;
    v7 = equalCopy[104];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v7 >> 1) & 1))
  {
    goto LABEL_63;
  }

  if (v9)
  {
    invocationSource = self->_invocationSource;
    if (invocationSource != [equalCopy invocationSource])
    {
      goto LABEL_63;
    }
  }

  viewContainer = [(SISchemaInvocation *)self viewContainer];
  viewContainer2 = [equalCopy viewContainer];
  if ((viewContainer != 0) == (viewContainer2 == 0))
  {
    goto LABEL_62;
  }

  viewContainer3 = [(SISchemaInvocation *)self viewContainer];
  if (viewContainer3)
  {
    v14 = viewContainer3;
    viewContainer4 = [(SISchemaInvocation *)self viewContainer];
    viewContainer5 = [equalCopy viewContainer];
    v17 = [viewContainer4 isEqual:viewContainer5];

    if (!v17)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  viewContainer = [(SISchemaInvocation *)self carPlayInvocationContext];
  viewContainer2 = [equalCopy carPlayInvocationContext];
  if ((viewContainer != 0) == (viewContainer2 == 0))
  {
    goto LABEL_62;
  }

  carPlayInvocationContext = [(SISchemaInvocation *)self carPlayInvocationContext];
  if (carPlayInvocationContext)
  {
    v19 = carPlayInvocationContext;
    carPlayInvocationContext2 = [(SISchemaInvocation *)self carPlayInvocationContext];
    carPlayInvocationContext3 = [equalCopy carPlayInvocationContext];
    v22 = [carPlayInvocationContext2 isEqual:carPlayInvocationContext3];

    if (!v22)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  viewContainer = [(SISchemaInvocation *)self cardInvocationContext];
  viewContainer2 = [equalCopy cardInvocationContext];
  if ((viewContainer != 0) == (viewContainer2 == 0))
  {
    goto LABEL_62;
  }

  cardInvocationContext = [(SISchemaInvocation *)self cardInvocationContext];
  if (cardInvocationContext)
  {
    v24 = cardInvocationContext;
    cardInvocationContext2 = [(SISchemaInvocation *)self cardInvocationContext];
    cardInvocationContext3 = [equalCopy cardInvocationContext];
    v27 = [cardInvocationContext2 isEqual:cardInvocationContext3];

    if (!v27)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  viewContainer = [(SISchemaInvocation *)self tvRemoteInvocationContext];
  viewContainer2 = [equalCopy tvRemoteInvocationContext];
  if ((viewContainer != 0) == (viewContainer2 == 0))
  {
    goto LABEL_62;
  }

  tvRemoteInvocationContext = [(SISchemaInvocation *)self tvRemoteInvocationContext];
  if (tvRemoteInvocationContext)
  {
    v29 = tvRemoteInvocationContext;
    tvRemoteInvocationContext2 = [(SISchemaInvocation *)self tvRemoteInvocationContext];
    tvRemoteInvocationContext3 = [equalCopy tvRemoteInvocationContext];
    v32 = [tvRemoteInvocationContext2 isEqual:tvRemoteInvocationContext3];

    if (!v32)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  viewContainer = [(SISchemaInvocation *)self keyboardInvocationContext];
  viewContainer2 = [equalCopy keyboardInvocationContext];
  if ((viewContainer != 0) == (viewContainer2 == 0))
  {
    goto LABEL_62;
  }

  keyboardInvocationContext = [(SISchemaInvocation *)self keyboardInvocationContext];
  if (keyboardInvocationContext)
  {
    v34 = keyboardInvocationContext;
    keyboardInvocationContext2 = [(SISchemaInvocation *)self keyboardInvocationContext];
    keyboardInvocationContext3 = [equalCopy keyboardInvocationContext];
    v37 = [keyboardInvocationContext2 isEqual:keyboardInvocationContext3];

    if (!v37)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  viewContainer = [(SISchemaInvocation *)self hardwareButtonInvocationContext];
  viewContainer2 = [equalCopy hardwareButtonInvocationContext];
  if ((viewContainer != 0) == (viewContainer2 == 0))
  {
    goto LABEL_62;
  }

  hardwareButtonInvocationContext = [(SISchemaInvocation *)self hardwareButtonInvocationContext];
  if (hardwareButtonInvocationContext)
  {
    v39 = hardwareButtonInvocationContext;
    hardwareButtonInvocationContext2 = [(SISchemaInvocation *)self hardwareButtonInvocationContext];
    hardwareButtonInvocationContext3 = [equalCopy hardwareButtonInvocationContext];
    v42 = [hardwareButtonInvocationContext2 isEqual:hardwareButtonInvocationContext3];

    if (!v42)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  viewContainer = [(SISchemaInvocation *)self bluetoothCarInvocationContext];
  viewContainer2 = [equalCopy bluetoothCarInvocationContext];
  if ((viewContainer != 0) == (viewContainer2 == 0))
  {
    goto LABEL_62;
  }

  bluetoothCarInvocationContext = [(SISchemaInvocation *)self bluetoothCarInvocationContext];
  if (bluetoothCarInvocationContext)
  {
    v44 = bluetoothCarInvocationContext;
    bluetoothCarInvocationContext2 = [(SISchemaInvocation *)self bluetoothCarInvocationContext];
    bluetoothCarInvocationContext3 = [equalCopy bluetoothCarInvocationContext];
    v47 = [bluetoothCarInvocationContext2 isEqual:bluetoothCarInvocationContext3];

    if (!v47)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  viewContainer = [(SISchemaInvocation *)self tapToEditContext];
  viewContainer2 = [equalCopy tapToEditContext];
  if ((viewContainer != 0) == (viewContainer2 == 0))
  {
    goto LABEL_62;
  }

  tapToEditContext = [(SISchemaInvocation *)self tapToEditContext];
  if (tapToEditContext)
  {
    v49 = tapToEditContext;
    tapToEditContext2 = [(SISchemaInvocation *)self tapToEditContext];
    tapToEditContext3 = [equalCopy tapToEditContext];
    v52 = [tapToEditContext2 isEqual:tapToEditContext3];

    if (!v52)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  viewContainer = [(SISchemaInvocation *)self typeToSiriContext];
  viewContainer2 = [equalCopy typeToSiriContext];
  if ((viewContainer != 0) == (viewContainer2 == 0))
  {
    goto LABEL_62;
  }

  typeToSiriContext = [(SISchemaInvocation *)self typeToSiriContext];
  if (typeToSiriContext)
  {
    v54 = typeToSiriContext;
    typeToSiriContext2 = [(SISchemaInvocation *)self typeToSiriContext];
    typeToSiriContext3 = [equalCopy typeToSiriContext];
    v57 = [typeToSiriContext2 isEqual:typeToSiriContext3];

    if (!v57)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v58 = (*&self->_has >> 2) & 1;
  if (v58 != ((equalCopy[104] >> 2) & 1))
  {
    goto LABEL_63;
  }

  if (v58)
  {
    isDeviceLocked = self->_isDeviceLocked;
    if (isDeviceLocked != [equalCopy isDeviceLocked])
    {
      goto LABEL_63;
    }
  }

  viewContainer = [(SISchemaInvocation *)self linkId];
  viewContainer2 = [equalCopy linkId];
  if ((viewContainer != 0) != (viewContainer2 == 0))
  {
    linkId = [(SISchemaInvocation *)self linkId];
    if (!linkId)
    {

LABEL_66:
      v65 = 1;
      goto LABEL_64;
    }

    v61 = linkId;
    linkId2 = [(SISchemaInvocation *)self linkId];
    linkId3 = [equalCopy linkId];
    v64 = [linkId2 isEqual:linkId3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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

  viewContainer = [(SISchemaInvocation *)self viewContainer];

  if (viewContainer)
  {
    viewContainer2 = [(SISchemaInvocation *)self viewContainer];
    PBDataWriterWriteSubmessage();
  }

  carPlayInvocationContext = [(SISchemaInvocation *)self carPlayInvocationContext];

  if (carPlayInvocationContext)
  {
    carPlayInvocationContext2 = [(SISchemaInvocation *)self carPlayInvocationContext];
    PBDataWriterWriteSubmessage();
  }

  cardInvocationContext = [(SISchemaInvocation *)self cardInvocationContext];

  if (cardInvocationContext)
  {
    cardInvocationContext2 = [(SISchemaInvocation *)self cardInvocationContext];
    PBDataWriterWriteSubmessage();
  }

  tvRemoteInvocationContext = [(SISchemaInvocation *)self tvRemoteInvocationContext];

  if (tvRemoteInvocationContext)
  {
    tvRemoteInvocationContext2 = [(SISchemaInvocation *)self tvRemoteInvocationContext];
    PBDataWriterWriteSubmessage();
  }

  keyboardInvocationContext = [(SISchemaInvocation *)self keyboardInvocationContext];

  if (keyboardInvocationContext)
  {
    keyboardInvocationContext2 = [(SISchemaInvocation *)self keyboardInvocationContext];
    PBDataWriterWriteSubmessage();
  }

  hardwareButtonInvocationContext = [(SISchemaInvocation *)self hardwareButtonInvocationContext];

  if (hardwareButtonInvocationContext)
  {
    hardwareButtonInvocationContext2 = [(SISchemaInvocation *)self hardwareButtonInvocationContext];
    PBDataWriterWriteSubmessage();
  }

  bluetoothCarInvocationContext = [(SISchemaInvocation *)self bluetoothCarInvocationContext];

  if (bluetoothCarInvocationContext)
  {
    bluetoothCarInvocationContext2 = [(SISchemaInvocation *)self bluetoothCarInvocationContext];
    PBDataWriterWriteSubmessage();
  }

  tapToEditContext = [(SISchemaInvocation *)self tapToEditContext];

  if (tapToEditContext)
  {
    tapToEditContext2 = [(SISchemaInvocation *)self tapToEditContext];
    PBDataWriterWriteSubmessage();
  }

  typeToSiriContext = [(SISchemaInvocation *)self typeToSiriContext];

  if (typeToSiriContext)
  {
    typeToSiriContext2 = [(SISchemaInvocation *)self typeToSiriContext];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  linkId = [(SISchemaInvocation *)self linkId];

  v24 = toCopy;
  if (linkId)
  {
    linkId2 = [(SISchemaInvocation *)self linkId];
    PBDataWriterWriteSubmessage();

    v24 = toCopy;
  }
}

- (void)setHasIsDeviceLocked:(BOOL)locked
{
  if (locked)
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

- (void)setTypeToSiriContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichInvocationcontext = v12;
  typeToSiriContext = self->_typeToSiriContext;
  self->_typeToSiriContext = contextCopy;
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

- (void)setTapToEditContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichInvocationcontext = v12;
  tapToEditContext = self->_tapToEditContext;
  self->_tapToEditContext = contextCopy;
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

- (void)setBluetoothCarInvocationContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichInvocationcontext = v12;
  bluetoothCarInvocationContext = self->_bluetoothCarInvocationContext;
  self->_bluetoothCarInvocationContext = contextCopy;
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

- (void)setHardwareButtonInvocationContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichInvocationcontext = v12;
  hardwareButtonInvocationContext = self->_hardwareButtonInvocationContext;
  self->_hardwareButtonInvocationContext = contextCopy;
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

- (void)setKeyboardInvocationContext:(id)context
{
  contextCopy = context;
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

  self->_whichInvocationcontext = 8 * (contextCopy != 0);
  keyboardInvocationContext = self->_keyboardInvocationContext;
  self->_keyboardInvocationContext = contextCopy;
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

- (void)setTvRemoteInvocationContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichInvocationcontext = v12;
  tvRemoteInvocationContext = self->_tvRemoteInvocationContext;
  self->_tvRemoteInvocationContext = contextCopy;
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

- (void)setCardInvocationContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichInvocationcontext = v12;
  cardInvocationContext = self->_cardInvocationContext;
  self->_cardInvocationContext = contextCopy;
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

- (void)setCarPlayInvocationContext:(id)context
{
  contextCopy = context;
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

  self->_whichInvocationcontext = 4 * (contextCopy != 0);
  carPlayInvocationContext = self->_carPlayInvocationContext;
  self->_carPlayInvocationContext = contextCopy;
}

- (void)setHasInvocationSource:(BOOL)source
{
  if (source)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v37.receiver = self;
  v37.super_class = SISchemaInvocation;
  v5 = [(SISchemaInstrumentationMessage *)&v37 applySensitiveConditionsPolicy:policyCopy];
  viewContainer = [(SISchemaInvocation *)self viewContainer];
  v7 = [viewContainer applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaInvocation *)self deleteViewContainer];
  }

  carPlayInvocationContext = [(SISchemaInvocation *)self carPlayInvocationContext];
  v10 = [carPlayInvocationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaInvocation *)self deleteCarPlayInvocationContext];
  }

  cardInvocationContext = [(SISchemaInvocation *)self cardInvocationContext];
  v13 = [cardInvocationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SISchemaInvocation *)self deleteCardInvocationContext];
  }

  tvRemoteInvocationContext = [(SISchemaInvocation *)self tvRemoteInvocationContext];
  v16 = [tvRemoteInvocationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(SISchemaInvocation *)self deleteTvRemoteInvocationContext];
  }

  keyboardInvocationContext = [(SISchemaInvocation *)self keyboardInvocationContext];
  v19 = [keyboardInvocationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(SISchemaInvocation *)self deleteKeyboardInvocationContext];
  }

  hardwareButtonInvocationContext = [(SISchemaInvocation *)self hardwareButtonInvocationContext];
  v22 = [hardwareButtonInvocationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(SISchemaInvocation *)self deleteHardwareButtonInvocationContext];
  }

  bluetoothCarInvocationContext = [(SISchemaInvocation *)self bluetoothCarInvocationContext];
  v25 = [bluetoothCarInvocationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(SISchemaInvocation *)self deleteBluetoothCarInvocationContext];
  }

  tapToEditContext = [(SISchemaInvocation *)self tapToEditContext];
  v28 = [tapToEditContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(SISchemaInvocation *)self deleteTapToEditContext];
  }

  typeToSiriContext = [(SISchemaInvocation *)self typeToSiriContext];
  v31 = [typeToSiriContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(SISchemaInvocation *)self deleteTypeToSiriContext];
  }

  linkId = [(SISchemaInvocation *)self linkId];
  v34 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
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