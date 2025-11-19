@interface IFTSchemaIFTActionFailureFailure
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTActionFailureDeveloperDefinedError)actionFailureDeveloperDefinedError;
- (IFTSchemaIFTActionFailureFailure)initWithDictionary:(id)a3;
- (IFTSchemaIFTActionFailureFailure)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteActionCanceled;
- (void)deleteActionFailureDeveloperDefinedError;
- (void)deleteActionNotAllowed;
- (void)deleteBluetoothDisabled;
- (void)deleteDeveloperDefinedError;
- (void)deleteEntityNotFound;
- (void)deleteFeatureCurrentlyRestricted;
- (void)deleteLocationDisabled;
- (void)deleteNetworkFailure;
- (void)deleteNoMatchingTool;
- (void)deletePartialFailure;
- (void)deletePreciseLocationDisabled;
- (void)deletePreflightCheckFailure;
- (void)deleteSearchSucceededNoMatchingTool;
- (void)deleteUnableToCancel;
- (void)deleteUnableToHandleRequest;
- (void)deleteUnableToUndo;
- (void)deleteUnsupportedOnDevice;
- (void)deleteValueDisambiguationRejected;
- (void)deleteWifiDisabled;
- (void)setActionCanceled:(BOOL)a3;
- (void)setActionFailureDeveloperDefinedError:(id)a3;
- (void)setActionNotAllowed:(BOOL)a3;
- (void)setBluetoothDisabled:(BOOL)a3;
- (void)setDeveloperDefinedError:(BOOL)a3;
- (void)setEntityNotFound:(BOOL)a3;
- (void)setFeatureCurrentlyRestricted:(BOOL)a3;
- (void)setLocationDisabled:(BOOL)a3;
- (void)setNetworkFailure:(BOOL)a3;
- (void)setNoMatchingTool:(BOOL)a3;
- (void)setPartialFailure:(BOOL)a3;
- (void)setPreciseLocationDisabled:(BOOL)a3;
- (void)setPreflightCheckFailure:(BOOL)a3;
- (void)setSearchSucceededNoMatchingTool:(BOOL)a3;
- (void)setUnableToCancel:(BOOL)a3;
- (void)setUnableToHandleRequest:(BOOL)a3;
- (void)setUnableToUndo:(BOOL)a3;
- (void)setUnsupportedOnDevice:(BOOL)a3;
- (void)setValueDisambiguationRejected:(BOOL)a3;
- (void)setWifiDisabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTActionFailureFailure

- (IFTSchemaIFTActionFailureFailure)initWithDictionary:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = IFTSchemaIFTActionFailureFailure;
  v5 = [(IFTSchemaIFTActionFailureFailure *)&v45 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"preflightCheckFailure"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setPreflightCheckFailure:](v5, "setPreflightCheckFailure:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"preciseLocationDisabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setPreciseLocationDisabled:](v5, "setPreciseLocationDisabled:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"locationDisabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setLocationDisabled:](v5, "setLocationDisabled:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"wifiDisabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setWifiDisabled:](v5, "setWifiDisabled:", [v9 BOOLValue]);
    }

    v35 = v9;
    v10 = [v4 objectForKeyedSubscript:@"bluetoothDisabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setBluetoothDisabled:](v5, "setBluetoothDisabled:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"networkFailure"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setNetworkFailure:](v5, "setNetworkFailure:", [v11 BOOLValue]);
    }

    v12 = v8;
    v13 = [v4 objectForKeyedSubscript:@"partialFailure"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setPartialFailure:](v5, "setPartialFailure:", [v13 BOOLValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"unsupportedOnDevice"];
    objc_opt_class();
    v44 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setUnsupportedOnDevice:](v5, "setUnsupportedOnDevice:", [v14 BOOLValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"featureCurrentlyRestricted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setFeatureCurrentlyRestricted:](v5, "setFeatureCurrentlyRestricted:", [v15 BOOLValue]);
    }

    v34 = v15;
    v16 = [v4 objectForKeyedSubscript:@"entityNotFound"];
    objc_opt_class();
    v43 = v16;
    v39 = v12;
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setEntityNotFound:](v5, "setEntityNotFound:", [v16 BOOLValue]);
    }

    v17 = v6;
    v18 = [v4 objectForKeyedSubscript:@"actionNotAllowed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setActionNotAllowed:](v5, "setActionNotAllowed:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"unableToUndo"];
    objc_opt_class();
    v42 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setUnableToUndo:](v5, "setUnableToUndo:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"actionCanceled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setActionCanceled:](v5, "setActionCanceled:", [v20 BOOLValue]);
    }

    v37 = v11;
    v21 = [v4 objectForKeyedSubscript:@"valueDisambiguationRejected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setValueDisambiguationRejected:](v5, "setValueDisambiguationRejected:", [v21 BOOLValue]);
    }

    v32 = v21;
    v36 = v13;
    v22 = [v4 objectForKeyedSubscript:@"noMatchingTool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setNoMatchingTool:](v5, "setNoMatchingTool:", [v22 BOOLValue]);
    }

    v33 = v20;
    v40 = v7;
    v41 = v17;
    v23 = [v4 objectForKeyedSubscript:@"developerDefinedError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setDeveloperDefinedError:](v5, "setDeveloperDefinedError:", [v23 BOOLValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"actionFailureDeveloperDefinedError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[IFTSchemaIFTActionFailureDeveloperDefinedError alloc] initWithDictionary:v24];
      [(IFTSchemaIFTActionFailureFailure *)v5 setActionFailureDeveloperDefinedError:v25];
    }

    v38 = v10;
    v26 = [v4 objectForKeyedSubscript:@"unableToCancel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setUnableToCancel:](v5, "setUnableToCancel:", [v26 BOOLValue]);
    }

    v27 = v18;
    v28 = [v4 objectForKeyedSubscript:@"searchSucceededNoMatchingTool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setSearchSucceededNoMatchingTool:](v5, "setSearchSucceededNoMatchingTool:", [v28 BOOLValue]);
    }

    v29 = [v4 objectForKeyedSubscript:@"unableToHandleRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureFailure setUnableToHandleRequest:](v5, "setUnableToHandleRequest:", [v29 BOOLValue]);
    }

    v30 = v5;
  }

  return v5;
}

