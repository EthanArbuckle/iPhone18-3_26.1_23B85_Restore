@interface BRFieldContentSignature
+ (unint64_t)localEditCounterFromVersionIdentifier:(id)a3;
- (BOOL)contentDiffersWithSignature:(id)a3;
- (BOOL)hasOnlyLocalEditsOnTopOfSignature:(id)a3;
- (BOOL)hasPopulatedVersionAndSignature;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToSignature:(id)a3;
- (BOOL)isPackage;
- (BOOL)isPendingSignature;
- (BRFieldContentSignature)initWithLocalVersion:(id)a3;
- (BRFieldContentSignature)initWithLoserEtag:(id)a3;
- (NSString)description;
- (id)_initWithVersionIdentifier:(id)a3 size:(int64_t)a4 oldVersionIdentifier:(id)a5 contentSignature:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)equivalentVersions;
- (unint64_t)_localEditCounter;
- (unint64_t)_oldVersionLocalEditCounter;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BRFieldContentSignature

- (id)equivalentVersions
{
  v3 = [(BRFieldContentSignature *)self contentSignature];

  if (v3)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    v4 = objc_opt_class();
    v5 = [(BRFieldContentSignature *)self versionIdentifier];
    if ([v4 localEditCounterFromVersionIdentifier:v5])
    {
      v6 = [(BRFieldContentSignature *)self oldVersionIdentifier];
      if (!v6)
      {

LABEL_19:
        v35 = [BRFieldContentSignature alloc];
        v36 = [(BRFieldContentSignature *)self versionIdentifier];
        v27 = [(BRFieldContentSignature *)v35 _initWithVersionIdentifier:v36 size:[(BRFieldContentSignature *)self size] contentSignature:0];

        v37 = [BRFieldContentSignature alloc];
        v38 = [(BRFieldContentSignature *)self versionIdentifier];
        v32 = [(BRFieldContentSignature *)v37 _initWithVersionIdentifier:v38 size:[(BRFieldContentSignature *)self size] oldVersionIdentifier:&stru_2837504F0 contentSignature:0];

        if (![(BRFieldContentSignature *)self isEqual:v27])
        {
          v39 = [v27 data];
          [v3 addObject:v39];
        }

        if (![(BRFieldContentSignature *)self isEqual:v32])
        {
          v40 = [v32 data];
          [v3 addObject:v40];
        }

        v41 = [BRFieldContentSignature alloc];
        v42 = [(BRFieldContentSignature *)self versionIdentifier];
        v43 = [(BRFieldContentSignature *)self size];
        v44 = [(BRFieldContentSignature *)self contentSignature];
        v34 = [(BRFieldContentSignature *)v41 _initWithVersionIdentifier:v42 size:v43 contentSignature:v44];

        v45 = [BRFieldContentSignature alloc];
        v46 = [(BRFieldContentSignature *)self versionIdentifier];
        v47 = [(BRFieldContentSignature *)self size];
        v48 = [(BRFieldContentSignature *)self contentSignature];
        v49 = [(BRFieldContentSignature *)v45 _initWithVersionIdentifier:v46 size:v47 oldVersionIdentifier:&stru_2837504F0 contentSignature:v48];

LABEL_31:
        if (![(BRFieldContentSignature *)self isEqual:v34])
        {
          v62 = [v34 data];
          [v3 addObject:v62];
        }

        if (![(BRFieldContentSignature *)self isEqual:v49])
        {
          v63 = [v49 data];
          [v3 addObject:v63];
        }

        goto LABEL_36;
      }

      v7 = v6;
      v8 = [(BRFieldContentSignature *)self oldVersionIdentifier];
      v9 = [v8 length];

      if (!v9)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v10 = [(BRFieldContentSignature *)self oldVersionIdentifier];
    v11 = [v10 length];

    if (v11)
    {
      v12 = objc_opt_class();
      v13 = [(BRFieldContentSignature *)self oldVersionIdentifier];
      v14 = [v12 localEditCounterFromVersionIdentifier:v13];

      if (v14)
      {
        v15 = [BRFieldContentSignature alloc];
        v16 = [(BRFieldContentSignature *)self oldVersionIdentifier];
        v17 = [(BRFieldContentSignature *)v15 _initWithVersionIdentifier:v16 size:[(BRFieldContentSignature *)self size] contentSignature:0];

        v18 = [BRFieldContentSignature alloc];
        v19 = [(BRFieldContentSignature *)self oldVersionIdentifier];
        v20 = [(BRFieldContentSignature *)v18 _initWithVersionIdentifier:v19 size:[(BRFieldContentSignature *)self size] oldVersionIdentifier:&stru_2837504F0 contentSignature:0];

        if (![(BRFieldContentSignature *)self isEqual:v17])
        {
          v21 = [v17 data];
          [v3 addObject:v21];
        }

        if (![(BRFieldContentSignature *)self isEqual:v20])
        {
          v22 = [v20 data];
          [v3 addObject:v22];
        }
      }

      v23 = [BRFieldContentSignature alloc];
      v24 = [(BRFieldContentSignature *)self oldVersionIdentifier];
      v25 = [(BRFieldContentSignature *)self size];
      v26 = [(BRFieldContentSignature *)self contentSignature];
      v27 = [(BRFieldContentSignature *)v23 _initWithVersionIdentifier:v24 size:v25 contentSignature:v26];

      v28 = [BRFieldContentSignature alloc];
      v29 = [(BRFieldContentSignature *)self oldVersionIdentifier];
      v30 = [(BRFieldContentSignature *)self size];
      v31 = [(BRFieldContentSignature *)self contentSignature];
      v32 = [(BRFieldContentSignature *)v28 _initWithVersionIdentifier:v29 size:v30 oldVersionIdentifier:&stru_2837504F0 contentSignature:v31];

      if (![(BRFieldContentSignature *)self isEqual:v27])
      {
        v33 = [v27 data];
        [v3 addObject:v33];
      }

      if ([(BRFieldContentSignature *)self isEqual:v32])
      {
        goto LABEL_37;
      }

      v34 = [v32 data];
      [v3 addObject:v34];
LABEL_36:

LABEL_37:
      goto LABEL_38;
    }

    v50 = [(BRFieldContentSignature *)self oldVersionIdentifier];
    if (!v50 || (v51 = v50, -[BRFieldContentSignature oldVersionIdentifier](self, "oldVersionIdentifier"), v52 = objc_claimAutoreleasedReturnValue(), v53 = [v52 length], v52, v51, !v53))
    {
      v27 = [[BRFieldContentSignature alloc] _initWithVersionIdentifier:&stru_2837504F0 size:[(BRFieldContentSignature *)self size] contentSignature:0];
      v32 = [[BRFieldContentSignature alloc] _initWithVersionIdentifier:&stru_2837504F0 size:[(BRFieldContentSignature *)self size] oldVersionIdentifier:&stru_2837504F0 contentSignature:0];
      if (![(BRFieldContentSignature *)self isEqual:v27])
      {
        v54 = [v27 data];
        [v3 addObject:v54];
      }

      if (![(BRFieldContentSignature *)self isEqual:v32])
      {
        v55 = [v32 data];
        [v3 addObject:v55];
      }

      v56 = [BRFieldContentSignature alloc];
      v57 = [(BRFieldContentSignature *)self size];
      v58 = [(BRFieldContentSignature *)self contentSignature];
      v34 = [(BRFieldContentSignature *)v56 _initWithVersionIdentifier:&stru_2837504F0 size:v57 contentSignature:v58];

      v59 = [BRFieldContentSignature alloc];
      v60 = [(BRFieldContentSignature *)self size];
      v61 = [(BRFieldContentSignature *)self contentSignature];
      v49 = [(BRFieldContentSignature *)v59 _initWithVersionIdentifier:&stru_2837504F0 size:v60 oldVersionIdentifier:&stru_2837504F0 contentSignature:v61];

      goto LABEL_31;
    }
  }

LABEL_38:

  return v3;
}

