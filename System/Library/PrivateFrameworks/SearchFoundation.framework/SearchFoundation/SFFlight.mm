@interface SFFlight
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFFlight)initWithCoder:(id)coder;
- (SFFlight)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFFlight

- (unint64_t)hash
{
  flightID = [(SFFlight *)self flightID];
  v3 = [flightID hash];
  carrierCode = [(SFFlight *)self carrierCode];
  v5 = [carrierCode hash] ^ v3;
  carrierName = [(SFFlight *)self carrierName];
  v7 = [carrierName hash];
  flightNumber = [(SFFlight *)self flightNumber];
  v9 = v5 ^ v7 ^ [flightNumber hash];
  legs = [(SFFlight *)self legs];
  v11 = [legs hash];
  operatorCarrierCode = [(SFFlight *)self operatorCarrierCode];
  v13 = v11 ^ [operatorCarrierCode hash];
  operatorFlightNumber = [(SFFlight *)self operatorFlightNumber];
  v15 = v9 ^ v13 ^ [operatorFlightNumber hash];
  carrierPhoneNumber = [(SFFlight *)self carrierPhoneNumber];
  v17 = [carrierPhoneNumber hash];
  carrierWebsite = [(SFFlight *)self carrierWebsite];
  v19 = v17 ^ [carrierWebsite hash];

  return v15 ^ v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFFlight *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      flightID = [(SFFlight *)self flightID];
      flightID2 = [(SFFlight *)v5 flightID];
      if ((flightID != 0) == (flightID2 == 0))
      {
        v11 = 0;
LABEL_50:

        goto LABEL_51;
      }

      flightID3 = [(SFFlight *)self flightID];
      if (flightID3)
      {
        flightID4 = [(SFFlight *)self flightID];
        flightID5 = [(SFFlight *)v5 flightID];
        if (![flightID4 isEqual:flightID5])
        {
          v11 = 0;
LABEL_48:

          goto LABEL_49;
        }

        v79 = flightID5;
        v80 = flightID4;
      }

      carrierCode = [(SFFlight *)self carrierCode];
      carrierCode2 = [(SFFlight *)v5 carrierCode];
      if ((carrierCode != 0) == (carrierCode2 == 0))
      {
        goto LABEL_46;
      }

      carrierCode3 = [(SFFlight *)self carrierCode];
      if (carrierCode3)
      {
        carrierCode4 = [(SFFlight *)self carrierCode];
        carrierCode5 = [(SFFlight *)v5 carrierCode];
        v77 = carrierCode4;
        if (![carrierCode4 isEqual:carrierCode5])
        {
LABEL_44:

LABEL_45:
          goto LABEL_46;
        }
      }

      v78 = carrierCode3;
      carrierName = [(SFFlight *)self carrierName];
      carrierName2 = [(SFFlight *)v5 carrierName];
      if ((carrierName != 0) == (carrierName2 == 0))
      {

        if (!carrierCode3)
        {
LABEL_46:

          v11 = 0;
          if (!flightID3)
          {
LABEL_49:

            goto LABEL_50;
          }

          goto LABEL_47;
        }

        goto LABEL_44;
      }

      v73 = carrierName;
      v74 = carrierName2;
      carrierName3 = [(SFFlight *)self carrierName];
      if (carrierName3)
      {
        carrierName4 = [(SFFlight *)self carrierName];
        [(SFFlight *)v5 carrierName];
        v72 = v71 = carrierName4;
        if (![carrierName4 isEqual:v72])
        {
LABEL_42:

LABEL_43:
          if (!carrierCode3)
          {
            goto LABEL_46;
          }

          goto LABEL_44;
        }
      }

      flightNumber = [(SFFlight *)self flightNumber];
      flightNumber4 = flightNumber != 0;
      flightNumber2 = [(SFFlight *)v5 flightNumber];
      if (flightNumber4 == (flightNumber2 == 0))
      {

        goto LABEL_41;
      }

      v69 = flightNumber2;
      v70 = flightNumber;
      flightNumber3 = [(SFFlight *)self flightNumber];
      if (flightNumber3)
      {
        flightNumber4 = [(SFFlight *)self flightNumber];
        flightNumber5 = [(SFFlight *)v5 flightNumber];
        if (![flightNumber4 isEqual:?])
        {
          goto LABEL_39;
        }
      }

      v68 = flightNumber3;
      v66 = flightNumber4;
      legs = [(SFFlight *)self legs];
      legs2 = [(SFFlight *)v5 legs];
      if ((legs != 0) == (legs2 == 0))
      {

        goto LABEL_38;
      }

      v64 = legs;
      v65 = legs2;
      legs3 = [(SFFlight *)self legs];
      if (legs3)
      {
        legs = [(SFFlight *)self legs];
        legs4 = [(SFFlight *)v5 legs];
        if (![legs isEqual:?])
        {
LABEL_36:

LABEL_37:
LABEL_38:
          flightNumber4 = v66;
          flightNumber3 = v68;
          if (!v68)
          {
LABEL_40:

LABEL_41:
            carrierCode3 = v78;
            if (!carrierName3)
            {
              goto LABEL_43;
            }

            goto LABEL_42;
          }

LABEL_39:

          goto LABEL_40;
        }
      }

      v61 = legs;
      v63 = legs3;
      operatorCarrierCode = [(SFFlight *)self operatorCarrierCode];
      operatorCarrierCode2 = [(SFFlight *)v5 operatorCarrierCode];
      if ((operatorCarrierCode != 0) == (operatorCarrierCode2 == 0))
      {

        legs = v61;
        if (!legs3)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v58 = operatorCarrierCode2;
      v59 = operatorCarrierCode;
      operatorCarrierCode3 = [(SFFlight *)self operatorCarrierCode];
      if (operatorCarrierCode3)
      {
        operatorCarrierCode4 = [(SFFlight *)self operatorCarrierCode];
        operatorCarrierCode5 = [(SFFlight *)v5 operatorCarrierCode];
        v57 = operatorCarrierCode4;
        if (![operatorCarrierCode4 isEqual:operatorCarrierCode5])
        {
          goto LABEL_58;
        }
      }

      operatorFlightNumber = [(SFFlight *)self operatorFlightNumber];
      operatorFlightNumber2 = [(SFFlight *)v5 operatorFlightNumber];
      if ((operatorFlightNumber != 0) == (operatorFlightNumber2 == 0))
      {

        if (!operatorCarrierCode3)
        {
          v35 = v68;
LABEL_59:

          if (legs3)
          {
          }

          carrierCode3 = v78;
          if (v35)
          {
          }

          if (carrierName3)
          {
          }

          if (!v78)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }

LABEL_58:
        v35 = v68;

        goto LABEL_59;
      }

      v54 = operatorFlightNumber;
      v55 = operatorFlightNumber2;
      operatorFlightNumber3 = [(SFFlight *)self operatorFlightNumber];
      if (operatorFlightNumber3)
      {
        operatorFlightNumber4 = [(SFFlight *)self operatorFlightNumber];
        operatorFlightNumber5 = [(SFFlight *)v5 operatorFlightNumber];
        v52 = operatorFlightNumber4;
        if (![operatorFlightNumber4 isEqual:?])
        {
          v11 = 0;
          v34 = v63;
LABEL_82:

LABEL_83:
          if (operatorCarrierCode3)
          {
          }

          v41 = v34;
          if (v34)
          {
            v42 = v72;
          }

          else
          {
            v42 = v72;
          }

          if (v68)
          {
          }

          if (carrierName3)
          {
          }

          if (v78)
          {
          }

          if (!flightID3)
          {
            goto LABEL_49;
          }

LABEL_47:
          flightID5 = v79;
          flightID4 = v80;
          goto LABEL_48;
        }
      }

      carrierPhoneNumber = [(SFFlight *)self carrierPhoneNumber];
      carrierPhoneNumber2 = [(SFFlight *)v5 carrierPhoneNumber];
      if ((carrierPhoneNumber != 0) == (carrierPhoneNumber2 == 0))
      {

        v11 = 0;
        goto LABEL_81;
      }

      v49 = carrierPhoneNumber2;
      carrierPhoneNumber3 = [(SFFlight *)self carrierPhoneNumber];
      if (!carrierPhoneNumber3 || (-[SFFlight carrierPhoneNumber](self, "carrierPhoneNumber"), v37 = objc_claimAutoreleasedReturnValue(), -[SFFlight carrierPhoneNumber](v5, "carrierPhoneNumber"), v45 = objc_claimAutoreleasedReturnValue(), v46 = v37, [v37 isEqual:?]))
      {
        carrierWebsite = [(SFFlight *)self carrierWebsite];
        carrierWebsite2 = [(SFFlight *)v5 carrierWebsite];
        if ((carrierWebsite != 0) == (carrierWebsite2 == 0))
        {

          v11 = 0;
        }

        else
        {
          carrierWebsite3 = [(SFFlight *)self carrierWebsite];
          if (carrierWebsite3)
          {
            v40 = carrierWebsite3;
            carrierWebsite4 = [(SFFlight *)self carrierWebsite];
            carrierWebsite5 = [(SFFlight *)v5 carrierWebsite];
            v11 = [carrierWebsite4 isEqual:carrierWebsite5];
          }

          else
          {

            v11 = 1;
          }
        }

        v38 = carrierPhoneNumber3;
        if (!carrierPhoneNumber3)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v11 = 0;
        v38 = carrierPhoneNumber3;
      }

LABEL_80:
LABEL_81:
      v34 = v63;
      if (!operatorFlightNumber3)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }

    v11 = 0;
  }

