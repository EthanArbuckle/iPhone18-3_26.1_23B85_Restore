@interface SFDrillDownMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFDrillDownMetadata)initWithCoder:(id)coder;
- (SFDrillDownMetadata)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setCardOnlyMetadata:(id)metadata;
- (void)setCardSearchMetadata:(id)metadata;
- (void)setEntitySearchMetadata:(id)metadata;
- (void)setEntitySearchOnlyMetadata:(id)metadata;
@end

@implementation SFDrillDownMetadata

- (unint64_t)hash
{
  cardIdentifier = [(SFDrillDownMetadata *)self cardIdentifier];
  v3 = [cardIdentifier hash];
  cardIdentifiers = [(SFDrillDownMetadata *)self cardIdentifiers];
  v4 = [cardIdentifiers hash] ^ v3;
  cardDomains = [(SFDrillDownMetadata *)self cardDomains];
  v6 = [cardDomains hash];
  qtype = [(SFDrillDownMetadata *)self qtype];
  v8 = v4 ^ v6 ^ [qtype hash];
  viewConfigName = [(SFDrillDownMetadata *)self viewConfigName];
  v10 = [viewConfigName hash];
  cardOnlyMetadata = [(SFDrillDownMetadata *)self cardOnlyMetadata];
  v12 = v10 ^ [cardOnlyMetadata hash];
  entitySearchOnlyMetadata = [(SFDrillDownMetadata *)self entitySearchOnlyMetadata];
  v23 = v8 ^ v12 ^ [entitySearchOnlyMetadata hash];
  cardSearchMetadata = [(SFDrillDownMetadata *)self cardSearchMetadata];
  v15 = [cardSearchMetadata hash];
  entitySearchMetadata = [(SFDrillDownMetadata *)self entitySearchMetadata];
  v17 = v15 ^ [entitySearchMetadata hash];
  debugParams = [(SFDrillDownMetadata *)self debugParams];
  v19 = v17 ^ [debugParams hash];
  params = [(SFDrillDownMetadata *)self params];
  v21 = v19 ^ [params hash];

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

  if (![(SFDrillDownMetadata *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v19 = 0;
    goto LABEL_78;
  }

  v5 = equalCopy;
  cardIdentifier = [(SFDrillDownMetadata *)self cardIdentifier];
  cardIdentifier2 = [(SFDrillDownMetadata *)v5 cardIdentifier];
  v116 = cardIdentifier2 == 0;
  v117 = cardIdentifier != 0;
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

  cardIdentifier3 = [(SFDrillDownMetadata *)self cardIdentifier];
  v8 = cardIdentifier3 != 0;
  v111 = cardIdentifier3;
  if (cardIdentifier3)
  {
    cardIdentifier4 = [(SFDrillDownMetadata *)self cardIdentifier];
    cardIdentifier5 = [(SFDrillDownMetadata *)v5 cardIdentifier];
    v107 = cardIdentifier4;
    if (![cardIdentifier4 isEqual:?])
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

  cardIdentifiers = [(SFDrillDownMetadata *)self cardIdentifiers];
  cardIdentifiers2 = [(SFDrillDownMetadata *)v5 cardIdentifiers];
  *&v115[24] = v8;
  if ((cardIdentifiers != 0) == (cardIdentifiers2 == 0))
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

  cardIdentifiers3 = [(SFDrillDownMetadata *)self cardIdentifiers];
  v21 = cardIdentifiers3 != 0;
  v105 = cardIdentifiers3;
  if (cardIdentifiers3)
  {
    cardIdentifiers4 = [(SFDrillDownMetadata *)self cardIdentifiers];
    cardIdentifiers5 = [(SFDrillDownMetadata *)v5 cardIdentifiers];
    v102 = cardIdentifiers4;
    if (![cardIdentifiers4 isEqual:?])
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

  cardDomains = [(SFDrillDownMetadata *)self cardDomains];
  cardDomains2 = [(SFDrillDownMetadata *)v5 cardDomains];
  if ((cardDomains != 0) == (cardDomains2 == 0))
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

  cardDomains3 = [(SFDrillDownMetadata *)self cardDomains];
  v36 = cardDomains3 != 0;
  v100 = cardDomains3;
  if (cardDomains3)
  {
    cardDomains4 = [(SFDrillDownMetadata *)self cardDomains];
    cardDomains5 = [(SFDrillDownMetadata *)v5 cardDomains];
    v97 = cardDomains4;
    if (![cardDomains4 isEqual:?])
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

  qtype = [(SFDrillDownMetadata *)self qtype];
  qtype2 = [(SFDrillDownMetadata *)v5 qtype];
  if ((qtype != 0) == (qtype2 == 0))
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

  qtype3 = [(SFDrillDownMetadata *)self qtype];
  v39 = qtype3 != 0;
  v95 = qtype3;
  if (qtype3)
  {
    qtype4 = [(SFDrillDownMetadata *)self qtype];
    qtype5 = [(SFDrillDownMetadata *)v5 qtype];
    v92 = qtype4;
    if (![qtype4 isEqual:?])
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

  viewConfigName = [(SFDrillDownMetadata *)self viewConfigName];
  viewConfigName2 = [(SFDrillDownMetadata *)v5 viewConfigName];
  if ((viewConfigName != 0) == (viewConfigName2 == 0))
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

  viewConfigName3 = [(SFDrillDownMetadata *)self viewConfigName];
  v42 = viewConfigName3 != 0;
  v90 = viewConfigName3;
  if (viewConfigName3)
  {
    viewConfigName4 = [(SFDrillDownMetadata *)self viewConfigName];
    viewConfigName5 = [(SFDrillDownMetadata *)v5 viewConfigName];
    v87 = viewConfigName4;
    if (![viewConfigName4 isEqual:?])
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

  cardOnlyMetadata = [(SFDrillDownMetadata *)self cardOnlyMetadata];
  cardOnlyMetadata2 = [(SFDrillDownMetadata *)v5 cardOnlyMetadata];
  if ((cardOnlyMetadata != 0) == (cardOnlyMetadata2 == 0))
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

  cardOnlyMetadata3 = [(SFDrillDownMetadata *)self cardOnlyMetadata];
  v45 = cardOnlyMetadata3 != 0;
  v85 = cardOnlyMetadata3;
  if (cardOnlyMetadata3)
  {
    cardOnlyMetadata4 = [(SFDrillDownMetadata *)self cardOnlyMetadata];
    cardOnlyMetadata5 = [(SFDrillDownMetadata *)v5 cardOnlyMetadata];
    v82 = cardOnlyMetadata4;
    if (![cardOnlyMetadata4 isEqual:?])
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

  entitySearchOnlyMetadata = [(SFDrillDownMetadata *)self entitySearchOnlyMetadata];
  entitySearchOnlyMetadata2 = [(SFDrillDownMetadata *)v5 entitySearchOnlyMetadata];
  if ((entitySearchOnlyMetadata != 0) == (entitySearchOnlyMetadata2 == 0))
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

  entitySearchOnlyMetadata3 = [(SFDrillDownMetadata *)self entitySearchOnlyMetadata];
  v48 = entitySearchOnlyMetadata3 != 0;
  v80 = entitySearchOnlyMetadata3;
  if (entitySearchOnlyMetadata3)
  {
    entitySearchOnlyMetadata4 = [(SFDrillDownMetadata *)self entitySearchOnlyMetadata];
    entitySearchOnlyMetadata5 = [(SFDrillDownMetadata *)v5 entitySearchOnlyMetadata];
    v77 = entitySearchOnlyMetadata4;
    if (![entitySearchOnlyMetadata4 isEqual:?])
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

  cardSearchMetadata = [(SFDrillDownMetadata *)self cardSearchMetadata];
  cardSearchMetadata2 = [(SFDrillDownMetadata *)v5 cardSearchMetadata];
  if ((cardSearchMetadata != 0) == (cardSearchMetadata2 == 0))
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

  cardSearchMetadata3 = [(SFDrillDownMetadata *)self cardSearchMetadata];
  LODWORD(v120[1]) = cardSearchMetadata3 != 0;
  v75 = cardSearchMetadata3;
  v58 = v5;
  if (!cardSearchMetadata3 || (-[SFDrillDownMetadata cardSearchMetadata](self, "cardSearchMetadata"), v51 = objc_claimAutoreleasedReturnValue(), -[SFDrillDownMetadata cardSearchMetadata](v5, "cardSearchMetadata"), v71 = objc_claimAutoreleasedReturnValue(), v72 = v51, [v51 isEqual:?]))
  {
    entitySearchMetadata = [(SFDrillDownMetadata *)self entitySearchMetadata];
    entitySearchMetadata2 = [(SFDrillDownMetadata *)v58 entitySearchMetadata];
    if ((entitySearchMetadata != 0) == (entitySearchMetadata2 == 0))
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
      entitySearchMetadata3 = [(SFDrillDownMetadata *)self entitySearchMetadata];
      HIDWORD(v120[0]) = entitySearchMetadata3 != 0;
      v70 = entitySearchMetadata3;
      if (!entitySearchMetadata3 || (-[SFDrillDownMetadata entitySearchMetadata](self, "entitySearchMetadata"), v53 = objc_claimAutoreleasedReturnValue(), -[SFDrillDownMetadata entitySearchMetadata](v58, "entitySearchMetadata"), v66 = objc_claimAutoreleasedReturnValue(), v67 = v53, [v53 isEqual:?]))
      {
        debugParams = [(SFDrillDownMetadata *)self debugParams];
        debugParams2 = [(SFDrillDownMetadata *)v58 debugParams];
        if ((debugParams != 0) == (debugParams2 == 0))
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
          debugParams3 = [(SFDrillDownMetadata *)self debugParams];
          LODWORD(v120[0]) = debugParams3 != 0;
          v65 = debugParams3;
          if (!debugParams3 || (-[SFDrillDownMetadata debugParams](self, "debugParams"), v55 = objc_claimAutoreleasedReturnValue(), -[SFDrillDownMetadata debugParams](v58, "debugParams"), v61 = objc_claimAutoreleasedReturnValue(), v62 = v55, [v55 isEqual:?]))
          {
            params = [(SFDrillDownMetadata *)self params];
            params2 = [(SFDrillDownMetadata *)v58 params];
            if ((params != 0) == (params2 == 0))
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
              params3 = [(SFDrillDownMetadata *)self params];
              if (params3)
              {
                params4 = [(SFDrillDownMetadata *)self params];
                v5 = v58;
                params5 = [(SFDrillDownMetadata *)v58 params];
                v59 = params4;
                v19 = [params4 isEqual:params5];
                v6 = params5;
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

              params3 = 0;
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
  cardIdentifier = [(SFDrillDownMetadata *)self cardIdentifier];
  v6 = [cardIdentifier copy];
  [v4 setCardIdentifier:v6];

  cardIdentifiers = [(SFDrillDownMetadata *)self cardIdentifiers];
  v8 = [cardIdentifiers copy];
  [v4 setCardIdentifiers:v8];

  cardDomains = [(SFDrillDownMetadata *)self cardDomains];
  v10 = [cardDomains copy];
  [v4 setCardDomains:v10];

  qtype = [(SFDrillDownMetadata *)self qtype];
  v12 = [qtype copy];
  [v4 setQtype:v12];

  viewConfigName = [(SFDrillDownMetadata *)self viewConfigName];
  v14 = [viewConfigName copy];
  [v4 setViewConfigName:v14];

  if ([(SFDrillDownMetadata *)self hasCardOnlyMetadata])
  {
    cardOnlyMetadata = [(SFDrillDownMetadata *)self cardOnlyMetadata];
    v16 = [cardOnlyMetadata copy];
    [v4 setCardOnlyMetadata:v16];
  }

  if ([(SFDrillDownMetadata *)self hasEntitySearchOnlyMetadata])
  {
    entitySearchOnlyMetadata = [(SFDrillDownMetadata *)self entitySearchOnlyMetadata];
    v18 = [entitySearchOnlyMetadata copy];
    [v4 setEntitySearchOnlyMetadata:v18];
  }

  if ([(SFDrillDownMetadata *)self hasCardSearchMetadata])
  {
    cardSearchMetadata = [(SFDrillDownMetadata *)self cardSearchMetadata];
    v20 = [cardSearchMetadata copy];
    [v4 setCardSearchMetadata:v20];
  }

  if ([(SFDrillDownMetadata *)self hasEntitySearchMetadata])
  {
    entitySearchMetadata = [(SFDrillDownMetadata *)self entitySearchMetadata];
    v22 = [entitySearchMetadata copy];
    [v4 setEntitySearchMetadata:v22];
  }

  debugParams = [(SFDrillDownMetadata *)self debugParams];
  v24 = [debugParams copy];
  [v4 setDebugParams:v24];

  params = [(SFDrillDownMetadata *)self params];
  v26 = [params copy];
  [v4 setParams:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBDrillDownMetadata alloc] initWithFacade:self];
  jsonData = [(_SFPBDrillDownMetadata *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBDrillDownMetadata alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBDrillDownMetadata *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBDrillDownMetadata alloc] initWithFacade:self];
  data = [(_SFPBDrillDownMetadata *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFDrillDownMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBDrillDownMetadata alloc] initWithData:v5];
  v7 = [(SFDrillDownMetadata *)self initWithProtobuf:v6];

  return v7;
}

- (void)setEntitySearchMetadata:(id)metadata
{
  *&self->_has |= 8u;
  objc_storeStrong(&self->_entitySearchMetadata, metadata);
  metadataCopy = metadata;
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

- (void)setCardSearchMetadata:(id)metadata
{
  *&self->_has |= 4u;
  objc_storeStrong(&self->_cardSearchMetadata, metadata);
  metadataCopy = metadata;
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

- (void)setEntitySearchOnlyMetadata:(id)metadata
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_entitySearchOnlyMetadata, metadata);
  metadataCopy = metadata;
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

- (void)setCardOnlyMetadata:(id)metadata
{
  *&self->_has |= 1u;
  objc_storeStrong(&self->_cardOnlyMetadata, metadata);
  metadataCopy = metadata;
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

- (SFDrillDownMetadata)initWithProtobuf:(id)protobuf
{
  v60 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v57.receiver = self;
  v57.super_class = SFDrillDownMetadata;
  v5 = [(SFDrillDownMetadata *)&v57 init];
  if (v5)
  {
    cardIdentifier = [protobufCopy cardIdentifier];

    if (cardIdentifier)
    {
      cardIdentifier2 = [protobufCopy cardIdentifier];
      [(SFDrillDownMetadata *)v5 setCardIdentifier:cardIdentifier2];
    }

    cardIdentifiers = [protobufCopy cardIdentifiers];
    if (cardIdentifiers)
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
    cardIdentifiers2 = [protobufCopy cardIdentifiers];
    v11 = [cardIdentifiers2 countByEnumeratingWithState:&v53 objects:v59 count:16];
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
            objc_enumerationMutation(cardIdentifiers2);
          }

          if (*(*(&v53 + 1) + 8 * i))
          {
            [v9 addObject:?];
          }
        }

        v12 = [cardIdentifiers2 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v12);
    }

    [(SFDrillDownMetadata *)v5 setCardIdentifiers:v9];
    cardDomains = [protobufCopy cardDomains];
    if (cardDomains)
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
    cardDomains2 = [protobufCopy cardDomains];
    v18 = [cardDomains2 countByEnumeratingWithState:&v49 objects:v58 count:16];
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
            objc_enumerationMutation(cardDomains2);
          }

          if (*(*(&v49 + 1) + 8 * j))
          {
            [v16 addObject:?];
          }
        }

        v19 = [cardDomains2 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v19);
    }

    [(SFDrillDownMetadata *)v5 setCardDomains:v16];
    qtype = [protobufCopy qtype];

    if (qtype)
    {
      qtype2 = [protobufCopy qtype];
      [(SFDrillDownMetadata *)v5 setQtype:qtype2];
    }

    viewConfigName = [protobufCopy viewConfigName];

    if (viewConfigName)
    {
      viewConfigName2 = [protobufCopy viewConfigName];
      [(SFDrillDownMetadata *)v5 setViewConfigName:viewConfigName2];
    }

    cardOnlyMetadata = [protobufCopy cardOnlyMetadata];

    if (cardOnlyMetadata)
    {
      v27 = [SFCardMetadata alloc];
      cardOnlyMetadata2 = [protobufCopy cardOnlyMetadata];
      v29 = [(SFCardMetadata *)v27 initWithProtobuf:cardOnlyMetadata2];
      [(SFDrillDownMetadata *)v5 setCardOnlyMetadata:v29];
    }

    entitySearchOnlyMetadata = [protobufCopy entitySearchOnlyMetadata];

    if (entitySearchOnlyMetadata)
    {
      v31 = [SFEntitySearchMetadata alloc];
      entitySearchOnlyMetadata2 = [protobufCopy entitySearchOnlyMetadata];
      v33 = [(SFEntitySearchMetadata *)v31 initWithProtobuf:entitySearchOnlyMetadata2];
      [(SFDrillDownMetadata *)v5 setEntitySearchOnlyMetadata:v33];
    }

    cardSearchMetadata = [protobufCopy cardSearchMetadata];

    if (cardSearchMetadata)
    {
      v35 = [SFCardSearchMetadata alloc];
      cardSearchMetadata2 = [protobufCopy cardSearchMetadata];
      v37 = [(SFCardSearchMetadata *)v35 initWithProtobuf:cardSearchMetadata2];
      [(SFDrillDownMetadata *)v5 setCardSearchMetadata:v37];
    }

    entitySearchMetadata = [protobufCopy entitySearchMetadata];

    if (entitySearchMetadata)
    {
      v39 = [SFEntitySearchMetadata alloc];
      entitySearchMetadata2 = [protobufCopy entitySearchMetadata];
      v41 = [(SFEntitySearchMetadata *)v39 initWithProtobuf:entitySearchMetadata2];
      [(SFDrillDownMetadata *)v5 setEntitySearchMetadata:v41];
    }

    debugParams = [protobufCopy debugParams];

    if (debugParams)
    {
      debugParams2 = [protobufCopy debugParams];
      [(SFDrillDownMetadata *)v5 setDebugParams:debugParams2];
    }

    params = [protobufCopy params];

    if (params)
    {
      params2 = [protobufCopy params];
      [(SFDrillDownMetadata *)v5 setParams:params2];
    }

    v46 = v5;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

@end