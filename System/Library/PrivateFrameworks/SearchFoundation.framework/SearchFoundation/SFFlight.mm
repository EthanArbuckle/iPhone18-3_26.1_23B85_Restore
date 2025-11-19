@interface SFFlight
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFFlight)initWithCoder:(id)a3;
- (SFFlight)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFFlight

- (unint64_t)hash
{
  v21 = [(SFFlight *)self flightID];
  v3 = [v21 hash];
  v4 = [(SFFlight *)self carrierCode];
  v5 = [v4 hash] ^ v3;
  v6 = [(SFFlight *)self carrierName];
  v7 = [v6 hash];
  v8 = [(SFFlight *)self flightNumber];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(SFFlight *)self legs];
  v11 = [v10 hash];
  v12 = [(SFFlight *)self operatorCarrierCode];
  v13 = v11 ^ [v12 hash];
  v14 = [(SFFlight *)self operatorFlightNumber];
  v15 = v9 ^ v13 ^ [v14 hash];
  v16 = [(SFFlight *)self carrierPhoneNumber];
  v17 = [v16 hash];
  v18 = [(SFFlight *)self carrierWebsite];
  v19 = v17 ^ [v18 hash];

  return v15 ^ v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFFlight *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      v6 = [(SFFlight *)self flightID];
      v7 = [(SFFlight *)v5 flightID];
      if ((v6 != 0) == (v7 == 0))
      {
        v11 = 0;
LABEL_50:

        goto LABEL_51;
      }

      v8 = [(SFFlight *)self flightID];
      if (v8)
      {
        v9 = [(SFFlight *)self flightID];
        v10 = [(SFFlight *)v5 flightID];
        if (![v9 isEqual:v10])
        {
          v11 = 0;
LABEL_48:

          goto LABEL_49;
        }

        v79 = v10;
        v80 = v9;
      }

      v12 = [(SFFlight *)self carrierCode];
      v13 = [(SFFlight *)v5 carrierCode];
      if ((v12 != 0) == (v13 == 0))
      {
        goto LABEL_46;
      }

      v14 = [(SFFlight *)self carrierCode];
      if (v14)
      {
        v15 = [(SFFlight *)self carrierCode];
        v76 = [(SFFlight *)v5 carrierCode];
        v77 = v15;
        if (![v15 isEqual:v76])
        {
LABEL_44:

LABEL_45:
          goto LABEL_46;
        }
      }

      v78 = v14;
      v16 = [(SFFlight *)self carrierName];
      v17 = [(SFFlight *)v5 carrierName];
      if ((v16 != 0) == (v17 == 0))
      {

        if (!v14)
        {
LABEL_46:

          v11 = 0;
          if (!v8)
          {
LABEL_49:

            goto LABEL_50;
          }

          goto LABEL_47;
        }

        goto LABEL_44;
      }

      v73 = v16;
      v74 = v17;
      v75 = [(SFFlight *)self carrierName];
      if (v75)
      {
        v18 = [(SFFlight *)self carrierName];
        [(SFFlight *)v5 carrierName];
        v72 = v71 = v18;
        if (![v18 isEqual:v72])
        {
LABEL_42:

LABEL_43:
          if (!v14)
          {
            goto LABEL_46;
          }

          goto LABEL_44;
        }
      }

      v19 = [(SFFlight *)self flightNumber];
      v20 = v19 != 0;
      v21 = [(SFFlight *)v5 flightNumber];
      if (v20 == (v21 == 0))
      {

        goto LABEL_41;
      }

      v69 = v21;
      v70 = v19;
      v22 = [(SFFlight *)self flightNumber];
      if (v22)
      {
        v20 = [(SFFlight *)self flightNumber];
        v67 = [(SFFlight *)v5 flightNumber];
        if (![v20 isEqual:?])
        {
          goto LABEL_39;
        }
      }

      v68 = v22;
      v66 = v20;
      v23 = [(SFFlight *)self legs];
      v24 = [(SFFlight *)v5 legs];
      if ((v23 != 0) == (v24 == 0))
      {

        goto LABEL_38;
      }

      v64 = v23;
      v65 = v24;
      v25 = [(SFFlight *)self legs];
      if (v25)
      {
        v23 = [(SFFlight *)self legs];
        v62 = [(SFFlight *)v5 legs];
        if (![v23 isEqual:?])
        {
LABEL_36:

LABEL_37:
LABEL_38:
          v20 = v66;
          v22 = v68;
          if (!v68)
          {
LABEL_40:

LABEL_41:
            v14 = v78;
            if (!v75)
            {
              goto LABEL_43;
            }

            goto LABEL_42;
          }

LABEL_39:

          goto LABEL_40;
        }
      }

      v61 = v23;
      v63 = v25;
      v26 = [(SFFlight *)self operatorCarrierCode];
      v27 = [(SFFlight *)v5 operatorCarrierCode];
      if ((v26 != 0) == (v27 == 0))
      {

        v23 = v61;
        if (!v25)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v58 = v27;
      v59 = v26;
      v60 = [(SFFlight *)self operatorCarrierCode];
      if (v60)
      {
        v28 = [(SFFlight *)self operatorCarrierCode];
        v56 = [(SFFlight *)v5 operatorCarrierCode];
        v57 = v28;
        if (![v28 isEqual:v56])
        {
          goto LABEL_58;
        }
      }

      v30 = [(SFFlight *)self operatorFlightNumber];
      v31 = [(SFFlight *)v5 operatorFlightNumber];
      if ((v30 != 0) == (v31 == 0))
      {

        if (!v60)
        {
          v35 = v68;
LABEL_59:

          if (v25)
          {
          }

          v14 = v78;
          if (v35)
          {
          }

          if (v75)
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

      v54 = v30;
      v55 = v31;
      v32 = [(SFFlight *)self operatorFlightNumber];
      if (v32)
      {
        v33 = [(SFFlight *)self operatorFlightNumber];
        v51 = [(SFFlight *)v5 operatorFlightNumber];
        v52 = v33;
        if (![v33 isEqual:?])
        {
          v11 = 0;
          v34 = v63;
LABEL_82:

LABEL_83:
          if (v60)
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

          if (v75)
          {
          }

          if (v78)
          {
          }

          if (!v8)
          {
            goto LABEL_49;
          }

LABEL_47:
          v10 = v79;
          v9 = v80;
          goto LABEL_48;
        }
      }

      v53 = [(SFFlight *)self carrierPhoneNumber];
      v36 = [(SFFlight *)v5 carrierPhoneNumber];
      if ((v53 != 0) == (v36 == 0))
      {

        v11 = 0;
        goto LABEL_81;
      }

      v49 = v36;
      v50 = [(SFFlight *)self carrierPhoneNumber];
      if (!v50 || (-[SFFlight carrierPhoneNumber](self, "carrierPhoneNumber"), v37 = objc_claimAutoreleasedReturnValue(), -[SFFlight carrierPhoneNumber](v5, "carrierPhoneNumber"), v45 = objc_claimAutoreleasedReturnValue(), v46 = v37, [v37 isEqual:?]))
      {
        v48 = [(SFFlight *)self carrierWebsite];
        v47 = [(SFFlight *)v5 carrierWebsite];
        if ((v48 != 0) == (v47 == 0))
        {

          v11 = 0;
        }

        else
        {
          v39 = [(SFFlight *)self carrierWebsite];
          if (v39)
          {
            v40 = v39;
            v44 = [(SFFlight *)self carrierWebsite];
            v43 = [(SFFlight *)v5 carrierWebsite];
            v11 = [v44 isEqual:v43];
          }

          else
          {

            v11 = 1;
          }
        }

        v38 = v50;
        if (!v50)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v11 = 0;
        v38 = v50;
      }

LABEL_80:
LABEL_81:
      v34 = v63;
      if (!v32)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFFlight *)self flightID];
  v6 = [v5 copy];
  [v4 setFlightID:v6];

  v7 = [(SFFlight *)self carrierCode];
  v8 = [v7 copy];
  [v4 setCarrierCode:v8];

  v9 = [(SFFlight *)self carrierName];
  v10 = [v9 copy];
  [v4 setCarrierName:v10];

  v11 = [(SFFlight *)self flightNumber];
  v12 = [v11 copy];
  [v4 setFlightNumber:v12];

  v13 = [(SFFlight *)self legs];
  v14 = [v13 copy];
  [v4 setLegs:v14];

  v15 = [(SFFlight *)self operatorCarrierCode];
  v16 = [v15 copy];
  [v4 setOperatorCarrierCode:v16];

  v17 = [(SFFlight *)self operatorFlightNumber];
  v18 = [v17 copy];
  [v4 setOperatorFlightNumber:v18];

  v19 = [(SFFlight *)self carrierPhoneNumber];
  v20 = [v19 copy];
  [v4 setCarrierPhoneNumber:v20];

  v21 = [(SFFlight *)self carrierWebsite];
  v22 = [v21 copy];
  [v4 setCarrierWebsite:v22];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBFlight alloc] initWithFacade:self];
  v3 = [(_SFPBFlight *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBFlight alloc] initWithFacade:self];
  v3 = [(_SFPBFlight *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBFlight alloc] initWithFacade:self];
  v5 = [(_SFPBFlight *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFFlight)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBFlight alloc] initWithData:v5];
  v7 = [(SFFlight *)self initWithProtobuf:v6];

  return v7;
}

