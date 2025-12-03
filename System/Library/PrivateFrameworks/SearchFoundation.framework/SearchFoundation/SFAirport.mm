@interface SFAirport
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAirport)initWithCoder:(id)coder;
- (SFAirport)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAirport

- (unint64_t)hash
{
  code = [(SFAirport *)self code];
  v3 = [code hash];
  timezone = [(SFAirport *)self timezone];
  v4 = [timezone hash] ^ v3;
  location = [(SFAirport *)self location];
  v6 = [location hash];
  city = [(SFAirport *)self city];
  v8 = v4 ^ v6 ^ [city hash];
  street = [(SFAirport *)self street];
  v10 = [street hash];
  district = [(SFAirport *)self district];
  v12 = v10 ^ [district hash];
  state = [(SFAirport *)self state];
  v23 = v8 ^ v12 ^ [state hash];
  postalCode = [(SFAirport *)self postalCode];
  v15 = [postalCode hash];
  countryCode = [(SFAirport *)self countryCode];
  v17 = v15 ^ [countryCode hash];
  country = [(SFAirport *)self country];
  v19 = v17 ^ [country hash];
  name = [(SFAirport *)self name];
  v21 = v19 ^ [name hash];

  return v23 ^ v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
    goto LABEL_78;
  }

  if (![(SFAirport *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v19 = 0;
    goto LABEL_78;
  }

  v5 = equalCopy;
  code = [(SFAirport *)self code];
  code2 = [(SFAirport *)v5 code];
  v116 = code2 == 0;
  v117 = code != 0;
  if (v117 == v116)
  {
    v10 = 0;
    memset(v114, 0, sizeof(v114));
    v11 = 0;
    v113 = 0;
    v112 = 0;
    v12 = 0;
    memset(v115, 0, sizeof(v115));
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v120, 0, 12);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_15;
  }

  code3 = [(SFAirport *)self code];
  v8 = code3 != 0;
  v111 = code3;
  if (code3)
  {
    code4 = [(SFAirport *)self code];
    code5 = [(SFAirport *)v5 code];
    v107 = code4;
    if (![code4 isEqual:?])
    {
      v10 = 0;
      memset(v114, 0, sizeof(v114));
      v11 = 0;
      v113 = 0;
      memset(v115, 0, 24);
      v112 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v120, 0, 12);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v115[24] = 1;
      goto LABEL_15;
    }
  }

  timezone = [(SFAirport *)self timezone];
  timezone2 = [(SFAirport *)v5 timezone];
  *&v115[24] = v8;
  if ((timezone != 0) == (timezone2 == 0))
  {
    v10 = 0;
    v11 = 0;
    v113 = 0;
    memset(v115, 0, 24);
    v112 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    memset(v114, 0, 28);
    v15 = 0;
    memset(v120, 0, 12);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    HIDWORD(v114[3]) = 1;
    goto LABEL_15;
  }

  timezone3 = [(SFAirport *)self timezone];
  v21 = timezone3 != 0;
  v105 = timezone3;
  if (timezone3)
  {
    timezone4 = [(SFAirport *)self timezone];
    timezone5 = [(SFAirport *)v5 timezone];
    v102 = timezone4;
    if (![timezone4 isEqual:?])
    {
      v10 = 0;
      memset(v114, 0, 24);
      v11 = 0;
      v113 = 0;
      v112 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v120, 0, 12);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      memset(v115, 0, 20);
      v114[3] = 0x100000001;
      *&v115[20] = 1;
      goto LABEL_15;
    }

    *&v115[20] = v21;
  }

  else
  {
    *&v115[20] = 0;
  }

  location = [(SFAirport *)self location];
  location2 = [(SFAirport *)v5 location];
  if ((location != 0) == (location2 == 0))
  {
    v10 = 0;
    v114[1] = 0;
    v114[0] = 0;
    v11 = 0;
    v113 = 0;
    v112 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v120, 0, 12);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    memset(v115, 0, 20);
    v114[3] = 0x100000001;
    v114[2] = 1;
    goto LABEL_15;
  }

  location3 = [(SFAirport *)self location];
  v36 = location3 != 0;
  v100 = location3;
  if (location3)
  {
    location4 = [(SFAirport *)self location];
    location5 = [(SFAirport *)v5 location];
    v97 = location4;
    if (![location4 isEqual:?])
    {
      v10 = 0;
      v114[1] = 0;
      *&v115[8] = 0;
      v114[0] = 0;
      v11 = 0;
      v113 = 0;
      *v115 = 0;
      v112 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v120, 0, 12);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v114[3] = 0x100000001;
      v114[2] = 0x100000001;
      *&v115[16] = 1;
      goto LABEL_15;
    }

    *&v115[16] = v36;
  }

  else
  {
    *&v115[16] = 0;
  }

  city = [(SFAirport *)self city];
  city2 = [(SFAirport *)v5 city];
  if ((city != 0) == (city2 == 0))
  {
    v114[1] = 0;
    *&v115[8] = 0;
    v114[0] = 0;
    v11 = 0;
    v113 = 0;
    *v115 = 0;
    v112 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v120, 0, 12);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v114[3] = 0x100000001;
    v114[2] = 0x100000001;
    v10 = 1;
    goto LABEL_15;
  }

  city3 = [(SFAirport *)self city];
  v39 = city3 != 0;
  v95 = city3;
  if (city3)
  {
    city4 = [(SFAirport *)self city];
    city5 = [(SFAirport *)v5 city];
    v92 = city4;
    if (![city4 isEqual:?])
    {
      *(v114 + 4) = 0;
      v11 = 0;
      *&v115[4] = 0;
      v113 = 0;
      v112 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      LODWORD(v114[0]) = 0;
      v15 = 0;
      memset(v120, 0, 12);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *v115 = 0;
      v114[3] = 0x100000001;
      HIDWORD(v114[1]) = 1;
      v114[2] = 0x100000001;
      v10 = 1;
      *&v115[12] = 1;
      goto LABEL_15;
    }

    *&v115[12] = v39;
  }

  else
  {
    *&v115[12] = 0;
  }

  street = [(SFAirport *)self street];
  street2 = [(SFAirport *)v5 street];
  if ((street != 0) == (street2 == 0))
  {
    v11 = 0;
    *&v115[4] = 0;
    v113 = 0;
    v112 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v120, 0, 12);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *v115 = 0;
    v114[3] = 0x100000001;
    v114[2] = 0x100000001;
    v10 = 1;
    v114[1] = 0x100000000;
    v114[0] = 0x100000000;
    goto LABEL_15;
  }

  street3 = [(SFAirport *)self street];
  v42 = street3 != 0;
  v90 = street3;
  if (street3)
  {
    street4 = [(SFAirport *)self street];
    street5 = [(SFAirport *)v5 street];
    v87 = street4;
    if (![street4 isEqual:?])
    {
      v113 = 0;
      *v115 = 0;
      v112 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v120, 0, 12);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v114[3] = 0x100000001;
      v114[2] = 0x100000001;
      v10 = 1;
      v114[1] = 0x100000000;
      v114[0] = 0x100000000;
      v11 = 1;
      *&v115[8] = 1;
      goto LABEL_15;
    }

    *&v115[8] = v42;
  }

  else
  {
    *&v115[8] = 0;
  }

  district = [(SFAirport *)self district];
  district2 = [(SFAirport *)v5 district];
  if ((district != 0) == (district2 == 0))
  {
    v114[1] = 0x100000000;
    *v115 = 0;
    v112 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v120, 0, 12);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v114[3] = 0x100000001;
    v114[2] = 0x100000001;
    v10 = 1;
    v114[0] = 0x100000000;
    v11 = 1;
    v113 = 0x100000000;
    goto LABEL_15;
  }

  district3 = [(SFAirport *)self district];
  v45 = district3 != 0;
  v85 = district3;
  if (district3)
  {
    district4 = [(SFAirport *)self district];
    district5 = [(SFAirport *)v5 district];
    v82 = district4;
    if (![district4 isEqual:?])
    {
      v112 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v120, 0, 12);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *v115 = 0x100000000;
      v114[3] = 0x100000001;
      v114[2] = 0x100000001;
      v10 = 1;
      v114[0] = 0x100000000;
      v11 = 1;
      v113 = 0x100000000;
      v114[1] = 0x100000001;
      goto LABEL_15;
    }

    *&v115[4] = v45;
  }

  else
  {
    *&v115[4] = 0;
  }

  state = [(SFAirport *)self state];
  state2 = [(SFAirport *)v5 state];
  if ((state != 0) == (state2 == 0))
  {
    v12 = 0;
    v112 = 0x100000000;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v120, 0, 12);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *v115 = 0;
    v114[3] = 0x100000001;
    v114[2] = 0x100000001;
    v10 = 1;
    v114[0] = 0x100000000;
    v11 = 1;
    v113 = 0x100000000;
    v114[1] = 0x100000001;
    goto LABEL_15;
  }

  state3 = [(SFAirport *)self state];
  v48 = state3 != 0;
  v80 = state3;
  if (state3)
  {
    state4 = [(SFAirport *)self state];
    state5 = [(SFAirport *)v5 state];
    v77 = state4;
    if (![state4 isEqual:?])
    {
      v112 = 0x100000000;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v120, 0, 12);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v114[3] = 0x100000001;
      v114[2] = 0x100000001;
      v10 = 1;
      v114[1] = 0x100000001;
      v114[0] = 0x100000000;
      v11 = 1;
      v113 = 0x100000000;
      v12 = 1;
      *v115 = 1;
      goto LABEL_15;
    }

    *v115 = v48;
  }

  else
  {
    *v115 = 0;
  }

  postalCode = [(SFAirport *)self postalCode];
  postalCode2 = [(SFAirport *)v5 postalCode];
  if ((postalCode != 0) == (postalCode2 == 0))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v120, 0, 12);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v114[3] = 0x100000001;
    v114[2] = 0x100000001;
    v10 = 1;
    v114[1] = 0x100000001;
    v114[0] = 0x100000000;
    v11 = 1;
    v113 = 0x100000000;
    v12 = 1;
    v112 = 0x100000001;
    goto LABEL_15;
  }

  postalCode3 = [(SFAirport *)self postalCode];
  LODWORD(v120[1]) = postalCode3 != 0;
  v75 = postalCode3;
  v58 = v5;
  if (!postalCode3 || (-[SFAirport postalCode](self, "postalCode"), v51 = objc_claimAutoreleasedReturnValue(), -[SFAirport postalCode](v5, "postalCode"), v71 = objc_claimAutoreleasedReturnValue(), v72 = v51, [v51 isEqual:?]))
  {
    countryCode = [(SFAirport *)self countryCode];
    countryCode2 = [(SFAirport *)v58 countryCode];
    if ((countryCode != 0) == (countryCode2 == 0))
    {
      v14 = 0;
      v120[0] = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v114[3] = 0x100000001;
      v114[2] = 0x100000001;
      v10 = 1;
      v114[1] = 0x100000001;
      v114[0] = 0x100000000;
      v11 = 1;
      v112 = 0x100000001;
      v12 = 1;
      v13 = 1;
      v113 = 0x100000001;
    }

    else
    {
      countryCode3 = [(SFAirport *)self countryCode];
      HIDWORD(v120[0]) = countryCode3 != 0;
      v70 = countryCode3;
      if (!countryCode3 || (-[SFAirport countryCode](self, "countryCode"), v53 = objc_claimAutoreleasedReturnValue(), -[SFAirport countryCode](v58, "countryCode"), v66 = objc_claimAutoreleasedReturnValue(), v67 = v53, [v53 isEqual:?]))
      {
        country = [(SFAirport *)self country];
        country2 = [(SFAirport *)v58 country];
        if ((country != 0) == (country2 == 0))
        {
          v15 = 0;
          LODWORD(v120[0]) = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v114[3] = 0x100000001;
          v114[2] = 0x100000001;
          v10 = 1;
          v114[1] = 0x100000001;
          v11 = 1;
          v113 = 0x100000001;
          v112 = 0x100000001;
          v12 = 1;
          v13 = 1;
          v14 = 1;
          v114[0] = 0x100000001;
        }

        else
        {
          country3 = [(SFAirport *)self country];
          LODWORD(v120[0]) = country3 != 0;
          v65 = country3;
          if (!country3 || (-[SFAirport country](self, "country"), v55 = objc_claimAutoreleasedReturnValue(), -[SFAirport country](v58, "country"), v61 = objc_claimAutoreleasedReturnValue(), v62 = v55, [v55 isEqual:?]))
          {
            name = [(SFAirport *)self name];
            name2 = [(SFAirport *)v58 name];
            if ((name != 0) == (name2 == 0))
            {
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v114[3] = 0x100000001;
              v114[2] = 0x100000001;
              v10 = 1;
              v114[1] = 0x100000001;
              v114[0] = 0x100000001;
              v11 = 1;
              v113 = 0x100000001;
              v112 = 0x100000001;
              v12 = 1;
              v13 = 1;
              v14 = 1;
              v15 = 1;
              v16 = 1;
            }

            else
            {
              name3 = [(SFAirport *)self name];
              if (name3)
              {
                name4 = [(SFAirport *)self name];
                v5 = v58;
                name5 = [(SFAirport *)v58 name];
                v59 = name4;
                v19 = [name4 isEqual:name5];
                v6 = name5;
                v18 = 1;
                v114[3] = 0x100000001;
                v114[2] = 0x100000001;
                v10 = 1;
                v114[1] = 0x100000001;
                v114[0] = 0x100000001;
                v11 = 1;
                v113 = 0x100000001;
                v112 = 0x100000001;
                v12 = 1;
                v13 = 1;
                v14 = 1;
                v15 = 1;
                v16 = 1;
                v17 = 1;
                goto LABEL_15;
              }

              name3 = 0;
              v18 = 0;
              v114[3] = 0x100000001;
              v114[2] = 0x100000001;
              v10 = 1;
              v114[1] = 0x100000001;
              v114[0] = 0x100000001;
              v11 = 1;
              v113 = 0x100000001;
              v112 = 0x100000001;
              v12 = 1;
              v13 = 1;
              v14 = 1;
              v15 = 1;
              v16 = 1;
              v17 = 1;
              v19 = 1;
            }
          }

          else
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v114[3] = 0x100000001;
            v114[2] = 0x100000001;
            v10 = 1;
            v114[1] = 0x100000001;
            v114[0] = 0x100000001;
            v11 = 1;
            v113 = 0x100000001;
            v112 = 0x100000001;
            v12 = 1;
            v13 = 1;
            v14 = 1;
            v15 = 1;
            LODWORD(v120[0]) = 1;
          }
        }
      }

      else
      {
        v15 = 0;
        v120[0] = 0x100000000;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v114[3] = 0x100000001;
        v114[2] = 0x100000001;
        v10 = 1;
        v114[1] = 0x100000001;
        v114[0] = 0x100000000;
        v11 = 1;
        v113 = 0x100000001;
        v112 = 0x100000001;
        v12 = 1;
        v13 = 1;
        v14 = 1;
      }
    }
  }

  else
  {
    v14 = 0;
    v120[0] = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v114[3] = 0x100000001;
    v114[2] = 0x100000001;
    v10 = 1;
    v114[1] = 0x100000001;
    v114[0] = 0x100000000;
    v11 = 1;
    v113 = 0x100000000;
    v112 = 0x100000001;
    v12 = 1;
    v13 = 1;
    LODWORD(v120[1]) = 1;
  }

  v5 = v58;
