@interface SIRINLUINTERNALOverrideValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALOverrideValue

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  ccqrOverrideTemplate = self->_ccqrOverrideTemplate;
  v13 = fromCopy;
  v6 = fromCopy[1];
  if (ccqrOverrideTemplate)
  {
    if (v6)
    {
      [(SIRINLUINTERNALCCQROverrideTemplate *)ccqrOverrideTemplate mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALOverrideValue *)self setCcqrOverrideTemplate:?];
  }

  userParse = self->_userParse;
  v8 = v13[4];
  if (userParse)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALUserParse *)userParse mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUINTERNALOverrideValue *)self setUserParse:?];
  }

  lvcOverrideValue = self->_lvcOverrideValue;
  v10 = v13[2];
  if (lvcOverrideValue)
  {
    if (v10)
    {
      [(SIRINLUINTERNALLVCOverrideValue *)lvcOverrideValue mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SIRINLUINTERNALOverrideValue *)self setLvcOverrideValue:?];
  }

  planOverrideValue = self->_planOverrideValue;
  v12 = v13[3];
  if (planOverrideValue)
  {
    if (v12)
    {
      [(SIRINLUINTERNALPlanOverrideValue *)planOverrideValue mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(SIRINLUINTERNALOverrideValue *)self setPlanOverrideValue:?];
  }
}

- (unint64_t)hash
{
  v3 = [(SIRINLUINTERNALCCQROverrideTemplate *)self->_ccqrOverrideTemplate hash];
  v4 = [(SIRINLUEXTERNALUserParse *)self->_userParse hash]^ v3;
  v5 = [(SIRINLUINTERNALLVCOverrideValue *)self->_lvcOverrideValue hash];
  return v4 ^ v5 ^ [(SIRINLUINTERNALPlanOverrideValue *)self->_planOverrideValue hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((ccqrOverrideTemplate = self->_ccqrOverrideTemplate, !(ccqrOverrideTemplate | equalCopy[1])) || -[SIRINLUINTERNALCCQROverrideTemplate isEqual:](ccqrOverrideTemplate, "isEqual:")) && ((userParse = self->_userParse, !(userParse | equalCopy[4])) || -[SIRINLUEXTERNALUserParse isEqual:](userParse, "isEqual:")) && ((lvcOverrideValue = self->_lvcOverrideValue, !(lvcOverrideValue | equalCopy[2])) || -[SIRINLUINTERNALLVCOverrideValue isEqual:](lvcOverrideValue, "isEqual:")))
  {
    planOverrideValue = self->_planOverrideValue;
    if (planOverrideValue | equalCopy[3])
    {
      v9 = [(SIRINLUINTERNALPlanOverrideValue *)planOverrideValue isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUINTERNALCCQROverrideTemplate *)self->_ccqrOverrideTemplate copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRINLUEXTERNALUserParse *)self->_userParse copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(SIRINLUINTERNALLVCOverrideValue *)self->_lvcOverrideValue copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(SIRINLUINTERNALPlanOverrideValue *)self->_planOverrideValue copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_ccqrOverrideTemplate)
  {
    [toCopy setCcqrOverrideTemplate:?];
    toCopy = v5;
  }

  if (self->_userParse)
  {
    [v5 setUserParse:?];
    toCopy = v5;
  }

  if (self->_lvcOverrideValue)
  {
    [v5 setLvcOverrideValue:?];
    toCopy = v5;
  }

  if (self->_planOverrideValue)
  {
    [v5 setPlanOverrideValue:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_ccqrOverrideTemplate)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_userParse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_lvcOverrideValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_planOverrideValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  ccqrOverrideTemplate = self->_ccqrOverrideTemplate;
  if (ccqrOverrideTemplate)
  {
    dictionaryRepresentation = [(SIRINLUINTERNALCCQROverrideTemplate *)ccqrOverrideTemplate dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"ccqr_override_template"];
  }

  userParse = self->_userParse;
  if (userParse)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALUserParse *)userParse dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"user_parse"];
  }

  lvcOverrideValue = self->_lvcOverrideValue;
  if (lvcOverrideValue)
  {
    dictionaryRepresentation3 = [(SIRINLUINTERNALLVCOverrideValue *)lvcOverrideValue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"lvc_override_value"];
  }

  planOverrideValue = self->_planOverrideValue;
  if (planOverrideValue)
  {
    dictionaryRepresentation4 = [(SIRINLUINTERNALPlanOverrideValue *)planOverrideValue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"plan_override_value"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALOverrideValue;
  v4 = [(SIRINLUINTERNALOverrideValue *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALOverrideValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end