- (IFTSchemaIFTActionFailureFailure)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionFailureFailure *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTActionFailureFailure *)self dictionaryRepresentation];
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
  if (self->_whichOneof_Actionfailurefailure == 13)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure actionCanceled](self, "actionCanceled")}];
    [v3 setObject:v4 forKeyedSubscript:@"actionCanceled"];
  }

  if (self->_actionFailureDeveloperDefinedError)
  {
    v5 = [(IFTSchemaIFTActionFailureFailure *)self actionFailureDeveloperDefinedError];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"actionFailureDeveloperDefinedError"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"actionFailureDeveloperDefinedError"];
    }
  }

  whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  if (whichOneof_Actionfailurefailure == 11)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure actionNotAllowed](self, "actionNotAllowed")}];
    [v3 setObject:v9 forKeyedSubscript:@"actionNotAllowed"];

    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 5)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure bluetoothDisabled](self, "bluetoothDisabled")}];
    [v3 setObject:v10 forKeyedSubscript:@"bluetoothDisabled"];

    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 16)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure developerDefinedError](self, "developerDefinedError")}];
    [v3 setObject:v11 forKeyedSubscript:@"developerDefinedError"];

    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 10)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure entityNotFound](self, "entityNotFound")}];
    [v3 setObject:v12 forKeyedSubscript:@"entityNotFound"];

    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 9)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure featureCurrentlyRestricted](self, "featureCurrentlyRestricted")}];
    [v3 setObject:v13 forKeyedSubscript:@"featureCurrentlyRestricted"];

    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 3)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure locationDisabled](self, "locationDisabled")}];
    [v3 setObject:v14 forKeyedSubscript:@"locationDisabled"];

    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 6)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure networkFailure](self, "networkFailure")}];
    [v3 setObject:v15 forKeyedSubscript:@"networkFailure"];

    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 15)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure noMatchingTool](self, "noMatchingTool")}];
    [v3 setObject:v16 forKeyedSubscript:@"noMatchingTool"];

    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 7)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure partialFailure](self, "partialFailure")}];
    [v3 setObject:v17 forKeyedSubscript:@"partialFailure"];

    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 2)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure preciseLocationDisabled](self, "preciseLocationDisabled")}];
    [v3 setObject:v18 forKeyedSubscript:@"preciseLocationDisabled"];

    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 1)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure preflightCheckFailure](self, "preflightCheckFailure")}];
    [v3 setObject:v19 forKeyedSubscript:@"preflightCheckFailure"];

    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 19)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure searchSucceededNoMatchingTool](self, "searchSucceededNoMatchingTool")}];
    [v3 setObject:v20 forKeyedSubscript:@"searchSucceededNoMatchingTool"];

    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 18)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure unableToCancel](self, "unableToCancel")}];
    [v3 setObject:v21 forKeyedSubscript:@"unableToCancel"];

    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 20)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure unableToHandleRequest](self, "unableToHandleRequest")}];
    [v3 setObject:v22 forKeyedSubscript:@"unableToHandleRequest"];

    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 12)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure unableToUndo](self, "unableToUndo")}];
    [v3 setObject:v23 forKeyedSubscript:@"unableToUndo"];

    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 8)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure unsupportedOnDevice](self, "unsupportedOnDevice")}];
    [v3 setObject:v24 forKeyedSubscript:@"unsupportedOnDevice"];

    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 14)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure valueDisambiguationRejected](self, "valueDisambiguationRejected")}];
    [v3 setObject:v25 forKeyedSubscript:@"valueDisambiguationRejected"];

    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 4)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionFailureFailure wifiDisabled](self, "wifiDisabled")}];
    [v3 setObject:v26 forKeyedSubscript:@"wifiDisabled"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  switch(self->_whichOneof_Actionfailurefailure)
  {
    case 1uLL:
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v19 = 0;
      v20 = 0;
      v16 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v17 = 2654435761 * self->_preflightCheckFailure;
      v18 = 0;
      break;
    case 2uLL:
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v19 = 0;
      v20 = 0;
      v17 = 0;
      v18 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v16 = 2654435761 * self->_preciseLocationDisabled;
      break;
    case 3uLL:
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v19 = 0;
      v20 = 0;
      v16 = 0;
      v17 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v18 = 2654435761 * self->_locationDisabled;
      break;
    case 4uLL:
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v19 = 0;
      v20 = 0;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v3 = 2654435761 * self->_wifiDisabled;
      break;
    case 5uLL:
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v19 = 2654435761 * self->_bluetoothDisabled;
      v20 = 0;
      break;
    case 6uLL:
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v19 = 0;
      v20 = 0;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v3 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v4 = 2654435761 * self->_networkFailure;
      break;
    case 7uLL:
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v18 = 0;
      v19 = 0;
      v16 = 0;
      v17 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v20 = 2654435761 * self->_partialFailure;
      break;
    case 8uLL:
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v19 = 0;
      v20 = 0;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v3 = 0;
      v4 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v5 = 2654435761 * self->_unsupportedOnDevice;
      break;
    case 9uLL:
      v23 = 0;
      v24 = 0;
      v19 = 0;
      v20 = 0;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v21 = 2654435761 * self->_featureCurrentlyRestricted;
      v22 = 0;
      break;
    case 0xAuLL:
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v19 = 0;
      v20 = 0;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v6 = 2654435761 * self->_entityNotFound;
      break;
    case 0xBuLL:
      v23 = 0;
      v24 = 0;
      v20 = 0;
      v21 = 0;
      v18 = 0;
      v19 = 0;
      v16 = 0;
      v17 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v22 = 2654435761 * self->_actionNotAllowed;
      break;
    case 0xCuLL:
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v19 = 0;
      v20 = 0;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v8 = 0;
      v9 = 0;
      v7 = 2654435761 * self->_unableToUndo;
      break;
    case 0xDuLL:
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v19 = 0;
      v20 = 0;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v23 = 2654435761 * self->_actionCanceled;
      break;
    case 0xEuLL:
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v19 = 0;
      v20 = 0;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v9 = 0;
      v8 = 2654435761 * self->_valueDisambiguationRejected;
      break;
    case 0xFuLL:
      v22 = 0;
      v23 = 0;
      v20 = 0;
      v21 = 0;
      v18 = 0;
      v19 = 0;
      v16 = 0;
      v17 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v24 = 2654435761 * self->_noMatchingTool;
      break;
    case 0x10uLL:
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v19 = 0;
      v20 = 0;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 2654435761 * self->_developerDefinedError;
      break;
    default:
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v19 = 0;
      v20 = 0;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      break;
  }

  v10 = [(IFTSchemaIFTActionFailureDeveloperDefinedError *)self->_actionFailureDeveloperDefinedError hash];
  whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  switch(whichOneof_Actionfailurefailure)
  {
    case 0x14uLL:
      v12 = 0;
      v14 = 0;
      v13 = 2654435761 * self->_unableToHandleRequest;
      break;
    case 0x13uLL:
      v14 = 0;
      v13 = 0;
      v12 = 2654435761 * self->_searchSucceededNoMatchingTool;
      break;
    case 0x12uLL:
      v12 = 0;
      v13 = 0;
      v14 = 2654435761 * self->_unableToCancel;
      break;
    default:
      v12 = 0;
      v14 = 0;
      v13 = 0;
      break;
  }

  return v23 ^ v24 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v12 ^ v14 ^ v10 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  if (whichOneof_Actionfailurefailure != [v4 whichOneof_Actionfailurefailure])
  {
    goto LABEL_28;
  }

  preflightCheckFailure = self->_preflightCheckFailure;
  if (preflightCheckFailure != [v4 preflightCheckFailure])
  {
    goto LABEL_28;
  }

  preciseLocationDisabled = self->_preciseLocationDisabled;
  if (preciseLocationDisabled != [v4 preciseLocationDisabled])
  {
    goto LABEL_28;
  }

  locationDisabled = self->_locationDisabled;
  if (locationDisabled != [v4 locationDisabled])
  {
    goto LABEL_28;
  }

  wifiDisabled = self->_wifiDisabled;
  if (wifiDisabled != [v4 wifiDisabled])
  {
    goto LABEL_28;
  }

  bluetoothDisabled = self->_bluetoothDisabled;
  if (bluetoothDisabled != [v4 bluetoothDisabled])
  {
    goto LABEL_28;
  }

  networkFailure = self->_networkFailure;
  if (networkFailure != [v4 networkFailure])
  {
    goto LABEL_28;
  }

  partialFailure = self->_partialFailure;
  if (partialFailure != [v4 partialFailure])
  {
    goto LABEL_28;
  }

  unsupportedOnDevice = self->_unsupportedOnDevice;
  if (unsupportedOnDevice != [v4 unsupportedOnDevice])
  {
    goto LABEL_28;
  }

  featureCurrentlyRestricted = self->_featureCurrentlyRestricted;
  if (featureCurrentlyRestricted != [v4 featureCurrentlyRestricted])
  {
    goto LABEL_28;
  }

  entityNotFound = self->_entityNotFound;
  if (entityNotFound != [v4 entityNotFound])
  {
    goto LABEL_28;
  }

  actionNotAllowed = self->_actionNotAllowed;
  if (actionNotAllowed != [v4 actionNotAllowed])
  {
    goto LABEL_28;
  }

  unableToUndo = self->_unableToUndo;
  if (unableToUndo != [v4 unableToUndo])
  {
    goto LABEL_28;
  }

  actionCanceled = self->_actionCanceled;
  if (actionCanceled != [v4 actionCanceled])
  {
    goto LABEL_28;
  }

  valueDisambiguationRejected = self->_valueDisambiguationRejected;
  if (valueDisambiguationRejected != [v4 valueDisambiguationRejected])
  {
    goto LABEL_28;
  }

  noMatchingTool = self->_noMatchingTool;
  if (noMatchingTool != [v4 noMatchingTool])
  {
    goto LABEL_28;
  }

  developerDefinedError = self->_developerDefinedError;
  if (developerDefinedError != [v4 developerDefinedError])
  {
    goto LABEL_28;
  }

  v22 = [(IFTSchemaIFTActionFailureFailure *)self actionFailureDeveloperDefinedError];
  v23 = [v4 actionFailureDeveloperDefinedError];
  v24 = v23;
  if ((v22 != 0) == (v23 == 0))
  {

LABEL_28:
    v33 = 0;
    goto LABEL_29;
  }

  v25 = [(IFTSchemaIFTActionFailureFailure *)self actionFailureDeveloperDefinedError];
  if (v25)
  {
    v26 = v25;
    v27 = [(IFTSchemaIFTActionFailureFailure *)self actionFailureDeveloperDefinedError];
    v28 = [v4 actionFailureDeveloperDefinedError];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  unableToCancel = self->_unableToCancel;
  if (unableToCancel != [v4 unableToCancel])
  {
    goto LABEL_28;
  }

  searchSucceededNoMatchingTool = self->_searchSucceededNoMatchingTool;
  if (searchSucceededNoMatchingTool != [v4 searchSucceededNoMatchingTool])
  {
    goto LABEL_28;
  }

  unableToHandleRequest = self->_unableToHandleRequest;
  v33 = unableToHandleRequest == [v4 unableToHandleRequest];
LABEL_29:

  return v33;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  if (whichOneof_Actionfailurefailure == 1)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 2)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 3)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 4)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 5)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 6)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 7)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 8)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 9)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 10)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 11)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 12)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 13)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 14)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 15)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Actionfailurefailure = self->_whichOneof_Actionfailurefailure;
  }

  if (whichOneof_Actionfailurefailure == 16)
  {
    PBDataWriterWriteBOOLField();
  }

  v5 = [(IFTSchemaIFTActionFailureFailure *)self actionFailureDeveloperDefinedError];

  if (v5)
  {
    v6 = [(IFTSchemaIFTActionFailureFailure *)self actionFailureDeveloperDefinedError];
    PBDataWriterWriteSubmessage();
  }

  v7 = self->_whichOneof_Actionfailurefailure;
  if (v7 == 18)
  {
    PBDataWriterWriteBOOLField();
    v7 = self->_whichOneof_Actionfailurefailure;
  }

  if (v7 == 19)
  {
    PBDataWriterWriteBOOLField();
    v7 = self->_whichOneof_Actionfailurefailure;
  }

  if (v7 == 20)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)deleteUnableToHandleRequest
{
  if (self->_whichOneof_Actionfailurefailure == 20)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_unableToHandleRequest = 0;
  }
}