- (BOOL)contentDiffersWithSignature:(id)a3
{
  v4 = a3;
  if ([(BRFieldContentSignature *)self isEquivalentToSignature:v4])
  {
    v5 = 0;
  }

  else if (-[BRFieldContentSignature hasContentSignature](self, "hasContentSignature") && [v4 hasContentSignature])
  {
    v6 = [(BRFieldContentSignature *)self contentSignature];
    v7 = [v4 contentSignature];
    v8 = [v6 isEqualToData:v7];

    v5 = v8 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

- (BOOL)hasOnlyLocalEditsOnTopOfSignature:(id)a3
{
  v6 = a3;
  v7 = [(BRFieldContentSignature *)self etag];
  v8 = [v6 etag];
  if (v7 == v8 || (-[BRFieldContentSignature etag](self, "etag"), v3 = objc_claimAutoreleasedReturnValue(), [v6 etag], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", v4)))
  {
    v9 = [(BRFieldContentSignature *)self _localEditCounter];
    v10 = [v6 _localEditCounter];
    if (v7 != v8)
    {
    }

    if (v9 > v10)
    {
      v11 = 1;
      goto LABEL_16;
    }
  }

  else
  {
  }

  if ([(BRFieldContentSignature *)self hasOldVersionIdentifier])
  {
    v12 = [(BRFieldContentSignature *)self _oldVersionEtag];
    v13 = [v6 etag];
    if (v12 == v13 || (-[BRFieldContentSignature _oldVersionEtag](self, "_oldVersionEtag"), v3 = objc_claimAutoreleasedReturnValue(), [v6 etag], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", v4)))
    {
      v14 = [(BRFieldContentSignature *)self _oldVersionLocalEditCounter];
      v11 = v14 > [v6 _localEditCounter];
      if (v12 == v13)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_15;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

+ (unint64_t)localEditCounterFromVersionIdentifier:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@""];;
  if ([v3 count] >= 2)
  {
    v5 = [v3 objectAtIndex:1];
    v4 = [v5 longLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_localEditCounter
{
  v3 = objc_opt_class();
  versionIdentifier = self->_versionIdentifier;

  return [v3 localEditCounterFromVersionIdentifier:versionIdentifier];
}

- (unint64_t)_oldVersionLocalEditCounter
{
  v3 = objc_opt_class();
  oldVersionIdentifier = self->_oldVersionIdentifier;

  return [v3 localEditCounterFromVersionIdentifier:oldVersionIdentifier];
}

- (BOOL)isPendingSignature
{
  if ([(NSString *)self->_versionIdentifier length])
  {
    v3 = [(BRFieldContentSignature *)self etag];
    if (v3 || [(BRFieldContentSignature *)self hasOldVersionIdentifier])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = ![(BRFieldContentSignature *)self hasContentSignature];
    }
  }

  else if ([(BRFieldContentSignature *)self hasOldVersionIdentifier])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    return ![(BRFieldContentSignature *)self hasContentSignature];
  }

  return v4;
}

- (BOOL)hasPopulatedVersionAndSignature
{
  if ([(NSString *)self->_versionIdentifier length]|| (v3 = [(BRFieldContentSignature *)self hasOldVersionIdentifier]))
  {

    LOBYTE(v3) = [(BRFieldContentSignature *)self hasContentSignature];
  }

  return v3;
}

- (BOOL)isEquivalentToSignature:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!areSignaturesEquivalent(self, v4))
  {
    goto LABEL_8;
  }

  if (!-[BRFieldContentSignature hasContentSignature](self, "hasContentSignature") || ![v4 hasContentSignature])
  {
    goto LABEL_10;
  }

  v5 = [(BRFieldContentSignature *)self contentSignature];
  if ([v5 brc_signatureIsPendingPlaceHolder])
  {
    goto LABEL_5;
  }

  v6 = [v4 contentSignature];
  v7 = [v6 brc_signatureIsPendingPlaceHolder];

  if (v7)
  {
    goto LABEL_8;
  }

  v8 = [(BRFieldContentSignature *)self contentSignature];
  v9 = [v8 brc_signatureIsPackage];
  v10 = [v4 contentSignature];
  v11 = [v10 brc_signatureIsPackage];

  if (v9 != v11)
  {
    goto LABEL_8;
  }

  v13 = [(BRFieldContentSignature *)self contentSignature];
  v14 = [v4 contentSignature];
  v15 = [v13 isEqualToData:v14];

  if (v15)
  {
LABEL_10:
    v12 = 1;
    goto LABEL_11;
  }

  if ([(BRFieldContentSignature *)self ignoreSignaturesAreEquivalentButContentIsDifferent])
  {
    goto LABEL_8;
  }

  v5 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    v19 = 138412802;
    v20 = self;
    v21 = 2112;
    v22 = v4;
    v23 = 2112;
    v24 = v5;
    _os_log_fault_impl(&dword_223E7A000, v18, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Signatures are equivalent but content is different %@ vs %@%@", &v19, 0x20u);
  }

LABEL_5:
LABEL_8:
  v12 = 0;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BRFieldContentSignature)initWithLocalVersion:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = BRFieldContentSignature;
  v5 = [(BRFieldContentSignature *)&v19 init];
  if (v5)
  {
    v6 = [v4 oldVersionIdentifier];
    [(BRFieldContentSignature *)v5 setOldVersionIdentifier:v6];

    v7 = [v4 contentSignature];
    if ([v7 brc_signatureIsPendingPlaceHolder])
    {
      [(BRFieldContentSignature *)v5 setContentSignature:0];
    }

    else
    {
      v8 = [v4 contentSignature];
      [(BRFieldContentSignature *)v5 setContentSignature:v8];
    }

    v9 = [v4 ckInfo];
    v10 = [v9 etag];
    v11 = [v4 localChangeCount];
    v12 = v10;
    v13 = v12;
    v14 = &stru_2837504F0;
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;
    v16 = v15;
    if (v11)
    {
      v17 = [(__CFString *)v15 stringByAppendingFormat:@"%llu", v11];;

      v16 = v17;
    }

    [(BRFieldContentSignature *)v5 setVersionIdentifier:v16];
    -[BRFieldContentSignature setSize:](v5, "setSize:", [v4 size]);
  }

  return v5;
}

- (BRFieldContentSignature)initWithLoserEtag:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BRFieldContentSignature;
  v5 = [(BRFieldContentSignature *)&v9 init];
  if (v5)
  {
    v6 = &stru_2837504F0;
    if (v4)
    {
      v6 = v4;
    }

    v7 = v6;
    [(BRFieldContentSignature *)v5 setVersionIdentifier:v7];
  }

  return v5;
}

- (BOOL)isPackage
{
  v3 = [(BRFieldContentSignature *)self hasContentSignature];
  if (v3)
  {
    v4 = [(BRFieldContentSignature *)self contentSignature];
    v5 = [v4 brc_signatureIsPackage];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (id)_initWithVersionIdentifier:(id)a3 size:(int64_t)a4 oldVersionIdentifier:(id)a5 contentSignature:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = BRFieldContentSignature;
  v13 = [(BRFieldContentSignature *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(BRFieldContentSignature *)v13 setOldVersionIdentifier:v11];
    [(BRFieldContentSignature *)v14 setVersionIdentifier:v10];
    [(BRFieldContentSignature *)v14 setSize:a4];
    if ([v12 brc_signatureIsPendingPlaceHolder])
    {
      v15 = 0;
    }

    else
    {
      v15 = v12;
    }

    [(BRFieldContentSignature *)v14 setContentSignature:v15];
  }

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BRFieldContentSignature;
  v4 = [(BRFieldContentSignature *)&v8 description];
  v5 = [(BRFieldContentSignature *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  versionIdentifier = self->_versionIdentifier;
  if (versionIdentifier)
  {
    [v3 setObject:versionIdentifier forKey:@"versionIdentifier"];
  }

  contentSignature = self->_contentSignature;
  if (contentSignature)
  {
    [v4 setObject:contentSignature forKey:@"contentSignature"];
  }

  oldVersionIdentifier = self->_oldVersionIdentifier;
  if (oldVersionIdentifier)
  {
    [v4 setObject:oldVersionIdentifier forKey:@"oldVersionIdentifier"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_size];
    [v4 setObject:v8 forKey:@"size"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_versionIdentifier)
  {
    [BRFieldContentSignature writeTo:];
  }

  v7 = v4;
  PBDataWriterWriteStringField();
  if (self->_contentSignature)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_oldVersionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v5 = v7;
  if (*&self->_has)
  {
    size = self->_size;
    PBDataWriterWriteInt64Field();
    v5 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setVersionIdentifier:self->_versionIdentifier];
  if (self->_contentSignature)
  {
    [v4 setContentSignature:?];
  }

  if (self->_oldVersionIdentifier)
  {
    [v4 setOldVersionIdentifier:?];
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_size;
    *(v4 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_versionIdentifier copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_contentSignature copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_oldVersionIdentifier copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_size;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  versionIdentifier = self->_versionIdentifier;
  if (versionIdentifier | *(v4 + 4))
  {
    if (![(NSString *)versionIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  contentSignature = self->_contentSignature;
  if (contentSignature | *(v4 + 2))
  {
    if (![(NSData *)contentSignature isEqual:?])
    {
      goto LABEL_12;
    }
  }

  oldVersionIdentifier = self->_oldVersionIdentifier;
  if (oldVersionIdentifier | *(v4 + 3))
  {
    if (![(NSString *)oldVersionIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) != 0 && self->_size == *(v4 + 1))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_versionIdentifier hash];
  v4 = [(NSData *)self->_contentSignature hash];
  v5 = [(NSString *)self->_oldVersionIdentifier hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_size;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[4])
  {
    [(BRFieldContentSignature *)self setVersionIdentifier:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(BRFieldContentSignature *)self setContentSignature:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(BRFieldContentSignature *)self setOldVersionIdentifier:?];
    v4 = v5;
  }

  if (v4[5])
  {
    self->_size = v4[1];
    *&self->_has |= 1u;
  }
}

@end