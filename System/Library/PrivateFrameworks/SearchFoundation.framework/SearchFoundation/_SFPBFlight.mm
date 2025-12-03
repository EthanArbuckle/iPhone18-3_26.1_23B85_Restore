@interface _SFPBFlight
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBFlight)initWithDictionary:(id)dictionary;
- (_SFPBFlight)initWithFacade:(id)facade;
- (_SFPBFlight)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLegs:(id)legs;
- (void)setCarrierCode:(id)code;
- (void)setCarrierName:(id)name;
- (void)setCarrierPhoneNumber:(id)number;
- (void)setCarrierWebsite:(id)website;
- (void)setFlightID:(id)d;
- (void)setFlightNumber:(id)number;
- (void)setLegs:(id)legs;
- (void)setOperatorCarrierCode:(id)code;
- (void)setOperatorFlightNumber:(id)number;
- (void)writeTo:(id)to;
@end

@implementation _SFPBFlight

- (_SFPBFlight)initWithFacade:(id)facade
{
  v38 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBFlight *)self init];
  if (v5)
  {
    flightID = [facadeCopy flightID];

    if (flightID)
    {
      flightID2 = [facadeCopy flightID];
      [(_SFPBFlight *)v5 setFlightID:flightID2];
    }

    carrierCode = [facadeCopy carrierCode];

    if (carrierCode)
    {
      carrierCode2 = [facadeCopy carrierCode];
      [(_SFPBFlight *)v5 setCarrierCode:carrierCode2];
    }

    carrierName = [facadeCopy carrierName];

    if (carrierName)
    {
      carrierName2 = [facadeCopy carrierName];
      [(_SFPBFlight *)v5 setCarrierName:carrierName2];
    }

    flightNumber = [facadeCopy flightNumber];

    if (flightNumber)
    {
      flightNumber2 = [facadeCopy flightNumber];
      [(_SFPBFlight *)v5 setFlightNumber:flightNumber2];
    }

    legs = [facadeCopy legs];
    if (legs)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    legs2 = [facadeCopy legs];
    v17 = [legs2 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(legs2);
          }

          v21 = [[_SFPBFlightLeg alloc] initWithFacade:*(*(&v33 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [legs2 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);
    }

    [(_SFPBFlight *)v5 setLegs:v15];
    operatorCarrierCode = [facadeCopy operatorCarrierCode];

    if (operatorCarrierCode)
    {
      operatorCarrierCode2 = [facadeCopy operatorCarrierCode];
      [(_SFPBFlight *)v5 setOperatorCarrierCode:operatorCarrierCode2];
    }

    operatorFlightNumber = [facadeCopy operatorFlightNumber];

    if (operatorFlightNumber)
    {
      operatorFlightNumber2 = [facadeCopy operatorFlightNumber];
      [(_SFPBFlight *)v5 setOperatorFlightNumber:operatorFlightNumber2];
    }

    carrierPhoneNumber = [facadeCopy carrierPhoneNumber];

    if (carrierPhoneNumber)
    {
      carrierPhoneNumber2 = [facadeCopy carrierPhoneNumber];
      [(_SFPBFlight *)v5 setCarrierPhoneNumber:carrierPhoneNumber2];
    }

    carrierWebsite = [facadeCopy carrierWebsite];

    if (carrierWebsite)
    {
      carrierWebsite2 = [facadeCopy carrierWebsite];
      [(_SFPBFlight *)v5 setCarrierWebsite:carrierWebsite2];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBFlight)initWithDictionary:(id)dictionary
{
  v43 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v41.receiver = self;
  v41.super_class = _SFPBFlight;
  v5 = [(_SFPBFlight *)&v41 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"flightID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBFlight *)v5 setFlightID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"carrierCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBFlight *)v5 setCarrierCode:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"carrierName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBFlight *)v5 setCarrierName:v11];
    }

    v36 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"flightNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(_SFPBFlight *)v5 setFlightNumber:v13];
    }

    v35 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"legs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v8;
      v34 = v6;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v38;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v38 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v37 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [[_SFPBFlightLeg alloc] initWithDictionary:v20];
              [(_SFPBFlight *)v5 addLegs:v21];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v17);
      }
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:{@"operatorCarrierCode", v33, v34}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBFlight *)v5 setOperatorCarrierCode:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"operatorFlightNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(_SFPBFlight *)v5 setOperatorFlightNumber:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"carrierPhoneNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBFlight *)v5 setCarrierPhoneNumber:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"carrierWebsite"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      [(_SFPBFlight *)v5 setCarrierWebsite:v29];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBFlight)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBFlight *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBFlight *)self dictionaryRepresentation];
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