- (void)setUnableToHandleRequest:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_whichOneof_Actionfailurefailure = 20;
  self->_unableToHandleRequest = a3;
}

- (void)deleteSearchSucceededNoMatchingTool
{
  if (self->_whichOneof_Actionfailurefailure == 19)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_searchSucceededNoMatchingTool = 0;
  }
}

- (void)setSearchSucceededNoMatchingTool:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 19;
  self->_searchSucceededNoMatchingTool = a3;
}

- (void)deleteUnableToCancel
{
  if (self->_whichOneof_Actionfailurefailure == 18)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_unableToCancel = 0;
  }
}

- (void)setUnableToCancel:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 18;
  self->_unableToCancel = a3;
}

- (void)deleteActionFailureDeveloperDefinedError
{
  if (self->_whichOneof_Actionfailurefailure == 17)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_actionFailureDeveloperDefinedError = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTActionFailureDeveloperDefinedError)actionFailureDeveloperDefinedError
{
  if (self->_whichOneof_Actionfailurefailure == 17)
  {
    v3 = self->_actionFailureDeveloperDefinedError;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionFailureDeveloperDefinedError:(id)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  v3 = 17;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichOneof_Actionfailurefailure = v3;
  objc_storeStrong(&self->_actionFailureDeveloperDefinedError, a3);
}

- (void)deleteDeveloperDefinedError
{
  if (self->_whichOneof_Actionfailurefailure == 16)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_developerDefinedError = 0;
  }
}

