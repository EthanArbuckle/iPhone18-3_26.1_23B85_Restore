@interface SFAirport
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAirport)initWithCoder:(id)a3;
- (SFAirport)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFAirport

- (unint64_t)hash
{
  v25 = [(SFAirport *)self code];
  v3 = [v25 hash];
  v24 = [(SFAirport *)self timezone];
  v4 = [v24 hash] ^ v3;
  v5 = [(SFAirport *)self location];
  v6 = [v5 hash];
  v7 = [(SFAirport *)self city];
  v8 = v4 ^ v6 ^ [v7 hash];
  v9 = [(SFAirport *)self street];
  v10 = [v9 hash];
  v11 = [(SFAirport *)self district];
  v12 = v10 ^ [v11 hash];
  v13 = [(SFAirport *)self state];
  v23 = v8 ^ v12 ^ [v13 hash];
  v14 = [(SFAirport *)self postalCode];
  v15 = [v14 hash];
  v16 = [(SFAirport *)self countryCode];
  v17 = v15 ^ [v16 hash];
  v18 = [(SFAirport *)self country];
  v19 = v17 ^ [v18 hash];
  v20 = [(SFAirport *)self name];
  v21 = v19 ^ [v20 hash];

  return v23 ^ v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
    goto LABEL_78;
  }

  if (![(SFAirport *)v4 isMemberOfClass:objc_opt_class()])
  {
    v19 = 0;
    goto LABEL_78;
  }

  v5 = v4;
  v119 = [(SFAirport *)self code];
  v118 = [(SFAirport *)v5 code];
  v116 = v118 == 0;
  v117 = v119 != 0;
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

  v7 = [(SFAirport *)self code];
  v8 = v7 != 0;
  v111 = v7;
  if (v7)
  {
    v9 = [(SFAirport *)self code];
    v106 = [(SFAirport *)v5 code];
    v107 = v9;
    if (![v9 isEqual:?])
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

  v109 = [(SFAirport *)self timezone];
  v108 = [(SFAirport *)v5 timezone];
  *&v115[24] = v8;
  if ((v109 != 0) == (v108 == 0))
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

  v20 = [(SFAirport *)self timezone];
  v21 = v20 != 0;
  v105 = v20;
  if (v20)
  {
    v22 = [(SFAirport *)self timezone];
    v101 = [(SFAirport *)v5 timezone];
    v102 = v22;
    if (![v22 isEqual:?])
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

  v104 = [(SFAirport *)self location];
  v103 = [(SFAirport *)v5 location];
  if ((v104 != 0) == (v103 == 0))
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

  v35 = [(SFAirport *)self location];
  v36 = v35 != 0;
  v100 = v35;
  if (v35)
  {
    v37 = [(SFAirport *)self location];
    v96 = [(SFAirport *)v5 location];
    v97 = v37;
    if (![v37 isEqual:?])
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

  v99 = [(SFAirport *)self city];
  v98 = [(SFAirport *)v5 city];
  if ((v99 != 0) == (v98 == 0))
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

  v38 = [(SFAirport *)self city];
  v39 = v38 != 0;
  v95 = v38;
  if (v38)
  {
    v40 = [(SFAirport *)self city];
    v91 = [(SFAirport *)v5 city];
    v92 = v40;
    if (![v40 isEqual:?])
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

  v94 = [(SFAirport *)self street];
  v93 = [(SFAirport *)v5 street];
  if ((v94 != 0) == (v93 == 0))
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

  v41 = [(SFAirport *)self street];
  v42 = v41 != 0;
  v90 = v41;
  if (v41)
  {
    v43 = [(SFAirport *)self street];
    v86 = [(SFAirport *)v5 street];
    v87 = v43;
    if (![v43 isEqual:?])
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

  v89 = [(SFAirport *)self district];
  v88 = [(SFAirport *)v5 district];
  if ((v89 != 0) == (v88 == 0))
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

  v44 = [(SFAirport *)self district];
  v45 = v44 != 0;
  v85 = v44;
  if (v44)
  {
    v46 = [(SFAirport *)self district];
    v81 = [(SFAirport *)v5 district];
    v82 = v46;
    if (![v46 isEqual:?])
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

  v84 = [(SFAirport *)self state];
  v83 = [(SFAirport *)v5 state];
  if ((v84 != 0) == (v83 == 0))
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

  v47 = [(SFAirport *)self state];
  v48 = v47 != 0;
  v80 = v47;
  if (v47)
  {
    v49 = [(SFAirport *)self state];
    v76 = [(SFAirport *)v5 state];
    v77 = v49;
    if (![v49 isEqual:?])
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

  v79 = [(SFAirport *)self postalCode];
  v78 = [(SFAirport *)v5 postalCode];
  if ((v79 != 0) == (v78 == 0))
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

  v50 = [(SFAirport *)self postalCode];
  LODWORD(v120[1]) = v50 != 0;
  v75 = v50;
  v58 = v5;
  if (!v50 || (-[SFAirport postalCode](self, "postalCode"), v51 = objc_claimAutoreleasedReturnValue(), -[SFAirport postalCode](v5, "postalCode"), v71 = objc_claimAutoreleasedReturnValue(), v72 = v51, [v51 isEqual:?]))
  {
    v74 = [(SFAirport *)self countryCode];
    v73 = [(SFAirport *)v58 countryCode];
    if ((v74 != 0) == (v73 == 0))
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
      v52 = [(SFAirport *)self countryCode];
      HIDWORD(v120[0]) = v52 != 0;
      v70 = v52;
      if (!v52 || (-[SFAirport countryCode](self, "countryCode"), v53 = objc_claimAutoreleasedReturnValue(), -[SFAirport countryCode](v58, "countryCode"), v66 = objc_claimAutoreleasedReturnValue(), v67 = v53, [v53 isEqual:?]))
      {
        v69 = [(SFAirport *)self country];
        v68 = [(SFAirport *)v58 country];
        if ((v69 != 0) == (v68 == 0))
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
          v54 = [(SFAirport *)self country];
          LODWORD(v120[0]) = v54 != 0;
          v65 = v54;
          if (!v54 || (-[SFAirport country](self, "country"), v55 = objc_claimAutoreleasedReturnValue(), -[SFAirport country](v58, "country"), v61 = objc_claimAutoreleasedReturnValue(), v62 = v55, [v55 isEqual:?]))
          {
            v64 = [(SFAirport *)self name];
            v63 = [(SFAirport *)v58 name];
            if ((v64 != 0) == (v63 == 0))
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
              v60 = [(SFAirport *)self name];
              if (v60)
              {
                v56 = [(SFAirport *)self name];
                v5 = v58;
                v57 = [(SFAirport *)v58 name];
                v59 = v56;
                v19 = [v56 isEqual:v57];
                v6 = v57;
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

              v60 = 0;
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
    v110 = v4;
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
    v4 = v110;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFAirport *)self code];
  v6 = [v5 copy];
  [v4 setCode:v6];

  v7 = [(SFAirport *)self timezone];
  v8 = [v7 copy];
  [v4 setTimezone:v8];

  v9 = [(SFAirport *)self location];
  v10 = [v9 copy];
  [v4 setLocation:v10];

  v11 = [(SFAirport *)self city];
  v12 = [v11 copy];
  [v4 setCity:v12];

  v13 = [(SFAirport *)self street];
  v14 = [v13 copy];
  [v4 setStreet:v14];

  v15 = [(SFAirport *)self district];
  v16 = [v15 copy];
  [v4 setDistrict:v16];

  v17 = [(SFAirport *)self state];
  v18 = [v17 copy];
  [v4 setState:v18];

  v19 = [(SFAirport *)self postalCode];
  v20 = [v19 copy];
  [v4 setPostalCode:v20];

  v21 = [(SFAirport *)self countryCode];
  v22 = [v21 copy];
  [v4 setCountryCode:v22];

  v23 = [(SFAirport *)self country];
  v24 = [v23 copy];
  [v4 setCountry:v24];

  v25 = [(SFAirport *)self name];
  v26 = [v25 copy];
  [v4 setName:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAirport alloc] initWithFacade:self];
  v3 = [(_SFPBAirport *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAirport alloc] initWithFacade:self];
  v3 = [(_SFPBAirport *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBAirport alloc] initWithFacade:self];
  v5 = [(_SFPBAirport *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFAirport)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBAirport alloc] initWithData:v5];
  v7 = [(SFAirport *)self initWithProtobuf:v6];

  return v7;
}

- (SFAirport)initWithProtobuf:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = SFAirport;
  v5 = [(SFAirport *)&v33 init];
  if (v5)
  {
    v6 = [v4 code];

    if (v6)
    {
      v7 = [v4 code];
      [(SFAirport *)v5 setCode:v7];
    }

    v8 = [v4 timezone];

    if (v8)
    {
      v9 = [v4 timezone];
      v10 = _SFPBTimeZoneHandwrittenTranslator(v9);
      [(SFAirport *)v5 setTimezone:v10];
    }

    v11 = [v4 location];

    if (v11)
    {
      v12 = [SFLatLng alloc];
      v13 = [v4 location];
      v14 = [(SFLatLng *)v12 initWithProtobuf:v13];
      [(SFAirport *)v5 setLocation:v14];
    }

    v15 = [v4 city];

    if (v15)
    {
      v16 = [v4 city];
      [(SFAirport *)v5 setCity:v16];
    }

    v17 = [v4 street];

    if (v17)
    {
      v18 = [v4 street];
      [(SFAirport *)v5 setStreet:v18];
    }

    v19 = [v4 district];

    if (v19)
    {
      v20 = [v4 district];
      [(SFAirport *)v5 setDistrict:v20];
    }

    v21 = [v4 state];

    if (v21)
    {
      v22 = [v4 state];
      [(SFAirport *)v5 setState:v22];
    }

    v23 = [v4 postalCode];

    if (v23)
    {
      v24 = [v4 postalCode];
      [(SFAirport *)v5 setPostalCode:v24];
    }

    v25 = [v4 countryCode];

    if (v25)
    {
      v26 = [v4 countryCode];
      [(SFAirport *)v5 setCountryCode:v26];
    }

    v27 = [v4 country];

    if (v27)
    {
      v28 = [v4 country];
      [(SFAirport *)v5 setCountry:v28];
    }

    v29 = [v4 name];

    if (v29)
    {
      v30 = [v4 name];
      [(SFAirport *)v5 setName:v30];
    }

    v31 = v5;
  }

  return v5;
}

@end