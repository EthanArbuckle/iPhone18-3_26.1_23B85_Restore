@interface SIRINLUEXTERNALSystemDialogAct
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALSystemDialogAct

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  idA = self->_idA;
  v21 = v4;
  v6 = v4[2];
  if (idA)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUUID *)idA mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALSystemDialogAct *)self setIdA:?];
  }

  prompted = self->_prompted;
  v8 = v21[5];
  if (prompted)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALSystemPrompted *)prompted mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALSystemDialogAct *)self setPrompted:?];
  }

  offered = self->_offered;
  v10 = v21[4];
  if (offered)
  {
    if (v10)
    {
      [(SIRINLUEXTERNALSystemOffered *)offered mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SIRINLUEXTERNALSystemDialogAct *)self setOffered:?];
  }

  gaveOptions = self->_gaveOptions;
  v12 = v21[1];
  if (gaveOptions)
  {
    if (v12)
    {
      [(SIRINLUEXTERNALSystemGaveOptions *)gaveOptions mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(SIRINLUEXTERNALSystemDialogAct *)self setGaveOptions:?];
  }

  informed = self->_informed;
  v14 = v21[3];
  if (informed)
  {
    if (v14)
    {
      [(SIRINLUEXTERNALSystemInformed *)informed mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(SIRINLUEXTERNALSystemDialogAct *)self setInformed:?];
  }

  reportedSuccess = self->_reportedSuccess;
  v16 = v21[8];
  if (reportedSuccess)
  {
    if (v16)
    {
      [(SIRINLUEXTERNALSystemReportedSuccess *)reportedSuccess mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(SIRINLUEXTERNALSystemDialogAct *)self setReportedSuccess:?];
  }

  reportedFailure = self->_reportedFailure;
  v18 = v21[7];
  if (reportedFailure)
  {
    if (v18)
    {
      [(SIRINLUEXTERNALSystemReportedFailure *)reportedFailure mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(SIRINLUEXTERNALSystemDialogAct *)self setReportedFailure:?];
  }

  renderedText = self->_renderedText;
  v20 = v21[6];
  if (renderedText)
  {
    if (v20)
    {
      [(SIRICOMMONStringValue *)renderedText mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(SIRINLUEXTERNALSystemDialogAct *)self setRenderedText:?];
  }
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUUID *)self->_idA hash];
  v4 = [(SIRINLUEXTERNALSystemPrompted *)self->_prompted hash]^ v3;
  v5 = [(SIRINLUEXTERNALSystemOffered *)self->_offered hash];
  v6 = v4 ^ v5 ^ [(SIRINLUEXTERNALSystemGaveOptions *)self->_gaveOptions hash];
  v7 = [(SIRINLUEXTERNALSystemInformed *)self->_informed hash];
  v8 = v7 ^ [(SIRINLUEXTERNALSystemReportedSuccess *)self->_reportedSuccess hash];
  v9 = v6 ^ v8 ^ [(SIRINLUEXTERNALSystemReportedFailure *)self->_reportedFailure hash];
  return v9 ^ [(SIRICOMMONStringValue *)self->_renderedText hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((idA = self->_idA, !(idA | v4[2])) || -[SIRINLUEXTERNALUUID isEqual:](idA, "isEqual:")) && ((prompted = self->_prompted, !(prompted | v4[5])) || -[SIRINLUEXTERNALSystemPrompted isEqual:](prompted, "isEqual:")) && ((offered = self->_offered, !(offered | v4[4])) || -[SIRINLUEXTERNALSystemOffered isEqual:](offered, "isEqual:")) && ((gaveOptions = self->_gaveOptions, !(gaveOptions | v4[1])) || -[SIRINLUEXTERNALSystemGaveOptions isEqual:](gaveOptions, "isEqual:")) && ((informed = self->_informed, !(informed | v4[3])) || -[SIRINLUEXTERNALSystemInformed isEqual:](informed, "isEqual:")) && ((reportedSuccess = self->_reportedSuccess, !(reportedSuccess | v4[8])) || -[SIRINLUEXTERNALSystemReportedSuccess isEqual:](reportedSuccess, "isEqual:")) && ((reportedFailure = self->_reportedFailure, !(reportedFailure | v4[7])) || -[SIRINLUEXTERNALSystemReportedFailure isEqual:](reportedFailure, "isEqual:")))
  {
    renderedText = self->_renderedText;
    if (renderedText | v4[6])
    {
      v13 = [(SIRICOMMONStringValue *)renderedText isEqual:?];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_idA copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SIRINLUEXTERNALSystemPrompted *)self->_prompted copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(SIRINLUEXTERNALSystemOffered *)self->_offered copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(SIRINLUEXTERNALSystemGaveOptions *)self->_gaveOptions copyWithZone:a3];
  v13 = v5[1];
  v5[1] = v12;

  v14 = [(SIRINLUEXTERNALSystemInformed *)self->_informed copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  v16 = [(SIRINLUEXTERNALSystemReportedSuccess *)self->_reportedSuccess copyWithZone:a3];
  v17 = v5[8];
  v5[8] = v16;

  v18 = [(SIRINLUEXTERNALSystemReportedFailure *)self->_reportedFailure copyWithZone:a3];
  v19 = v5[7];
  v5[7] = v18;

  v20 = [(SIRICOMMONStringValue *)self->_renderedText copyWithZone:a3];
  v21 = v5[6];
  v5[6] = v20;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_idA)
  {
    [v4 setIdA:?];
    v4 = v5;
  }

  if (self->_prompted)
  {
    [v5 setPrompted:?];
    v4 = v5;
  }

  if (self->_offered)
  {
    [v5 setOffered:?];
    v4 = v5;
  }

  if (self->_gaveOptions)
  {
    [v5 setGaveOptions:?];
    v4 = v5;
  }

  if (self->_informed)
  {
    [v5 setInformed:?];
    v4 = v5;
  }

  if (self->_reportedSuccess)
  {
    [v5 setReportedSuccess:?];
    v4 = v5;
  }

  if (self->_reportedFailure)
  {
    [v5 setReportedFailure:?];
    v4 = v5;
  }

  if (self->_renderedText)
  {
    [v5 setRenderedText:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_idA)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_prompted)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_offered)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_gaveOptions)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_informed)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_reportedSuccess)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_reportedFailure)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_renderedText)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  idA = self->_idA;
  if (idA)
  {
    v5 = [(SIRINLUEXTERNALUUID *)idA dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"id_a"];
  }

  prompted = self->_prompted;
  if (prompted)
  {
    v7 = [(SIRINLUEXTERNALSystemPrompted *)prompted dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"prompted"];
  }

  offered = self->_offered;
  if (offered)
  {
    v9 = [(SIRINLUEXTERNALSystemOffered *)offered dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"offered"];
  }

  gaveOptions = self->_gaveOptions;
  if (gaveOptions)
  {
    v11 = [(SIRINLUEXTERNALSystemGaveOptions *)gaveOptions dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"gave_options"];
  }

  informed = self->_informed;
  if (informed)
  {
    v13 = [(SIRINLUEXTERNALSystemInformed *)informed dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"informed"];
  }

  reportedSuccess = self->_reportedSuccess;
  if (reportedSuccess)
  {
    v15 = [(SIRINLUEXTERNALSystemReportedSuccess *)reportedSuccess dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"reported_success"];
  }

  reportedFailure = self->_reportedFailure;
  if (reportedFailure)
  {
    v17 = [(SIRINLUEXTERNALSystemReportedFailure *)reportedFailure dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"reported_failure"];
  }

  renderedText = self->_renderedText;
  if (renderedText)
  {
    v19 = [(SIRICOMMONStringValue *)renderedText dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"rendered_text"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSystemDialogAct;
  v4 = [(SIRINLUEXTERNALSystemDialogAct *)&v8 description];
  v5 = [(SIRINLUEXTERNALSystemDialogAct *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end