- (void)setDeveloperDefinedError:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 16;
  self->_developerDefinedError = a3;
}

- (void)deleteNoMatchingTool
{
  if (self->_whichOneof_Actionfailurefailure == 15)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_noMatchingTool = 0;
  }
}

- (void)setNoMatchingTool:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 15;
  self->_noMatchingTool = a3;
}

- (void)deleteValueDisambiguationRejected
{
  if (self->_whichOneof_Actionfailurefailure == 14)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_valueDisambiguationRejected = 0;
  }
}

- (void)setValueDisambiguationRejected:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 14;
  self->_valueDisambiguationRejected = a3;
}

- (void)deleteActionCanceled
{
  if (self->_whichOneof_Actionfailurefailure == 13)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_actionCanceled = 0;
  }
}

- (void)setActionCanceled:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 13;
  self->_actionCanceled = a3;
}

- (void)deleteUnableToUndo
{
  if (self->_whichOneof_Actionfailurefailure == 12)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_unableToUndo = 0;
  }
}

- (void)setUnableToUndo:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 12;
  self->_unableToUndo = a3;
}

- (void)deleteActionNotAllowed
{
  if (self->_whichOneof_Actionfailurefailure == 11)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_actionNotAllowed = 0;
  }
}

- (void)setActionNotAllowed:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 11;
  self->_actionNotAllowed = a3;
}

