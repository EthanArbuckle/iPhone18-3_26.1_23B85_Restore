@interface SIRINLUINTERNALOverrideValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALOverrideValue

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  ccqrOverrideTemplate = self->_ccqrOverrideTemplate;
  v13 = v4;
  v6 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((ccqrOverrideTemplate = self->_ccqrOverrideTemplate, !(ccqrOverrideTemplate | v4[1])) || -[SIRINLUINTERNALCCQROverrideTemplate isEqual:](ccqrOverrideTemplate, "isEqual:")) && ((userParse = self->_userParse, !(userParse | v4[4])) || -[SIRINLUEXTERNALUserParse isEqual:](userParse, "isEqual:")) && ((lvcOverrideValue = self->_lvcOverrideValue, !(lvcOverrideValue | v4[2])) || -[SIRINLUINTERNALLVCOverrideValue isEqual:](lvcOverrideValue, "isEqual:")))
  {
    planOverrideValue = self->_planOverrideValue;
    if (planOverrideValue | v4[3])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUINTERNALCCQROverrideTemplate *)self->_ccqrOverrideTemplate copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRINLUEXTERNALUserParse *)self->_userParse copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(SIRINLUINTERNALLVCOverrideValue *)self->_lvcOverrideValue copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(SIRINLUINTERNALPlanOverrideValue *)self->_planOverrideValue copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_ccqrOverrideTemplate)
  {
    [v4 setCcqrOverrideTemplate:?];
    v4 = v5;
  }

  if (self->_userParse)
  {
    [v5 setUserParse:?];
    v4 = v5;
  }

  if (self->_lvcOverrideValue)
  {
    [v5 setLvcOverrideValue:?];
    v4 = v5;
  }

  if (self->_planOverrideValue)
  {
    [v5 setPlanOverrideValue:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_ccqrOverrideTemplate)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userParse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_lvcOverrideValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_planOverrideValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  ccqrOverrideTemplate = self->_ccqrOverrideTemplate;
  if (ccqrOverrideTemplate)
  {
    v5 = [(SIRINLUINTERNALCCQROverrideTemplate *)ccqrOverrideTemplate dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"ccqr_override_template"];
  }

  userParse = self->_userParse;
  if (userParse)
  {
    v7 = [(SIRINLUEXTERNALUserParse *)userParse dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"user_parse"];
  }

  lvcOverrideValue = self->_lvcOverrideValue;
  if (lvcOverrideValue)
  {
    v9 = [(SIRINLUINTERNALLVCOverrideValue *)lvcOverrideValue dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"lvc_override_value"];
  }

  planOverrideValue = self->_planOverrideValue;
  if (planOverrideValue)
  {
    v11 = [(SIRINLUINTERNALPlanOverrideValue *)planOverrideValue dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"plan_override_value"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALOverrideValue;
  v4 = [(SIRINLUINTERNALOverrideValue *)&v8 description];
  v5 = [(SIRINLUINTERNALOverrideValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end