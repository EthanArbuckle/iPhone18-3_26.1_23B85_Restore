@interface _SFPBFlight
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBFlight)initWithDictionary:(id)a3;
- (_SFPBFlight)initWithFacade:(id)a3;
- (_SFPBFlight)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLegs:(id)a3;
- (void)setCarrierCode:(id)a3;
- (void)setCarrierName:(id)a3;
- (void)setCarrierPhoneNumber:(id)a3;
- (void)setCarrierWebsite:(id)a3;
- (void)setFlightID:(id)a3;
- (void)setFlightNumber:(id)a3;
- (void)setLegs:(id)a3;
- (void)setOperatorCarrierCode:(id)a3;
- (void)setOperatorFlightNumber:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBFlight

- (_SFPBFlight)initWithFacade:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBFlight *)self init];
  if (v5)
  {
    v6 = [v4 flightID];

    if (v6)
    {
      v7 = [v4 flightID];
      [(_SFPBFlight *)v5 setFlightID:v7];
    }

    v8 = [v4 carrierCode];

    if (v8)
    {
      v9 = [v4 carrierCode];
      [(_SFPBFlight *)v5 setCarrierCode:v9];
    }

    v10 = [v4 carrierName];

    if (v10)
    {
      v11 = [v4 carrierName];
      [(_SFPBFlight *)v5 setCarrierName:v11];
    }

    v12 = [v4 flightNumber];

    if (v12)
    {
      v13 = [v4 flightNumber];
      [(_SFPBFlight *)v5 setFlightNumber:v13];
    }

    v14 = [v4 legs];
    if (v14)
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
    v16 = [v4 legs];
    v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = [[_SFPBFlightLeg alloc] initWithFacade:*(*(&v33 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);
    }

    [(_SFPBFlight *)v5 setLegs:v15];
    v22 = [v4 operatorCarrierCode];

    if (v22)
    {
      v23 = [v4 operatorCarrierCode];
      [(_SFPBFlight *)v5 setOperatorCarrierCode:v23];
    }

    v24 = [v4 operatorFlightNumber];

    if (v24)
    {
      v25 = [v4 operatorFlightNumber];
      [(_SFPBFlight *)v5 setOperatorFlightNumber:v25];
    }

    v26 = [v4 carrierPhoneNumber];

    if (v26)
    {
      v27 = [v4 carrierPhoneNumber];
      [(_SFPBFlight *)v5 setCarrierPhoneNumber:v27];
    }

    v28 = [v4 carrierWebsite];

    if (v28)
    {
      v29 = [v4 carrierWebsite];
      [(_SFPBFlight *)v5 setCarrierWebsite:v29];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBFlight)initWithDictionary:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v41.receiver = self;
  v41.super_class = _SFPBFlight;
  v5 = [(_SFPBFlight *)&v41 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"flightID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBFlight *)v5 setFlightID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"carrierCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBFlight *)v5 setCarrierCode:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"carrierName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBFlight *)v5 setCarrierName:v11];
    }

    v36 = v10;
    v12 = [v4 objectForKeyedSubscript:@"flightNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(_SFPBFlight *)v5 setFlightNumber:v13];
    }

    v35 = v12;
    v14 = [v4 objectForKeyedSubscript:@"legs"];
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

    v22 = [v4 objectForKeyedSubscript:{@"operatorCarrierCode", v33, v34}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBFlight *)v5 setOperatorCarrierCode:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"operatorFlightNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(_SFPBFlight *)v5 setOperatorFlightNumber:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"carrierPhoneNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBFlight *)v5 setCarrierPhoneNumber:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"carrierWebsite"];
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