- (id)dictionaryRepresentation
{
  v35 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_carrierCode)
  {
    carrierCode = [(_SFPBFlight *)self carrierCode];
    v5 = [carrierCode copy];
    [dictionary setObject:v5 forKeyedSubscript:@"carrierCode"];
  }

  if (self->_carrierName)
  {
    carrierName = [(_SFPBFlight *)self carrierName];
    v7 = [carrierName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"carrierName"];
  }

  if (self->_carrierPhoneNumber)
  {
    carrierPhoneNumber = [(_SFPBFlight *)self carrierPhoneNumber];
    v9 = [carrierPhoneNumber copy];
    [dictionary setObject:v9 forKeyedSubscript:@"carrierPhoneNumber"];
  }

  if (self->_carrierWebsite)
  {
    carrierWebsite = [(_SFPBFlight *)self carrierWebsite];
    v11 = [carrierWebsite copy];
    [dictionary setObject:v11 forKeyedSubscript:@"carrierWebsite"];
  }

  if (self->_flightID)
  {
    flightID = [(_SFPBFlight *)self flightID];
    v13 = [flightID copy];
    [dictionary setObject:v13 forKeyedSubscript:@"flightID"];
  }

  if (self->_flightNumber)
  {
    flightNumber = [(_SFPBFlight *)self flightNumber];
    v15 = [flightNumber copy];
    [dictionary setObject:v15 forKeyedSubscript:@"flightNumber"];
  }

  if ([(NSArray *)self->_legs count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = self->_legs;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          dictionaryRepresentation = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v19);
    }

    [dictionary setObject:array forKeyedSubscript:@"legs"];
  }

  if (self->_operatorCarrierCode)
  {
    operatorCarrierCode = [(_SFPBFlight *)self operatorCarrierCode];
    v25 = [operatorCarrierCode copy];
    [dictionary setObject:v25 forKeyedSubscript:@"operatorCarrierCode"];
  }

  if (self->_operatorFlightNumber)
  {
    operatorFlightNumber = [(_SFPBFlight *)self operatorFlightNumber];
    v27 = [operatorFlightNumber copy];
    [dictionary setObject:v27 forKeyedSubscript:@"operatorFlightNumber"];
  }

  v28 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_flightID hash];
  v4 = [(NSString *)self->_carrierCode hash]^ v3;
  v5 = [(NSString *)self->_carrierName hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_flightNumber hash];
  v7 = [(NSArray *)self->_legs hash];
  v8 = v7 ^ [(NSString *)self->_operatorCarrierCode hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_operatorFlightNumber hash];
  v10 = [(NSString *)self->_carrierPhoneNumber hash];
  return v9 ^ v10 ^ [(NSString *)self->_carrierWebsite hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  flightID = [(_SFPBFlight *)self flightID];
  flightID2 = [equalCopy flightID];
  if ((flightID != 0) == (flightID2 == 0))
  {
    goto LABEL_46;
  }

  flightID3 = [(_SFPBFlight *)self flightID];
  if (flightID3)
  {
    v8 = flightID3;
    flightID4 = [(_SFPBFlight *)self flightID];
    flightID5 = [equalCopy flightID];
    v11 = [flightID4 isEqual:flightID5];

    if (!v11)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  flightID = [(_SFPBFlight *)self carrierCode];
  flightID2 = [equalCopy carrierCode];
  if ((flightID != 0) == (flightID2 == 0))
  {
    goto LABEL_46;
  }

  carrierCode = [(_SFPBFlight *)self carrierCode];
  if (carrierCode)
  {
    v13 = carrierCode;
    carrierCode2 = [(_SFPBFlight *)self carrierCode];
    carrierCode3 = [equalCopy carrierCode];
    v16 = [carrierCode2 isEqual:carrierCode3];

    if (!v16)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  flightID = [(_SFPBFlight *)self carrierName];
  flightID2 = [equalCopy carrierName];
  if ((flightID != 0) == (flightID2 == 0))
  {
    goto LABEL_46;
  }

  carrierName = [(_SFPBFlight *)self carrierName];
  if (carrierName)
  {
    v18 = carrierName;
    carrierName2 = [(_SFPBFlight *)self carrierName];
    carrierName3 = [equalCopy carrierName];
    v21 = [carrierName2 isEqual:carrierName3];

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  flightID = [(_SFPBFlight *)self flightNumber];
  flightID2 = [equalCopy flightNumber];
  if ((flightID != 0) == (flightID2 == 0))
  {
    goto LABEL_46;
  }

  flightNumber = [(_SFPBFlight *)self flightNumber];
  if (flightNumber)
  {
    v23 = flightNumber;
    flightNumber2 = [(_SFPBFlight *)self flightNumber];
    flightNumber3 = [equalCopy flightNumber];
    v26 = [flightNumber2 isEqual:flightNumber3];

    if (!v26)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  flightID = [(_SFPBFlight *)self legs];
  flightID2 = [equalCopy legs];
  if ((flightID != 0) == (flightID2 == 0))
  {
    goto LABEL_46;
  }

  legs = [(_SFPBFlight *)self legs];
  if (legs)
  {
    v28 = legs;
    legs2 = [(_SFPBFlight *)self legs];
    legs3 = [equalCopy legs];
    v31 = [legs2 isEqual:legs3];

    if (!v31)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  flightID = [(_SFPBFlight *)self operatorCarrierCode];
  flightID2 = [equalCopy operatorCarrierCode];
  if ((flightID != 0) == (flightID2 == 0))
  {
    goto LABEL_46;
  }

  operatorCarrierCode = [(_SFPBFlight *)self operatorCarrierCode];
  if (operatorCarrierCode)
  {
    v33 = operatorCarrierCode;
    operatorCarrierCode2 = [(_SFPBFlight *)self operatorCarrierCode];
    operatorCarrierCode3 = [equalCopy operatorCarrierCode];
    v36 = [operatorCarrierCode2 isEqual:operatorCarrierCode3];

    if (!v36)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  flightID = [(_SFPBFlight *)self operatorFlightNumber];
  flightID2 = [equalCopy operatorFlightNumber];
  if ((flightID != 0) == (flightID2 == 0))
  {
    goto LABEL_46;
  }

  operatorFlightNumber = [(_SFPBFlight *)self operatorFlightNumber];
  if (operatorFlightNumber)
  {
    v38 = operatorFlightNumber;
    operatorFlightNumber2 = [(_SFPBFlight *)self operatorFlightNumber];
    operatorFlightNumber3 = [equalCopy operatorFlightNumber];
    v41 = [operatorFlightNumber2 isEqual:operatorFlightNumber3];

    if (!v41)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  flightID = [(_SFPBFlight *)self carrierPhoneNumber];
  flightID2 = [equalCopy carrierPhoneNumber];
  if ((flightID != 0) == (flightID2 == 0))
  {
    goto LABEL_46;
  }

  carrierPhoneNumber = [(_SFPBFlight *)self carrierPhoneNumber];
  if (carrierPhoneNumber)
  {
    v43 = carrierPhoneNumber;
    carrierPhoneNumber2 = [(_SFPBFlight *)self carrierPhoneNumber];
    carrierPhoneNumber3 = [equalCopy carrierPhoneNumber];
    v46 = [carrierPhoneNumber2 isEqual:carrierPhoneNumber3];

    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  flightID = [(_SFPBFlight *)self carrierWebsite];
  flightID2 = [equalCopy carrierWebsite];
  if ((flightID != 0) != (flightID2 == 0))
  {
    carrierWebsite = [(_SFPBFlight *)self carrierWebsite];
    if (!carrierWebsite)
    {

LABEL_50:
      v52 = 1;
      goto LABEL_48;
    }

    v48 = carrierWebsite;
    carrierWebsite2 = [(_SFPBFlight *)self carrierWebsite];
    carrierWebsite3 = [equalCopy carrierWebsite];
    v51 = [carrierWebsite2 isEqual:carrierWebsite3];

    if (v51)
    {
      goto LABEL_50;
    }
  }

  else
  {
LABEL_46:
  }

LABEL_47:
  v52 = 0;
LABEL_48:

  return v52;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  flightID = [(_SFPBFlight *)self flightID];
  if (flightID)
  {
    PBDataWriterWriteStringField();
  }

  carrierCode = [(_SFPBFlight *)self carrierCode];
  if (carrierCode)
  {
    PBDataWriterWriteStringField();
  }

  carrierName = [(_SFPBFlight *)self carrierName];
  if (carrierName)
  {
    PBDataWriterWriteStringField();
  }

  flightNumber = [(_SFPBFlight *)self flightNumber];
  if (flightNumber)
  {
    PBDataWriterWriteStringField();
  }

  legs = [(_SFPBFlight *)self legs];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [legs countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(legs);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [legs countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  operatorCarrierCode = [(_SFPBFlight *)self operatorCarrierCode];
  if (operatorCarrierCode)
  {
    PBDataWriterWriteStringField();
  }

  operatorFlightNumber = [(_SFPBFlight *)self operatorFlightNumber];
  if (operatorFlightNumber)
  {
    PBDataWriterWriteStringField();
  }

  carrierPhoneNumber = [(_SFPBFlight *)self carrierPhoneNumber];
  if (carrierPhoneNumber)
  {
    PBDataWriterWriteStringField();
  }

  carrierWebsite = [(_SFPBFlight *)self carrierWebsite];
  if (carrierWebsite)
  {
    PBDataWriterWriteStringField();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setCarrierWebsite:(id)website
{
  v4 = [website copy];
  carrierWebsite = self->_carrierWebsite;
  self->_carrierWebsite = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCarrierPhoneNumber:(id)number
{
  v4 = [number copy];
  carrierPhoneNumber = self->_carrierPhoneNumber;
  self->_carrierPhoneNumber = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setOperatorFlightNumber:(id)number
{
  v4 = [number copy];
  operatorFlightNumber = self->_operatorFlightNumber;
  self->_operatorFlightNumber = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setOperatorCarrierCode:(id)code
{
  v4 = [code copy];
  operatorCarrierCode = self->_operatorCarrierCode;
  self->_operatorCarrierCode = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addLegs:(id)legs
{
  legsCopy = legs;
  legs = self->_legs;
  v8 = legsCopy;
  if (!legs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_legs;
    self->_legs = array;

    legsCopy = v8;
    legs = self->_legs;
  }

  [(NSArray *)legs addObject:legsCopy];
}

- (void)setLegs:(id)legs
{
  v4 = [legs copy];
  legs = self->_legs;
  self->_legs = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFlightNumber:(id)number
{
  v4 = [number copy];
  flightNumber = self->_flightNumber;
  self->_flightNumber = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCarrierName:(id)name
{
  v4 = [name copy];
  carrierName = self->_carrierName;
  self->_carrierName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCarrierCode:(id)code
{
  v4 = [code copy];
  carrierCode = self->_carrierCode;
  self->_carrierCode = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFlightID:(id)d
{
  v4 = [d copy];
  flightID = self->_flightID;
  self->_flightID = v4;

  MEMORY[0x1EEE66BB8]();
}

@end