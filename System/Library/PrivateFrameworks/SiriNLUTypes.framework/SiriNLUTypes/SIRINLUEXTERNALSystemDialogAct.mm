@interface SIRINLUEXTERNALSystemDialogAct
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALSystemDialogAct

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  idA = self->_idA;
  v21 = fromCopy;
  v6 = fromCopy[2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((idA = self->_idA, !(idA | equalCopy[2])) || -[SIRINLUEXTERNALUUID isEqual:](idA, "isEqual:")) && ((prompted = self->_prompted, !(prompted | equalCopy[5])) || -[SIRINLUEXTERNALSystemPrompted isEqual:](prompted, "isEqual:")) && ((offered = self->_offered, !(offered | equalCopy[4])) || -[SIRINLUEXTERNALSystemOffered isEqual:](offered, "isEqual:")) && ((gaveOptions = self->_gaveOptions, !(gaveOptions | equalCopy[1])) || -[SIRINLUEXTERNALSystemGaveOptions isEqual:](gaveOptions, "isEqual:")) && ((informed = self->_informed, !(informed | equalCopy[3])) || -[SIRINLUEXTERNALSystemInformed isEqual:](informed, "isEqual:")) && ((reportedSuccess = self->_reportedSuccess, !(reportedSuccess | equalCopy[8])) || -[SIRINLUEXTERNALSystemReportedSuccess isEqual:](reportedSuccess, "isEqual:")) && ((reportedFailure = self->_reportedFailure, !(reportedFailure | equalCopy[7])) || -[SIRINLUEXTERNALSystemReportedFailure isEqual:](reportedFailure, "isEqual:")))
  {
    renderedText = self->_renderedText;
    if (renderedText | equalCopy[6])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_idA copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SIRINLUEXTERNALSystemPrompted *)self->_prompted copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(SIRINLUEXTERNALSystemOffered *)self->_offered copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(SIRINLUEXTERNALSystemGaveOptions *)self->_gaveOptions copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  v14 = [(SIRINLUEXTERNALSystemInformed *)self->_informed copyWithZone:zone];
  v15 = v5[3];
  v5[3] = v14;

  v16 = [(SIRINLUEXTERNALSystemReportedSuccess *)self->_reportedSuccess copyWithZone:zone];
  v17 = v5[8];
  v5[8] = v16;

  v18 = [(SIRINLUEXTERNALSystemReportedFailure *)self->_reportedFailure copyWithZone:zone];
  v19 = v5[7];
  v5[7] = v18;

  v20 = [(SIRICOMMONStringValue *)self->_renderedText copyWithZone:zone];
  v21 = v5[6];
  v5[6] = v20;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_idA)
  {
    [toCopy setIdA:?];
    toCopy = v5;
  }

  if (self->_prompted)
  {
    [v5 setPrompted:?];
    toCopy = v5;
  }

  if (self->_offered)
  {
    [v5 setOffered:?];
    toCopy = v5;
  }

  if (self->_gaveOptions)
  {
    [v5 setGaveOptions:?];
    toCopy = v5;
  }

  if (self->_informed)
  {
    [v5 setInformed:?];
    toCopy = v5;
  }

  if (self->_reportedSuccess)
  {
    [v5 setReportedSuccess:?];
    toCopy = v5;
  }

  if (self->_reportedFailure)
  {
    [v5 setReportedFailure:?];
    toCopy = v5;
  }

  if (self->_renderedText)
  {
    [v5 setRenderedText:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_idA)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_prompted)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_offered)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_gaveOptions)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_informed)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_reportedSuccess)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_reportedFailure)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_renderedText)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  idA = self->_idA;
  if (idA)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUUID *)idA dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"id_a"];
  }

  prompted = self->_prompted;
  if (prompted)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALSystemPrompted *)prompted dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"prompted"];
  }

  offered = self->_offered;
  if (offered)
  {
    dictionaryRepresentation3 = [(SIRINLUEXTERNALSystemOffered *)offered dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"offered"];
  }

  gaveOptions = self->_gaveOptions;
  if (gaveOptions)
  {
    dictionaryRepresentation4 = [(SIRINLUEXTERNALSystemGaveOptions *)gaveOptions dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"gave_options"];
  }

  informed = self->_informed;
  if (informed)
  {
    dictionaryRepresentation5 = [(SIRINLUEXTERNALSystemInformed *)informed dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"informed"];
  }

  reportedSuccess = self->_reportedSuccess;
  if (reportedSuccess)
  {
    dictionaryRepresentation6 = [(SIRINLUEXTERNALSystemReportedSuccess *)reportedSuccess dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"reported_success"];
  }

  reportedFailure = self->_reportedFailure;
  if (reportedFailure)
  {
    dictionaryRepresentation7 = [(SIRINLUEXTERNALSystemReportedFailure *)reportedFailure dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"reported_failure"];
  }

  renderedText = self->_renderedText;
  if (renderedText)
  {
    dictionaryRepresentation8 = [(SIRICOMMONStringValue *)renderedText dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"rendered_text"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSystemDialogAct;
  v4 = [(SIRINLUEXTERNALSystemDialogAct *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALSystemDialogAct *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end