- (_SFPBFlight)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBFlight *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBFlight *)self dictionaryRepresentation];
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
  v35 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_carrierCode)
  {
    v4 = [(_SFPBFlight *)self carrierCode];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"carrierCode"];
  }

  if (self->_carrierName)
  {
    v6 = [(_SFPBFlight *)self carrierName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"carrierName"];
  }

  if (self->_carrierPhoneNumber)
  {
    v8 = [(_SFPBFlight *)self carrierPhoneNumber];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"carrierPhoneNumber"];
  }

  if (self->_carrierWebsite)
  {
    v10 = [(_SFPBFlight *)self carrierWebsite];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"carrierWebsite"];
  }

  if (self->_flightID)
  {
    v12 = [(_SFPBFlight *)self flightID];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"flightID"];
  }

  if (self->_flightNumber)
  {
    v14 = [(_SFPBFlight *)self flightNumber];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"flightNumber"];
  }

  if ([(NSArray *)self->_legs count])
  {
    v16 = [MEMORY[0x1E695DF70] array];
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

          v22 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
          if (v22)
          {
            [v16 addObject:v22];
          }

          else
          {
            v23 = [MEMORY[0x1E695DFB0] null];
            [v16 addObject:v23];
          }
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKeyedSubscript:@"legs"];
  }

  if (self->_operatorCarrierCode)
  {
    v24 = [(_SFPBFlight *)self operatorCarrierCode];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"operatorCarrierCode"];
  }

  if (self->_operatorFlightNumber)
  {
    v26 = [(_SFPBFlight *)self operatorFlightNumber];
    v27 = [v26 copy];
    [v3 setObject:v27 forKeyedSubscript:@"operatorFlightNumber"];
  }

  v28 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  v5 = [(_SFPBFlight *)self flightID];
  v6 = [v4 flightID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v7 = [(_SFPBFlight *)self flightID];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBFlight *)self flightID];
    v10 = [v4 flightID];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBFlight *)self carrierCode];
  v6 = [v4 carrierCode];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v12 = [(_SFPBFlight *)self carrierCode];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBFlight *)self carrierCode];
    v15 = [v4 carrierCode];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBFlight *)self carrierName];
  v6 = [v4 carrierName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v17 = [(_SFPBFlight *)self carrierName];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBFlight *)self carrierName];
    v20 = [v4 carrierName];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBFlight *)self flightNumber];
  v6 = [v4 flightNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v22 = [(_SFPBFlight *)self flightNumber];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBFlight *)self flightNumber];
    v25 = [v4 flightNumber];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBFlight *)self legs];
  v6 = [v4 legs];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v27 = [(_SFPBFlight *)self legs];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBFlight *)self legs];
    v30 = [v4 legs];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBFlight *)self operatorCarrierCode];
  v6 = [v4 operatorCarrierCode];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v32 = [(_SFPBFlight *)self operatorCarrierCode];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBFlight *)self operatorCarrierCode];
    v35 = [v4 operatorCarrierCode];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBFlight *)self operatorFlightNumber];
  v6 = [v4 operatorFlightNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v37 = [(_SFPBFlight *)self operatorFlightNumber];
  if (v37)
  {
    v38 = v37;
    v39 = [(_SFPBFlight *)self operatorFlightNumber];
    v40 = [v4 operatorFlightNumber];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBFlight *)self carrierPhoneNumber];
  v6 = [v4 carrierPhoneNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v42 = [(_SFPBFlight *)self carrierPhoneNumber];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBFlight *)self carrierPhoneNumber];
    v45 = [v4 carrierPhoneNumber];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBFlight *)self carrierWebsite];
  v6 = [v4 carrierWebsite];
  if ((v5 != 0) != (v6 == 0))
  {
    v47 = [(_SFPBFlight *)self carrierWebsite];
    if (!v47)
    {

LABEL_50:
      v52 = 1;
      goto LABEL_48;
    }

    v48 = v47;
    v49 = [(_SFPBFlight *)self carrierWebsite];
    v50 = [v4 carrierWebsite];
    v51 = [v49 isEqual:v50];

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

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBFlight *)self flightID];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBFlight *)self carrierCode];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBFlight *)self carrierName];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(_SFPBFlight *)self flightNumber];
  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(_SFPBFlight *)self legs];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = [(_SFPBFlight *)self operatorCarrierCode];
  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  v16 = [(_SFPBFlight *)self operatorFlightNumber];
  if (v16)
  {
    PBDataWriterWriteStringField();
  }

  v17 = [(_SFPBFlight *)self carrierPhoneNumber];
  if (v17)
  {
    PBDataWriterWriteStringField();
  }

  v18 = [(_SFPBFlight *)self carrierWebsite];
  if (v18)
  {
    PBDataWriterWriteStringField();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setCarrierWebsite:(id)a3
{
  v4 = [a3 copy];
  carrierWebsite = self->_carrierWebsite;
  self->_carrierWebsite = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCarrierPhoneNumber:(id)a3
{
  v4 = [a3 copy];
  carrierPhoneNumber = self->_carrierPhoneNumber;
  self->_carrierPhoneNumber = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setOperatorFlightNumber:(id)a3
{
  v4 = [a3 copy];
  operatorFlightNumber = self->_operatorFlightNumber;
  self->_operatorFlightNumber = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setOperatorCarrierCode:(id)a3
{
  v4 = [a3 copy];
  operatorCarrierCode = self->_operatorCarrierCode;
  self->_operatorCarrierCode = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addLegs:(id)a3
{
  v4 = a3;
  legs = self->_legs;
  v8 = v4;
  if (!legs)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_legs;
    self->_legs = v6;

    v4 = v8;
    legs = self->_legs;
  }

  [(NSArray *)legs addObject:v4];
}

- (void)setLegs:(id)a3
{
  v4 = [a3 copy];
  legs = self->_legs;
  self->_legs = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFlightNumber:(id)a3
{
  v4 = [a3 copy];
  flightNumber = self->_flightNumber;
  self->_flightNumber = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCarrierName:(id)a3
{
  v4 = [a3 copy];
  carrierName = self->_carrierName;
  self->_carrierName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCarrierCode:(id)a3
{
  v4 = [a3 copy];
  carrierCode = self->_carrierCode;
  self->_carrierCode = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFlightID:(id)a3
{
  v4 = [a3 copy];
  flightID = self->_flightID;
  self->_flightID = v4;

  MEMORY[0x1EEE66BB8]();
}

@end