- (void)deleteEntityNotFound
{
  if (self->_whichOneof_Actionfailurefailure == 10)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_entityNotFound = 0;
  }
}

- (void)setEntityNotFound:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 10;
  self->_entityNotFound = a3;
}

- (void)deleteFeatureCurrentlyRestricted
{
  if (self->_whichOneof_Actionfailurefailure == 9)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_featureCurrentlyRestricted = 0;
  }
}

- (void)setFeatureCurrentlyRestricted:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 9;
  self->_featureCurrentlyRestricted = a3;
}

- (void)deleteUnsupportedOnDevice
{
  if (self->_whichOneof_Actionfailurefailure == 8)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_unsupportedOnDevice = 0;
  }
}

- (void)setUnsupportedOnDevice:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 8;
  self->_unsupportedOnDevice = a3;
}

- (void)deletePartialFailure
{
  if (self->_whichOneof_Actionfailurefailure == 7)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_partialFailure = 0;
  }
}

- (void)setPartialFailure:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 7;
  self->_partialFailure = a3;
}

- (void)deleteNetworkFailure
{
  if (self->_whichOneof_Actionfailurefailure == 6)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_networkFailure = 0;
  }
}

- (void)setNetworkFailure:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 6;
  self->_networkFailure = a3;
}

- (void)deleteBluetoothDisabled
{
  if (self->_whichOneof_Actionfailurefailure == 5)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_bluetoothDisabled = 0;
  }
}

- (void)setBluetoothDisabled:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 5;
  self->_bluetoothDisabled = a3;
}

- (void)deleteWifiDisabled
{
  if (self->_whichOneof_Actionfailurefailure == 4)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_wifiDisabled = 0;
  }
}

- (void)setWifiDisabled:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 4;
  self->_wifiDisabled = a3;
}

- (void)deleteLocationDisabled
{
  if (self->_whichOneof_Actionfailurefailure == 3)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_locationDisabled = 0;
  }
}

- (void)setLocationDisabled:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_preciseLocationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 3;
  self->_locationDisabled = a3;
}

- (void)deletePreciseLocationDisabled
{
  if (self->_whichOneof_Actionfailurefailure == 2)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_preciseLocationDisabled = 0;
  }
}

- (void)setPreciseLocationDisabled:(BOOL)a3
{
  self->_preflightCheckFailure = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 2;
  self->_preciseLocationDisabled = a3;
}

- (void)deletePreflightCheckFailure
{
  if (self->_whichOneof_Actionfailurefailure == 1)
  {
    self->_whichOneof_Actionfailurefailure = 0;
    self->_preflightCheckFailure = 0;
  }
}

- (void)setPreflightCheckFailure:(BOOL)a3
{
  self->_preciseLocationDisabled = 0;
  self->_locationDisabled = 0;
  self->_wifiDisabled = 0;
  self->_bluetoothDisabled = 0;
  self->_networkFailure = 0;
  self->_partialFailure = 0;
  self->_unsupportedOnDevice = 0;
  self->_featureCurrentlyRestricted = 0;
  self->_entityNotFound = 0;
  self->_actionNotAllowed = 0;
  self->_unableToUndo = 0;
  self->_actionCanceled = 0;
  self->_valueDisambiguationRejected = 0;
  self->_noMatchingTool = 0;
  self->_developerDefinedError = 0;
  actionFailureDeveloperDefinedError = self->_actionFailureDeveloperDefinedError;
  self->_actionFailureDeveloperDefinedError = 0;

  self->_unableToCancel = 0;
  self->_searchSucceededNoMatchingTool = 0;
  self->_unableToHandleRequest = 0;
  self->_whichOneof_Actionfailurefailure = 1;
  self->_preflightCheckFailure = a3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTActionFailureFailure;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTActionFailureFailure *)self actionFailureDeveloperDefinedError:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(IFTSchemaIFTActionFailureFailure *)self deleteActionFailureDeveloperDefinedError];
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