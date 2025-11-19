@interface SFDrillDownMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFDrillDownMetadata)initWithCoder:(id)a3;
- (SFDrillDownMetadata)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setCardOnlyMetadata:(id)a3;
- (void)setCardSearchMetadata:(id)a3;
- (void)setEntitySearchMetadata:(id)a3;
- (void)setEntitySearchOnlyMetadata:(id)a3;
@end

@implementation SFDrillDownMetadata

- (unint64_t)hash
{
  v25 = [(SFDrillDownMetadata *)self cardIdentifier];
  v3 = [v25 hash];
  v24 = [(SFDrillDownMetadata *)self cardIdentifiers];
  v4 = [v24 hash] ^ v3;
  v5 = [(SFDrillDownMetadata *)self cardDomains];
  v6 = [v5 hash];
  v7 = [(SFDrillDownMetadata *)self qtype];
  v8 = v4 ^ v6 ^ [v7 hash];
  v9 = [(SFDrillDownMetadata *)self viewConfigName];
  v10 = [v9 hash];
  v11 = [(SFDrillDownMetadata *)self cardOnlyMetadata];
  v12 = v10 ^ [v11 hash];
  v13 = [(SFDrillDownMetadata *)self entitySearchOnlyMetadata];
  v23 = v8 ^ v12 ^ [v13 hash];
  v14 = [(SFDrillDownMetadata *)self cardSearchMetadata];
  v15 = [v14 hash];
  v16 = [(SFDrillDownMetadata *)self entitySearchMetadata];
  v17 = v15 ^ [v16 hash];
  v18 = [(SFDrillDownMetadata *)self debugParams];
  v19 = v17 ^ [v18 hash];
  v20 = [(SFDrillDownMetadata *)self params];
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

  if (![(SFDrillDownMetadata *)v4 isMemberOfClass:objc_opt_class()])
  {
    v19 = 0;
    goto LABEL_78;
  }

  v5 = v4;
  v119 = [(SFDrillDownMetadata *)self cardIdentifier];
  v118 = [(SFDrillDownMetadata *)v5 cardIdentifier];
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

  v7 = [(SFDrillDownMetadata *)self cardIdentifier];
  v8 = v7 != 0;
  v111 = v7;
  if (v7)
  {
    v9 = [(SFDrillDownMetadata *)self cardIdentifier];
    v106 = [(SFDrillDownMetadata *)v5 cardIdentifier];
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

  v109 = [(SFDrillDownMetadata *)self cardIdentifiers];
  v108 = [(SFDrillDownMetadata *)v5 cardIdentifiers];
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

  v20 = [(SFDrillDownMetadata *)self cardIdentifiers];
  v21 = v20 != 0;
  v105 = v20;
  if (v20)
  {
    v22 = [(SFDrillDownMetadata *)self cardIdentifiers];
    v101 = [(SFDrillDownMetadata *)v5 cardIdentifiers];
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

  v104 = [(SFDrillDownMetadata *)self cardDomains];
  v103 = [(SFDrillDownMetadata *)v5 cardDomains];
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

  v35 = [(SFDrillDownMetadata *)self cardDomains];
  v36 = v35 != 0;
  v100 = v35;
  if (v35)
  {
    v37 = [(SFDrillDownMetadata *)self cardDomains];
    v96 = [(SFDrillDownMetadata *)v5 cardDomains];
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

  v99 = [(SFDrillDownMetadata *)self qtype];
  v98 = [(SFDrillDownMetadata *)v5 qtype];
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

  v38 = [(SFDrillDownMetadata *)self qtype];
  v39 = v38 != 0;
  v95 = v38;
  if (v38)
  {
    v40 = [(SFDrillDownMetadata *)self qtype];
    v91 = [(SFDrillDownMetadata *)v5 qtype];
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

  v94 = [(SFDrillDownMetadata *)self viewConfigName];
  v93 = [(SFDrillDownMetadata *)v5 viewConfigName];
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

  v41 = [(SFDrillDownMetadata *)self viewConfigName];
  v42 = v41 != 0;
  v90 = v41;
  if (v41)
  {
    v43 = [(SFDrillDownMetadata *)self viewConfigName];
    v86 = [(SFDrillDownMetadata *)v5 viewConfigName];
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

  v89 = [(SFDrillDownMetadata *)self cardOnlyMetadata];
  v88 = [(SFDrillDownMetadata *)v5 cardOnlyMetadata];
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

  v44 = [(SFDrillDownMetadata *)self cardOnlyMetadata];
  v45 = v44 != 0;
  v85 = v44;
  if (v44)
  {
    v46 = [(SFDrillDownMetadata *)self cardOnlyMetadata];
    v81 = [(SFDrillDownMetadata *)v5 cardOnlyMetadata];
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

  v84 = [(SFDrillDownMetadata *)self entitySearchOnlyMetadata];
  v83 = [(SFDrillDownMetadata *)v5 entitySearchOnlyMetadata];
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

  v47 = [(SFDrillDownMetadata *)self entitySearchOnlyMetadata];
  v48 = v47 != 0;
  v80 = v47;
  if (v47)
  {
    v49 = [(SFDrillDownMetadata *)self entitySearchOnlyMetadata];
    v76 = [(SFDrillDownMetadata *)v5 entitySearchOnlyMetadata];
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

  v79 = [(SFDrillDownMetadata *)self cardSearchMetadata];
  v78 = [(SFDrillDownMetadata *)v5 cardSearchMetadata];
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

  v50 = [(SFDrillDownMetadata *)self cardSearchMetadata];
  LODWORD(v120[1]) = v50 != 0;
  v75 = v50;
  v58 = v5;
  if (!v50 || (-[SFDrillDownMetadata cardSearchMetadata](self, "cardSearchMetadata"), v51 = objc_claimAutoreleasedReturnValue(), -[SFDrillDownMetadata cardSearchMetadata](v5, "cardSearchMetadata"), v71 = objc_claimAutoreleasedReturnValue(), v72 = v51, [v51 isEqual:?]))
  {
    v74 = [(SFDrillDownMetadata *)self entitySearchMetadata];
    v73 = [(SFDrillDownMetadata *)v58 entitySearchMetadata];
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
      v52 = [(SFDrillDownMetadata *)self entitySearchMetadata];
      HIDWORD(v120[0]) = v52 != 0;
      v70 = v52;
      if (!v52 || (-[SFDrillDownMetadata entitySearchMetadata](self, "entitySearchMetadata"), v53 = objc_claimAutoreleasedReturnValue(), -[SFDrillDownMetadata entitySearchMetadata](v58, "entitySearchMetadata"), v66 = objc_claimAutoreleasedReturnValue(), v67 = v53, [v53 isEqual:?]))
      {
        v69 = [(SFDrillDownMetadata *)self debugParams];
        v68 = [(SFDrillDownMetadata *)v58 debugParams];
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
          v54 = [(SFDrillDownMetadata *)self debugParams];
          LODWORD(v120[0]) = v54 != 0;
          v65 = v54;
          if (!v54 || (-[SFDrillDownMetadata debugParams](self, "debugParams"), v55 = objc_claimAutoreleasedReturnValue(), -[SFDrillDownMetadata debugParams](v58, "debugParams"), v61 = objc_claimAutoreleasedReturnValue(), v62 = v55, [v55 isEqual:?]))
          {
            v64 = [(SFDrillDownMetadata *)self params];
            v63 = [(SFDrillDownMetadata *)v58 params];
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
              v60 = [(SFDrillDownMetadata *)self params];
              if (v60)
              {
                v56 = [(SFDrillDownMetadata *)self params];
                v5 = v58;
                v57 = [(SFDrillDownMetadata *)v58 params];
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
  v5 = [(SFDrillDownMetadata *)self cardIdentifier];
  v6 = [v5 copy];
  [v4 setCardIdentifier:v6];

  v7 = [(SFDrillDownMetadata *)self cardIdentifiers];
  v8 = [v7 copy];
  [v4 setCardIdentifiers:v8];

  v9 = [(SFDrillDownMetadata *)self cardDomains];
  v10 = [v9 copy];
  [v4 setCardDomains:v10];

  v11 = [(SFDrillDownMetadata *)self qtype];
  v12 = [v11 copy];
  [v4 setQtype:v12];

  v13 = [(SFDrillDownMetadata *)self viewConfigName];
  v14 = [v13 copy];
  [v4 setViewConfigName:v14];

  if ([(SFDrillDownMetadata *)self hasCardOnlyMetadata])
  {
    v15 = [(SFDrillDownMetadata *)self cardOnlyMetadata];
    v16 = [v15 copy];
    [v4 setCardOnlyMetadata:v16];
  }

  if ([(SFDrillDownMetadata *)self hasEntitySearchOnlyMetadata])
  {
    v17 = [(SFDrillDownMetadata *)self entitySearchOnlyMetadata];
    v18 = [v17 copy];
    [v4 setEntitySearchOnlyMetadata:v18];
  }

  if ([(SFDrillDownMetadata *)self hasCardSearchMetadata])
  {
    v19 = [(SFDrillDownMetadata *)self cardSearchMetadata];
    v20 = [v19 copy];
    [v4 setCardSearchMetadata:v20];
  }

  if ([(SFDrillDownMetadata *)self hasEntitySearchMetadata])
  {
    v21 = [(SFDrillDownMetadata *)self entitySearchMetadata];
    v22 = [v21 copy];
    [v4 setEntitySearchMetadata:v22];
  }

  v23 = [(SFDrillDownMetadata *)self debugParams];
  v24 = [v23 copy];
  [v4 setDebugParams:v24];

  v25 = [(SFDrillDownMetadata *)self params];
  v26 = [v25 copy];
  [v4 setParams:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBDrillDownMetadata alloc] initWithFacade:self];
  v3 = [(_SFPBDrillDownMetadata *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBDrillDownMetadata alloc] initWithFacade:self];
  v3 = [(_SFPBDrillDownMetadata *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBDrillDownMetadata alloc] initWithFacade:self];
  v5 = [(_SFPBDrillDownMetadata *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFDrillDownMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBDrillDownMetadata alloc] initWithData:v5];
  v7 = [(SFDrillDownMetadata *)self initWithProtobuf:v6];

  return v7;
}

- (void)setEntitySearchMetadata:(id)a3
{
  *&self->_has |= 8u;
  objc_storeStrong(&self->_entitySearchMetadata, a3);
  v8 = a3;
  *&self->_has &= ~1u;
  cardOnlyMetadata = self->_cardOnlyMetadata;
  self->_cardOnlyMetadata = 0;

  *&self->_has &= ~2u;
  entitySearchOnlyMetadata = self->_entitySearchOnlyMetadata;
  self->_entitySearchOnlyMetadata = 0;

  *&self->_has &= ~4u;
  cardSearchMetadata = self->_cardSearchMetadata;
  self->_cardSearchMetadata = 0;
}

- (void)setCardSearchMetadata:(id)a3
{
  *&self->_has |= 4u;
  objc_storeStrong(&self->_cardSearchMetadata, a3);
  v8 = a3;
  *&self->_has &= ~1u;
  cardOnlyMetadata = self->_cardOnlyMetadata;
  self->_cardOnlyMetadata = 0;

  *&self->_has &= ~2u;
  entitySearchOnlyMetadata = self->_entitySearchOnlyMetadata;
  self->_entitySearchOnlyMetadata = 0;

  *&self->_has &= ~8u;
  entitySearchMetadata = self->_entitySearchMetadata;
  self->_entitySearchMetadata = 0;
}

- (void)setEntitySearchOnlyMetadata:(id)a3
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_entitySearchOnlyMetadata, a3);
  v8 = a3;
  *&self->_has &= ~1u;
  cardOnlyMetadata = self->_cardOnlyMetadata;
  self->_cardOnlyMetadata = 0;

  *&self->_has &= ~4u;
  cardSearchMetadata = self->_cardSearchMetadata;
  self->_cardSearchMetadata = 0;

  *&self->_has &= ~8u;
  entitySearchMetadata = self->_entitySearchMetadata;
  self->_entitySearchMetadata = 0;
}

- (void)setCardOnlyMetadata:(id)a3
{
  *&self->_has |= 1u;
  objc_storeStrong(&self->_cardOnlyMetadata, a3);
  v8 = a3;
  *&self->_has &= ~2u;
  entitySearchOnlyMetadata = self->_entitySearchOnlyMetadata;
  self->_entitySearchOnlyMetadata = 0;

  *&self->_has &= ~4u;
  cardSearchMetadata = self->_cardSearchMetadata;
  self->_cardSearchMetadata = 0;

  *&self->_has &= ~8u;
  entitySearchMetadata = self->_entitySearchMetadata;
  self->_entitySearchMetadata = 0;
}

- (SFDrillDownMetadata)initWithProtobuf:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v57.receiver = self;
  v57.super_class = SFDrillDownMetadata;
  v5 = [(SFDrillDownMetadata *)&v57 init];
  if (v5)
  {
    v6 = [v4 cardIdentifier];

    if (v6)
    {
      v7 = [v4 cardIdentifier];
      [(SFDrillDownMetadata *)v5 setCardIdentifier:v7];
    }

    v8 = [v4 cardIdentifiers];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v9 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v10 = [v4 cardIdentifiers];
    v11 = [v10 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v54;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v54 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if (*(*(&v53 + 1) + 8 * i))
          {
            [v9 addObject:?];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v12);
    }

    [(SFDrillDownMetadata *)v5 setCardIdentifiers:v9];
    v15 = [v4 cardDomains];
    if (v15)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v16 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v17 = [v4 cardDomains];
    v18 = [v17 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v50;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v50 != v20)
          {
            objc_enumerationMutation(v17);
          }

          if (*(*(&v49 + 1) + 8 * j))
          {
            [v16 addObject:?];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v19);
    }

    [(SFDrillDownMetadata *)v5 setCardDomains:v16];
    v22 = [v4 qtype];

    if (v22)
    {
      v23 = [v4 qtype];
      [(SFDrillDownMetadata *)v5 setQtype:v23];
    }

    v24 = [v4 viewConfigName];

    if (v24)
    {
      v25 = [v4 viewConfigName];
      [(SFDrillDownMetadata *)v5 setViewConfigName:v25];
    }

    v26 = [v4 cardOnlyMetadata];

    if (v26)
    {
      v27 = [SFCardMetadata alloc];
      v28 = [v4 cardOnlyMetadata];
      v29 = [(SFCardMetadata *)v27 initWithProtobuf:v28];
      [(SFDrillDownMetadata *)v5 setCardOnlyMetadata:v29];
    }

    v30 = [v4 entitySearchOnlyMetadata];

    if (v30)
    {
      v31 = [SFEntitySearchMetadata alloc];
      v32 = [v4 entitySearchOnlyMetadata];
      v33 = [(SFEntitySearchMetadata *)v31 initWithProtobuf:v32];
      [(SFDrillDownMetadata *)v5 setEntitySearchOnlyMetadata:v33];
    }

    v34 = [v4 cardSearchMetadata];

    if (v34)
    {
      v35 = [SFCardSearchMetadata alloc];
      v36 = [v4 cardSearchMetadata];
      v37 = [(SFCardSearchMetadata *)v35 initWithProtobuf:v36];
      [(SFDrillDownMetadata *)v5 setCardSearchMetadata:v37];
    }

    v38 = [v4 entitySearchMetadata];

    if (v38)
    {
      v39 = [SFEntitySearchMetadata alloc];
      v40 = [v4 entitySearchMetadata];
      v41 = [(SFEntitySearchMetadata *)v39 initWithProtobuf:v40];
      [(SFDrillDownMetadata *)v5 setEntitySearchMetadata:v41];
    }

    v42 = [v4 debugParams];

    if (v42)
    {
      v43 = [v4 debugParams];
      [(SFDrillDownMetadata *)v5 setDebugParams:v43];
    }

    v44 = [v4 params];

    if (v44)
    {
      v45 = [v4 params];
      [(SFDrillDownMetadata *)v5 setParams:v45];
    }

    v46 = v5;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

@end