LABEL_51:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  flightID = [(SFFlight *)self flightID];
  v6 = [flightID copy];
  [v4 setFlightID:v6];

  carrierCode = [(SFFlight *)self carrierCode];
  v8 = [carrierCode copy];
  [v4 setCarrierCode:v8];

  carrierName = [(SFFlight *)self carrierName];
  v10 = [carrierName copy];
  [v4 setCarrierName:v10];

  flightNumber = [(SFFlight *)self flightNumber];
  v12 = [flightNumber copy];
  [v4 setFlightNumber:v12];

  legs = [(SFFlight *)self legs];
  v14 = [legs copy];
  [v4 setLegs:v14];

  operatorCarrierCode = [(SFFlight *)self operatorCarrierCode];
  v16 = [operatorCarrierCode copy];
  [v4 setOperatorCarrierCode:v16];

  operatorFlightNumber = [(SFFlight *)self operatorFlightNumber];
  v18 = [operatorFlightNumber copy];
  [v4 setOperatorFlightNumber:v18];

  carrierPhoneNumber = [(SFFlight *)self carrierPhoneNumber];
  v20 = [carrierPhoneNumber copy];
  [v4 setCarrierPhoneNumber:v20];

  carrierWebsite = [(SFFlight *)self carrierWebsite];
  v22 = [carrierWebsite copy];
  [v4 setCarrierWebsite:v22];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBFlight alloc] initWithFacade:self];
  jsonData = [(_SFPBFlight *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBFlight alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBFlight *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBFlight alloc] initWithFacade:self];
  data = [(_SFPBFlight *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFFlight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBFlight alloc] initWithData:v5];
  v7 = [(SFFlight *)self initWithProtobuf:v6];

  return v7;
}

