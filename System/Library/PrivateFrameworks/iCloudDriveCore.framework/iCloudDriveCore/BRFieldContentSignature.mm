@interface BRFieldContentSignature
+ (unint64_t)localEditCounterFromVersionIdentifier:(id)identifier;
- (BOOL)contentDiffersWithSignature:(id)signature;
- (BOOL)hasOnlyLocalEditsOnTopOfSignature:(id)signature;
- (BOOL)hasPopulatedVersionAndSignature;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToSignature:(id)signature;
- (BOOL)isPackage;
- (BOOL)isPendingSignature;
- (BRFieldContentSignature)initWithLocalVersion:(id)version;
- (BRFieldContentSignature)initWithLoserEtag:(id)etag;
- (NSString)description;
- (id)_initWithVersionIdentifier:(id)identifier size:(int64_t)size oldVersionIdentifier:(id)versionIdentifier contentSignature:(id)signature;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)equivalentVersions;
- (unint64_t)_localEditCounter;
- (unint64_t)_oldVersionLocalEditCounter;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BRFieldContentSignature

- (id)equivalentVersions
{
  contentSignature = [(BRFieldContentSignature *)self contentSignature];

  if (contentSignature)
  {
    contentSignature = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    v4 = objc_opt_class();
    versionIdentifier = [(BRFieldContentSignature *)self versionIdentifier];
    if ([v4 localEditCounterFromVersionIdentifier:versionIdentifier])
    {
      oldVersionIdentifier = [(BRFieldContentSignature *)self oldVersionIdentifier];
      if (!oldVersionIdentifier)
      {

LABEL_19:
        v35 = [BRFieldContentSignature alloc];
        versionIdentifier2 = [(BRFieldContentSignature *)self versionIdentifier];
        v27 = [(BRFieldContentSignature *)v35 _initWithVersionIdentifier:versionIdentifier2 size:[(BRFieldContentSignature *)self size] contentSignature:0];

        v37 = [BRFieldContentSignature alloc];
        versionIdentifier3 = [(BRFieldContentSignature *)self versionIdentifier];
        v32 = [(BRFieldContentSignature *)v37 _initWithVersionIdentifier:versionIdentifier3 size:[(BRFieldContentSignature *)self size] oldVersionIdentifier:&stru_2837504F0 contentSignature:0];

        if (![(BRFieldContentSignature *)self isEqual:v27])
        {
          data = [v27 data];
          [contentSignature addObject:data];
        }

        if (![(BRFieldContentSignature *)self isEqual:v32])
        {
          data2 = [v32 data];
          [contentSignature addObject:data2];
        }

        v41 = [BRFieldContentSignature alloc];
        versionIdentifier4 = [(BRFieldContentSignature *)self versionIdentifier];
        v43 = [(BRFieldContentSignature *)self size];
        contentSignature2 = [(BRFieldContentSignature *)self contentSignature];
        data8 = [(BRFieldContentSignature *)v41 _initWithVersionIdentifier:versionIdentifier4 size:v43 contentSignature:contentSignature2];

        v45 = [BRFieldContentSignature alloc];
        versionIdentifier5 = [(BRFieldContentSignature *)self versionIdentifier];
        v47 = [(BRFieldContentSignature *)self size];
        contentSignature3 = [(BRFieldContentSignature *)self contentSignature];
        v49 = [(BRFieldContentSignature *)v45 _initWithVersionIdentifier:versionIdentifier5 size:v47 oldVersionIdentifier:&stru_2837504F0 contentSignature:contentSignature3];

LABEL_31:
        if (![(BRFieldContentSignature *)self isEqual:data8])
        {
          data3 = [data8 data];
          [contentSignature addObject:data3];
        }

        if (![(BRFieldContentSignature *)self isEqual:v49])
        {
          data4 = [v49 data];
          [contentSignature addObject:data4];
        }

        goto LABEL_36;
      }

      v7 = oldVersionIdentifier;
      oldVersionIdentifier2 = [(BRFieldContentSignature *)self oldVersionIdentifier];
      v9 = [oldVersionIdentifier2 length];

      if (!v9)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    oldVersionIdentifier3 = [(BRFieldContentSignature *)self oldVersionIdentifier];
    v11 = [oldVersionIdentifier3 length];

    if (v11)
    {
      v12 = objc_opt_class();
      oldVersionIdentifier4 = [(BRFieldContentSignature *)self oldVersionIdentifier];
      v14 = [v12 localEditCounterFromVersionIdentifier:oldVersionIdentifier4];

      if (v14)
      {
        v15 = [BRFieldContentSignature alloc];
        oldVersionIdentifier5 = [(BRFieldContentSignature *)self oldVersionIdentifier];
        v17 = [(BRFieldContentSignature *)v15 _initWithVersionIdentifier:oldVersionIdentifier5 size:[(BRFieldContentSignature *)self size] contentSignature:0];

        v18 = [BRFieldContentSignature alloc];
        oldVersionIdentifier6 = [(BRFieldContentSignature *)self oldVersionIdentifier];
        v20 = [(BRFieldContentSignature *)v18 _initWithVersionIdentifier:oldVersionIdentifier6 size:[(BRFieldContentSignature *)self size] oldVersionIdentifier:&stru_2837504F0 contentSignature:0];

        if (![(BRFieldContentSignature *)self isEqual:v17])
        {
          data5 = [v17 data];
          [contentSignature addObject:data5];
        }

        if (![(BRFieldContentSignature *)self isEqual:v20])
        {
          data6 = [v20 data];
          [contentSignature addObject:data6];
        }
      }

      v23 = [BRFieldContentSignature alloc];
      oldVersionIdentifier7 = [(BRFieldContentSignature *)self oldVersionIdentifier];
      v25 = [(BRFieldContentSignature *)self size];
      contentSignature4 = [(BRFieldContentSignature *)self contentSignature];
      v27 = [(BRFieldContentSignature *)v23 _initWithVersionIdentifier:oldVersionIdentifier7 size:v25 contentSignature:contentSignature4];

      v28 = [BRFieldContentSignature alloc];
      oldVersionIdentifier8 = [(BRFieldContentSignature *)self oldVersionIdentifier];
      v30 = [(BRFieldContentSignature *)self size];
      contentSignature5 = [(BRFieldContentSignature *)self contentSignature];
      v32 = [(BRFieldContentSignature *)v28 _initWithVersionIdentifier:oldVersionIdentifier8 size:v30 oldVersionIdentifier:&stru_2837504F0 contentSignature:contentSignature5];

      if (![(BRFieldContentSignature *)self isEqual:v27])
      {
        data7 = [v27 data];
        [contentSignature addObject:data7];
      }

      if ([(BRFieldContentSignature *)self isEqual:v32])
      {
        goto LABEL_37;
      }

      data8 = [v32 data];
      [contentSignature addObject:data8];
LABEL_36:

LABEL_37:
      goto LABEL_38;
    }

    oldVersionIdentifier9 = [(BRFieldContentSignature *)self oldVersionIdentifier];
    if (!oldVersionIdentifier9 || (v51 = oldVersionIdentifier9, -[BRFieldContentSignature oldVersionIdentifier](self, "oldVersionIdentifier"), v52 = objc_claimAutoreleasedReturnValue(), v53 = [v52 length], v52, v51, !v53))
    {
      v27 = [[BRFieldContentSignature alloc] _initWithVersionIdentifier:&stru_2837504F0 size:[(BRFieldContentSignature *)self size] contentSignature:0];
      v32 = [[BRFieldContentSignature alloc] _initWithVersionIdentifier:&stru_2837504F0 size:[(BRFieldContentSignature *)self size] oldVersionIdentifier:&stru_2837504F0 contentSignature:0];
      if (![(BRFieldContentSignature *)self isEqual:v27])
      {
        data9 = [v27 data];
        [contentSignature addObject:data9];
      }

      if (![(BRFieldContentSignature *)self isEqual:v32])
      {
        data10 = [v32 data];
        [contentSignature addObject:data10];
      }

      v56 = [BRFieldContentSignature alloc];
      v57 = [(BRFieldContentSignature *)self size];
      contentSignature6 = [(BRFieldContentSignature *)self contentSignature];
      data8 = [(BRFieldContentSignature *)v56 _initWithVersionIdentifier:&stru_2837504F0 size:v57 contentSignature:contentSignature6];

      v59 = [BRFieldContentSignature alloc];
      v60 = [(BRFieldContentSignature *)self size];
      contentSignature7 = [(BRFieldContentSignature *)self contentSignature];
      v49 = [(BRFieldContentSignature *)v59 _initWithVersionIdentifier:&stru_2837504F0 size:v60 oldVersionIdentifier:&stru_2837504F0 contentSignature:contentSignature7];

      goto LABEL_31;
    }
  }

LABEL_38:

  return contentSignature;
}

- (BOOL)contentDiffersWithSignature:(id)signature
{
  signatureCopy = signature;
  if ([(BRFieldContentSignature *)self isEquivalentToSignature:signatureCopy])
  {
    v5 = 0;
  }

  else if (-[BRFieldContentSignature hasContentSignature](self, "hasContentSignature") && [signatureCopy hasContentSignature])
  {
    contentSignature = [(BRFieldContentSignature *)self contentSignature];
    contentSignature2 = [signatureCopy contentSignature];
    v8 = [contentSignature isEqualToData:contentSignature2];

    v5 = v8 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

- (BOOL)hasOnlyLocalEditsOnTopOfSignature:(id)signature
{
  signatureCopy = signature;
  etag = [(BRFieldContentSignature *)self etag];
  etag2 = [signatureCopy etag];
  if (etag == etag2 || (-[BRFieldContentSignature etag](self, "etag"), v3 = objc_claimAutoreleasedReturnValue(), [signatureCopy etag], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", v4)))
  {
    _localEditCounter = [(BRFieldContentSignature *)self _localEditCounter];
    _localEditCounter2 = [signatureCopy _localEditCounter];
    if (etag != etag2)
    {
    }

    if (_localEditCounter > _localEditCounter2)
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
    _oldVersionEtag = [(BRFieldContentSignature *)self _oldVersionEtag];
    etag3 = [signatureCopy etag];
    if (_oldVersionEtag == etag3 || (-[BRFieldContentSignature _oldVersionEtag](self, "_oldVersionEtag"), v3 = objc_claimAutoreleasedReturnValue(), [signatureCopy etag], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", v4)))
    {
      _oldVersionLocalEditCounter = [(BRFieldContentSignature *)self _oldVersionLocalEditCounter];
      v11 = _oldVersionLocalEditCounter > [signatureCopy _localEditCounter];
      if (_oldVersionEtag == etag3)
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

+ (unint64_t)localEditCounterFromVersionIdentifier:(id)identifier
{
  v3 = [identifier componentsSeparatedByString:@""];;
  if ([v3 count] >= 2)
  {
    v5 = [v3 objectAtIndex:1];
    longLongValue = [v5 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
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
    etag = [(BRFieldContentSignature *)self etag];
    if (etag || [(BRFieldContentSignature *)self hasOldVersionIdentifier])
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

- (BOOL)isEquivalentToSignature:(id)signature
{
  v25 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  if (!areSignaturesEquivalent(self, signatureCopy))
  {
    goto LABEL_8;
  }

  if (!-[BRFieldContentSignature hasContentSignature](self, "hasContentSignature") || ![signatureCopy hasContentSignature])
  {
    goto LABEL_10;
  }

  contentSignature = [(BRFieldContentSignature *)self contentSignature];
  if ([contentSignature brc_signatureIsPendingPlaceHolder])
  {
    goto LABEL_5;
  }

  contentSignature2 = [signatureCopy contentSignature];
  brc_signatureIsPendingPlaceHolder = [contentSignature2 brc_signatureIsPendingPlaceHolder];

  if (brc_signatureIsPendingPlaceHolder)
  {
    goto LABEL_8;
  }

  contentSignature3 = [(BRFieldContentSignature *)self contentSignature];
  brc_signatureIsPackage = [contentSignature3 brc_signatureIsPackage];
  contentSignature4 = [signatureCopy contentSignature];
  brc_signatureIsPackage2 = [contentSignature4 brc_signatureIsPackage];

  if (brc_signatureIsPackage != brc_signatureIsPackage2)
  {
    goto LABEL_8;
  }

  contentSignature5 = [(BRFieldContentSignature *)self contentSignature];
  contentSignature6 = [signatureCopy contentSignature];
  v15 = [contentSignature5 isEqualToData:contentSignature6];

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

  contentSignature = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    v19 = 138412802;
    selfCopy = self;
    v21 = 2112;
    v22 = signatureCopy;
    v23 = 2112;
    v24 = contentSignature;
    _os_log_fault_impl(&dword_223E7A000, v18, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Signatures are equivalent but content is different %@ vs %@%@", &v19, 0x20u);
  }

LABEL_5:
LABEL_8:
  v12 = 0;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BRFieldContentSignature)initWithLocalVersion:(id)version
{
  versionCopy = version;
  v19.receiver = self;
  v19.super_class = BRFieldContentSignature;
  v5 = [(BRFieldContentSignature *)&v19 init];
  if (v5)
  {
    oldVersionIdentifier = [versionCopy oldVersionIdentifier];
    [(BRFieldContentSignature *)v5 setOldVersionIdentifier:oldVersionIdentifier];

    contentSignature = [versionCopy contentSignature];
    if ([contentSignature brc_signatureIsPendingPlaceHolder])
    {
      [(BRFieldContentSignature *)v5 setContentSignature:0];
    }

    else
    {
      contentSignature2 = [versionCopy contentSignature];
      [(BRFieldContentSignature *)v5 setContentSignature:contentSignature2];
    }

    ckInfo = [versionCopy ckInfo];
    etag = [ckInfo etag];
    localChangeCount = [versionCopy localChangeCount];
    v12 = etag;
    v13 = v12;
    v14 = &stru_2837504F0;
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;
    v16 = v15;
    if (localChangeCount)
    {
      v17 = [(__CFString *)v15 stringByAppendingFormat:@"%llu", localChangeCount];;

      v16 = v17;
    }

    [(BRFieldContentSignature *)v5 setVersionIdentifier:v16];
    -[BRFieldContentSignature setSize:](v5, "setSize:", [versionCopy size]);
  }

  return v5;
}

- (BRFieldContentSignature)initWithLoserEtag:(id)etag
{
  etagCopy = etag;
  v9.receiver = self;
  v9.super_class = BRFieldContentSignature;
  v5 = [(BRFieldContentSignature *)&v9 init];
  if (v5)
  {
    v6 = &stru_2837504F0;
    if (etagCopy)
    {
      v6 = etagCopy;
    }

    v7 = v6;
    [(BRFieldContentSignature *)v5 setVersionIdentifier:v7];
  }

  return v5;
}

- (BOOL)isPackage
{
  hasContentSignature = [(BRFieldContentSignature *)self hasContentSignature];
  if (hasContentSignature)
  {
    contentSignature = [(BRFieldContentSignature *)self contentSignature];
    brc_signatureIsPackage = [contentSignature brc_signatureIsPackage];

    LOBYTE(hasContentSignature) = brc_signatureIsPackage;
  }

  return hasContentSignature;
}

- (id)_initWithVersionIdentifier:(id)identifier size:(int64_t)size oldVersionIdentifier:(id)versionIdentifier contentSignature:(id)signature
{
  identifierCopy = identifier;
  versionIdentifierCopy = versionIdentifier;
  signatureCopy = signature;
  v17.receiver = self;
  v17.super_class = BRFieldContentSignature;
  v13 = [(BRFieldContentSignature *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(BRFieldContentSignature *)v13 setOldVersionIdentifier:versionIdentifierCopy];
    [(BRFieldContentSignature *)v14 setVersionIdentifier:identifierCopy];
    [(BRFieldContentSignature *)v14 setSize:size];
    if ([signatureCopy brc_signatureIsPendingPlaceHolder])
    {
      v15 = 0;
    }

    else
    {
      v15 = signatureCopy;
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
  dictionaryRepresentation = [(BRFieldContentSignature *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  versionIdentifier = self->_versionIdentifier;
  if (versionIdentifier)
  {
    [dictionary setObject:versionIdentifier forKey:@"versionIdentifier"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_versionIdentifier)
  {
    [BRFieldContentSignature writeTo:];
  }

  v7 = toCopy;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setVersionIdentifier:self->_versionIdentifier];
  if (self->_contentSignature)
  {
    [toCopy setContentSignature:?];
  }

  if (self->_oldVersionIdentifier)
  {
    [toCopy setOldVersionIdentifier:?];
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_size;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_versionIdentifier copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_contentSignature copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_oldVersionIdentifier copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_size;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  versionIdentifier = self->_versionIdentifier;
  if (versionIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)versionIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  contentSignature = self->_contentSignature;
  if (contentSignature | *(equalCopy + 2))
  {
    if (![(NSData *)contentSignature isEqual:?])
    {
      goto LABEL_12;
    }
  }

  oldVersionIdentifier = self->_oldVersionIdentifier;
  if (oldVersionIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)oldVersionIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) != 0 && self->_size == *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[4])
  {
    [(BRFieldContentSignature *)self setVersionIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(BRFieldContentSignature *)self setContentSignature:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(BRFieldContentSignature *)self setOldVersionIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[5])
  {
    self->_size = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end