LABEL_15:
  if (v18)
  {
    v110 = equalCopy;
    v23 = v19;
    v24 = v13;
    v25 = v12;
    v26 = v5;
    v27 = v14;
    v28 = v16;
    v29 = v15;
    v30 = v11;
    v31 = v10;
    v32 = v17;

    v33 = v32;
    v10 = v31;
    v11 = v30;
    v15 = v29;
    v16 = v28;
    v14 = v27;
    v5 = v26;
    v12 = v25;
    v13 = v24;
    v19 = v23;
    equalCopy = v110;
    if (!v33)
    {
      goto LABEL_17;
    }

LABEL_80:

    if (!v16)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v17)
  {
    goto LABEL_80;
  }

LABEL_17:
  if (v16)
  {
LABEL_18:
  }

LABEL_19:
  if (LODWORD(v120[0]))
  {
  }

  if (v15)
  {
  }

  if (LODWORD(v114[0]))
  {
  }

  if (HIDWORD(v120[0]))
  {
  }

  if (v14)
  {
  }

  if (v113)
  {
  }

  if (LODWORD(v120[1]))
  {
  }

  if (v13)
  {
  }

  if (v112)
  {
  }

  if (*v115)
  {
  }

  if (v12)
  {
  }

  if (HIDWORD(v112))
  {
  }

  if (*&v115[4])
  {
  }

  if (LODWORD(v114[1]))
  {
  }

  if (HIDWORD(v113))
  {
  }

  if (*&v115[8])
  {
  }

  if (v11)
  {
  }

  if (HIDWORD(v114[0]))
  {
  }

  if (*&v115[12])
  {
  }

  if (HIDWORD(v114[1]))
  {
  }

  if (v10)
  {
  }

  if (*&v115[16])
  {
  }

  if (HIDWORD(v114[2]))
  {
  }

  if (LODWORD(v114[2]))
  {
  }

  if (*&v115[20])
  {
  }

  if (LODWORD(v114[3]))
  {
  }

  if (HIDWORD(v114[3]))
  {
  }

  if (*&v115[24])
  {
  }

  if (v117 != v116)
  {
  }