- (SFFlight)initWithProtobuf:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = SFFlight;
  v5 = [(SFFlight *)&v37 init];
  if (v5)
  {
    v6 = [v4 flightID];

    if (v6)
    {
      v7 = [v4 flightID];
      [(SFFlight *)v5 setFlightID:v7];
    }

    v8 = [v4 carrierCode];

    if (v8)
    {
      v9 = [v4 carrierCode];
      [(SFFlight *)v5 setCarrierCode:v9];
    }

    v10 = [v4 carrierName];

    if (v10)
    {
      v11 = [v4 carrierName];
      [(SFFlight *)v5 setCarrierName:v11];
    }

    v12 = [v4 flightNumber];

    if (v12)
    {
      v13 = [v4 flightNumber];
      [(SFFlight *)v5 setFlightNumber:v13];
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
    v17 = [v16 countByEnumeratingWithState:&v33 objects:v38 count:16];
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

          v21 = [[SFFlightLeg alloc] initWithProtobuf:*(*(&v33 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v18);
    }

    [(SFFlight *)v5 setLegs:v15];
    v22 = [v4 operatorCarrierCode];

    if (v22)
    {
      v23 = [v4 operatorCarrierCode];
      [(SFFlight *)v5 setOperatorCarrierCode:v23];
    }

    v24 = [v4 operatorFlightNumber];

    if (v24)
    {
      v25 = [v4 operatorFlightNumber];
      [(SFFlight *)v5 setOperatorFlightNumber:v25];
    }

    v26 = [v4 carrierPhoneNumber];

    if (v26)
    {
      v27 = [v4 carrierPhoneNumber];
      [(SFFlight *)v5 setCarrierPhoneNumber:v27];
    }

    v28 = [v4 carrierWebsite];

    if (v28)
    {
      v29 = [v4 carrierWebsite];
      [(SFFlight *)v5 setCarrierWebsite:v29];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

@end