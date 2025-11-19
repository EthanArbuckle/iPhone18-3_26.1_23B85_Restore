@interface _SFPBPegasusDisplayFields
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBPegasusDisplayFields)initWithDictionary:(id)a3;
- (_SFPBPegasusDisplayFields)initWithFacade:(id)a3;
- (_SFPBPegasusDisplayFields)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setDisplayStatus:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBPegasusDisplayFields

- (_SFPBPegasusDisplayFields)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBPegasusDisplayFields *)self init];
  if (v5)
  {
    v6 = [v4 displayStatus];

    if (v6)
    {
      v7 = [v4 displayStatus];
      [(_SFPBPegasusDisplayFields *)v5 setDisplayStatus:v7];
    }

    v8 = [v4 departureTime];

    if (v8)
    {
      v9 = [_SFPBDate alloc];
      v10 = [v4 departureTime];
      v11 = [(_SFPBDate *)v9 initWithNSDate:v10];
      [(_SFPBPegasusDisplayFields *)v5 setDepartureTime:v11];
    }

    v12 = [v4 arrivalTime];

    if (v12)
    {
      v13 = [_SFPBDate alloc];
      v14 = [v4 arrivalTime];
      v15 = [(_SFPBDate *)v13 initWithNSDate:v14];
      [(_SFPBPegasusDisplayFields *)v5 setArrivalTime:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBPegasusDisplayFields)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _SFPBPegasusDisplayFields;
  v5 = [(_SFPBPegasusDisplayFields *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"displayStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPegasusDisplayFields *)v5 setDisplayStatus:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"departureTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBDate alloc] initWithDictionary:v8];
      [(_SFPBPegasusDisplayFields *)v5 setDepartureTime:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"arrivalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBDate alloc] initWithDictionary:v10];
      [(_SFPBPegasusDisplayFields *)v5 setArrivalTime:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBPegasusDisplayFields)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBPegasusDisplayFields *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBPegasusDisplayFields *)self dictionaryRepresentation];
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
  if (self->_arrivalTime)
  {
    v4 = [(_SFPBPegasusDisplayFields *)self arrivalTime];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"arrivalTime"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"arrivalTime"];
    }
  }

  if (self->_departureTime)
  {
    v7 = [(_SFPBPegasusDisplayFields *)self departureTime];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"departureTime"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"departureTime"];
    }
  }

  if (self->_displayStatus)
  {
    v10 = [(_SFPBPegasusDisplayFields *)self displayStatus];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"displayStatus"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_displayStatus hash];
  v4 = [(_SFPBDate *)self->_departureTime hash]^ v3;
  return v4 ^ [(_SFPBDate *)self->_arrivalTime hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBPegasusDisplayFields *)self displayStatus];
  v6 = [v4 displayStatus];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBPegasusDisplayFields *)self displayStatus];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBPegasusDisplayFields *)self displayStatus];
    v10 = [v4 displayStatus];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPegasusDisplayFields *)self departureTime];
  v6 = [v4 departureTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBPegasusDisplayFields *)self departureTime];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBPegasusDisplayFields *)self departureTime];
    v15 = [v4 departureTime];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPegasusDisplayFields *)self arrivalTime];
  v6 = [v4 arrivalTime];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBPegasusDisplayFields *)self arrivalTime];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBPegasusDisplayFields *)self arrivalTime];
    v20 = [v4 arrivalTime];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_SFPBPegasusDisplayFields *)self displayStatus];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBPegasusDisplayFields *)self departureTime];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBPegasusDisplayFields *)self arrivalTime];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setDisplayStatus:(id)a3
{
  v4 = [a3 copy];
  displayStatus = self->_displayStatus;
  self->_displayStatus = v4;

  MEMORY[0x1EEE66BB8]();
}

@end