LABEL_78:
  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  code = [(SFAirport *)self code];
  v6 = [code copy];
  [v4 setCode:v6];

  timezone = [(SFAirport *)self timezone];
  v8 = [timezone copy];
  [v4 setTimezone:v8];

  location = [(SFAirport *)self location];
  v10 = [location copy];
  [v4 setLocation:v10];

  city = [(SFAirport *)self city];
  v12 = [city copy];
  [v4 setCity:v12];

  street = [(SFAirport *)self street];
  v14 = [street copy];
  [v4 setStreet:v14];

  district = [(SFAirport *)self district];
  v16 = [district copy];
  [v4 setDistrict:v16];

  state = [(SFAirport *)self state];
  v18 = [state copy];
  [v4 setState:v18];

  postalCode = [(SFAirport *)self postalCode];
  v20 = [postalCode copy];
  [v4 setPostalCode:v20];

  countryCode = [(SFAirport *)self countryCode];
  v22 = [countryCode copy];
  [v4 setCountryCode:v22];

  country = [(SFAirport *)self country];
  v24 = [country copy];
  [v4 setCountry:v24];

  name = [(SFAirport *)self name];
  v26 = [name copy];
  [v4 setName:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAirport alloc] initWithFacade:self];
  jsonData = [(_SFPBAirport *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAirport alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBAirport *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBAirport alloc] initWithFacade:self];
  data = [(_SFPBAirport *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFAirport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBAirport alloc] initWithData:v5];
  v7 = [(SFAirport *)self initWithProtobuf:v6];

  return v7;
}