- (SFFlight)initWithProtobuf:(id)protobuf
{
  v39 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v37.receiver = self;
  v37.super_class = SFFlight;
  v5 = [(SFFlight *)&v37 init];
  if (v5)
  {
    flightID = [protobufCopy flightID];

    if (flightID)
    {
      flightID2 = [protobufCopy flightID];
      [(SFFlight *)v5 setFlightID:flightID2];
    }

    carrierCode = [protobufCopy carrierCode];

    if (carrierCode)
    {
      carrierCode2 = [protobufCopy carrierCode];
      [(SFFlight *)v5 setCarrierCode:carrierCode2];
    }

    carrierName = [protobufCopy carrierName];

    if (carrierName)
    {
      carrierName2 = [protobufCopy carrierName];
      [(SFFlight *)v5 setCarrierName:carrierName2];
    }

    flightNumber = [protobufCopy flightNumber];

    if (flightNumber)
    {
      flightNumber2 = [protobufCopy flightNumber];
      [(SFFlight *)v5 setFlightNumber:flightNumber2];
    }

    legs = [protobufCopy legs];
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
    legs2 = [protobufCopy legs];
    v17 = [legs2 countByEnumeratingWithState:&v33 objects:v38 count:16];
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

          v21 = [[SFFlightLeg alloc] initWithProtobuf:*(*(&v33 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [legs2 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v18);
    }

    [(SFFlight *)v5 setLegs:v15];
    operatorCarrierCode = [protobufCopy operatorCarrierCode];

    if (operatorCarrierCode)
    {
      operatorCarrierCode2 = [protobufCopy operatorCarrierCode];
      [(SFFlight *)v5 setOperatorCarrierCode:operatorCarrierCode2];
    }

    operatorFlightNumber = [protobufCopy operatorFlightNumber];

    if (operatorFlightNumber)
    {
      operatorFlightNumber2 = [protobufCopy operatorFlightNumber];
      [(SFFlight *)v5 setOperatorFlightNumber:operatorFlightNumber2];
    }

    carrierPhoneNumber = [protobufCopy carrierPhoneNumber];

    if (carrierPhoneNumber)
    {
      carrierPhoneNumber2 = [protobufCopy carrierPhoneNumber];
      [(SFFlight *)v5 setCarrierPhoneNumber:carrierPhoneNumber2];
    }

    carrierWebsite = [protobufCopy carrierWebsite];

    if (carrierWebsite)
    {
      carrierWebsite2 = [protobufCopy carrierWebsite];
      [(SFFlight *)v5 setCarrierWebsite:carrierWebsite2];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

@end