- (SFAirport)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v33.receiver = self;
  v33.super_class = SFAirport;
  v5 = [(SFAirport *)&v33 init];
  if (v5)
  {
    code = [protobufCopy code];

    if (code)
    {
      code2 = [protobufCopy code];
      [(SFAirport *)v5 setCode:code2];
    }

    timezone = [protobufCopy timezone];

    if (timezone)
    {
      timezone2 = [protobufCopy timezone];
      v10 = _SFPBTimeZoneHandwrittenTranslator(timezone2);
      [(SFAirport *)v5 setTimezone:v10];
    }

    location = [protobufCopy location];

    if (location)
    {
      v12 = [SFLatLng alloc];
      location2 = [protobufCopy location];
      v14 = [(SFLatLng *)v12 initWithProtobuf:location2];
      [(SFAirport *)v5 setLocation:v14];
    }

    city = [protobufCopy city];

    if (city)
    {
      city2 = [protobufCopy city];
      [(SFAirport *)v5 setCity:city2];
    }

    street = [protobufCopy street];

    if (street)
    {
      street2 = [protobufCopy street];
      [(SFAirport *)v5 setStreet:street2];
    }

    district = [protobufCopy district];

    if (district)
    {
      district2 = [protobufCopy district];
      [(SFAirport *)v5 setDistrict:district2];
    }

    state = [protobufCopy state];

    if (state)
    {
      state2 = [protobufCopy state];
      [(SFAirport *)v5 setState:state2];
    }

    postalCode = [protobufCopy postalCode];

    if (postalCode)
    {
      postalCode2 = [protobufCopy postalCode];
      [(SFAirport *)v5 setPostalCode:postalCode2];
    }

    countryCode = [protobufCopy countryCode];

    if (countryCode)
    {
      countryCode2 = [protobufCopy countryCode];
      [(SFAirport *)v5 setCountryCode:countryCode2];
    }

    country = [protobufCopy country];

    if (country)
    {
      country2 = [protobufCopy country];
      [(SFAirport *)v5 setCountry:country2];
    }

    name = [protobufCopy name];

    if (name)
    {
      name2 = [protobufCopy name];
      [(SFAirport *)v5 setName:name2];
    }

    v31 = v5;
  }

  return v5;
}

@end