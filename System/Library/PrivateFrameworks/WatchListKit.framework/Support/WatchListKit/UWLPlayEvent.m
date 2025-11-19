@interface UWLPlayEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsContractOrTimed:(id)a3;
- (int)StringAsMediaType:(id)a3;
- (int)contractOrTimed;
- (int)mediaType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAlgorithmicIsDoneEnabled:(BOOL)a3;
- (void)setHasClientIsDone:(BOOL)a3;
- (void)setHasContractOrTimed:(BOOL)a3;
- (void)setHasIsCurrent:(BOOL)a3;
- (void)setHasIsDone:(BOOL)a3;
- (void)setHasIsShowOpen:(BOOL)a3;
- (void)setHasMainContentPlayHeadInMilliseconds:(BOOL)a3;
- (void)setHasMediaLengthInMilliseconds:(BOOL)a3;
- (void)setHasMediaType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation UWLPlayEvent

- (void)setHasIsDone:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasMediaLengthInMilliseconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)mediaType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_mediaType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMediaType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (int)StringAsMediaType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NOT_SPECIFIED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MOVIE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TV"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SPORTS_VOD"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsCurrent:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsShowOpen:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (int)contractOrTimed
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_contractOrTimed;
  }

  else
  {
    return 0;
  }
}

- (void)setHasContractOrTimed:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)StringAsContractOrTimed:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Not_Specified_Implied_Legacy_Contract"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Contract"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Timed"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasClientIsDone:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasAlgorithmicIsDoneEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasMainContentPlayHeadInMilliseconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = UWLPlayEvent;
  v3 = [(UWLPlayEvent *)&v7 description];
  v4 = [(UWLPlayEvent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundle_id"];
  }

  externalPlayableId = self->_externalPlayableId;
  if (externalPlayableId)
  {
    [v4 setObject:externalPlayableId forKey:@"external_playable_id"];
  }

  v7 = [NSNumber numberWithLongLong:self->_playHeadInMilliseconds];
  [v4 setObject:v7 forKey:@"play_head_in_milliseconds"];

  v8 = [NSNumber numberWithLongLong:self->_millisecondsSinceEvent];
  [v4 setObject:v8 forKey:@"milliseconds_since_event"];

  if ((*&self->_has & 0x100) != 0)
  {
    v9 = [NSNumber numberWithBool:self->_isDone];
    [v4 setObject:v9 forKey:@"is_done"];
  }

  externalShowId = self->_externalShowId;
  if (externalShowId)
  {
    [v4 setObject:externalShowId forKey:@"external_show_id"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v12 = [NSNumber numberWithLongLong:self->_mediaLengthInMilliseconds];
    [v4 setObject:v12 forKey:@"media_length_in_milliseconds"];

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    mediaType = self->_mediaType;
    if (mediaType >= 4)
    {
      v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_mediaType];
    }

    else
    {
      v14 = *(&off_100044A68 + mediaType);
    }

    [v4 setObject:v14 forKey:@"media_type"];
  }

  profileId = self->_profileId;
  if (profileId)
  {
    [v4 setObject:profileId forKey:@"profile_id"];
  }

  brandId = self->_brandId;
  if (brandId)
  {
    [v4 setObject:brandId forKey:@"brand_id"];
  }

  v17 = self->_has;
  if ((v17 & 0x80) != 0)
  {
    v18 = [NSNumber numberWithBool:self->_isCurrent];
    [v4 setObject:v18 forKey:@"is_current"];

    v17 = self->_has;
  }

  if ((v17 & 0x200) != 0)
  {
    v19 = [NSNumber numberWithBool:self->_isShowOpen];
    [v4 setObject:v19 forKey:@"is_show_open"];
  }

  canonicalId = self->_canonicalId;
  if (canonicalId)
  {
    [v4 setObject:canonicalId forKey:@"canonical_id"];
  }

  canonicalShowId = self->_canonicalShowId;
  if (canonicalShowId)
  {
    [v4 setObject:canonicalShowId forKey:@"canonical_show_id"];
  }

  internalLegId = self->_internalLegId;
  if (internalLegId)
  {
    [v4 setObject:internalLegId forKey:@"internal_leg_id"];
  }

  if ((*&self->_has & 8) != 0)
  {
    contractOrTimed = self->_contractOrTimed;
    if (contractOrTimed >= 3)
    {
      v24 = [NSString stringWithFormat:@"(unknown: %i)", self->_contractOrTimed];
    }

    else
    {
      v24 = *(&off_100044A88 + contractOrTimed);
    }

    [v4 setObject:v24 forKey:@"contract_or_timed"];
  }

  canonicalSeasonId = self->_canonicalSeasonId;
  if (canonicalSeasonId)
  {
    [v4 setObject:canonicalSeasonId forKey:@"canonical_season_id"];
  }

  legSeasonId = self->_legSeasonId;
  if (legSeasonId)
  {
    [v4 setObject:legSeasonId forKey:@"leg_season_id"];
  }

  legShowId = self->_legShowId;
  if (legShowId)
  {
    [v4 setObject:legShowId forKey:@"leg_show_id"];
  }

  v28 = self->_has;
  if ((v28 & 0x40) != 0)
  {
    v33 = [NSNumber numberWithBool:self->_clientIsDone];
    [v4 setObject:v33 forKey:@"clientIsDone"];

    v28 = self->_has;
    if ((v28 & 0x20) == 0)
    {
LABEL_43:
      if ((v28 & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_53;
    }
  }

  else if ((v28 & 0x20) == 0)
  {
    goto LABEL_43;
  }

  v34 = [NSNumber numberWithBool:self->_algorithmicIsDoneEnabled];
  [v4 setObject:v34 forKey:@"algorithmicIsDoneEnabled"];

  v28 = self->_has;
  if ((v28 & 1) == 0)
  {
LABEL_44:
    if ((v28 & 2) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_53:
  v35 = [NSNumber numberWithLongLong:self->_mainContentLengthInMilliseconds];
  [v4 setObject:v35 forKey:@"main_content_length_in_milliseconds"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_45:
    v29 = [NSNumber numberWithLongLong:self->_mainContentPlayHeadInMilliseconds];
    [v4 setObject:v29 forKey:@"main_content_play_head_in_milliseconds"];
  }

LABEL_46:
  mainContentInfo = self->_mainContentInfo;
  if (mainContentInfo)
  {
    v31 = [(UWLSectionInfo *)mainContentInfo dictionaryRepresentation];
    [v4 setObject:v31 forKey:@"main_content_info"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v22 = a3;
  bundleId = self->_bundleId;
  PBDataWriterWriteStringField();
  externalPlayableId = self->_externalPlayableId;
  PBDataWriterWriteStringField();
  playHeadInMilliseconds = self->_playHeadInMilliseconds;
  PBDataWriterWriteInt64Field();
  millisecondsSinceEvent = self->_millisecondsSinceEvent;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x100) != 0)
  {
    isDone = self->_isDone;
    PBDataWriterWriteBOOLField();
  }

  if (self->_externalShowId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v10 = v22;
  if ((has & 4) != 0)
  {
    mediaLengthInMilliseconds = self->_mediaLengthInMilliseconds;
    PBDataWriterWriteInt64Field();
    v10 = v22;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    mediaType = self->_mediaType;
    PBDataWriterWriteInt32Field();
    v10 = v22;
  }

  if (self->_profileId)
  {
    PBDataWriterWriteStringField();
    v10 = v22;
  }

  if (self->_brandId)
  {
    PBDataWriterWriteStringField();
    v10 = v22;
  }

  v13 = self->_has;
  if ((v13 & 0x80) != 0)
  {
    isCurrent = self->_isCurrent;
    PBDataWriterWriteBOOLField();
    v10 = v22;
    v13 = self->_has;
  }

  if ((v13 & 0x200) != 0)
  {
    isShowOpen = self->_isShowOpen;
    PBDataWriterWriteBOOLField();
    v10 = v22;
  }

  if (self->_canonicalId)
  {
    PBDataWriterWriteStringField();
    v10 = v22;
  }

  if (self->_canonicalShowId)
  {
    PBDataWriterWriteStringField();
    v10 = v22;
  }

  if (self->_internalLegId)
  {
    PBDataWriterWriteStringField();
    v10 = v22;
  }

  if ((*&self->_has & 8) != 0)
  {
    contractOrTimed = self->_contractOrTimed;
    PBDataWriterWriteInt32Field();
    v10 = v22;
  }

  if (self->_canonicalSeasonId)
  {
    PBDataWriterWriteStringField();
    v10 = v22;
  }

  if (self->_legSeasonId)
  {
    PBDataWriterWriteStringField();
    v10 = v22;
  }

  if (self->_legShowId)
  {
    PBDataWriterWriteStringField();
    v10 = v22;
  }

  v17 = self->_has;
  if ((v17 & 0x40) != 0)
  {
    clientIsDone = self->_clientIsDone;
    PBDataWriterWriteBOOLField();
    v10 = v22;
    v17 = self->_has;
    if ((v17 & 0x20) == 0)
    {
LABEL_33:
      if ((v17 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_43;
    }
  }

  else if ((v17 & 0x20) == 0)
  {
    goto LABEL_33;
  }

  algorithmicIsDoneEnabled = self->_algorithmicIsDoneEnabled;
  PBDataWriterWriteBOOLField();
  v10 = v22;
  v17 = self->_has;
  if ((v17 & 1) == 0)
  {
LABEL_34:
    if ((v17 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_43:
  mainContentLengthInMilliseconds = self->_mainContentLengthInMilliseconds;
  PBDataWriterWriteInt64Field();
  v10 = v22;
  if ((*&self->_has & 2) != 0)
  {
LABEL_35:
    mainContentPlayHeadInMilliseconds = self->_mainContentPlayHeadInMilliseconds;
    PBDataWriterWriteInt64Field();
    v10 = v22;
  }

LABEL_36:
  if (self->_mainContentInfo)
  {
    PBDataWriterWriteSubmessage();
    v10 = v22;
  }
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  [v8 setBundleId:self->_bundleId];
  [v8 setExternalPlayableId:self->_externalPlayableId];
  v4 = v8;
  *(v8 + 5) = self->_playHeadInMilliseconds;
  *(v8 + 4) = self->_millisecondsSinceEvent;
  if (*(&self->_has + 1))
  {
    *(v8 + 163) = self->_isDone;
    *(v8 + 84) |= 0x100u;
  }

  if (self->_externalShowId)
  {
    [v8 setExternalShowId:?];
    v4 = v8;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[3] = self->_mediaLengthInMilliseconds;
    *(v4 + 84) |= 4u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v4 + 36) = self->_mediaType;
    *(v4 + 84) |= 0x10u;
  }

  if (self->_profileId)
  {
    [v8 setProfileId:?];
    v4 = v8;
  }

  if (self->_brandId)
  {
    [v8 setBrandId:?];
    v4 = v8;
  }

  v6 = self->_has;
  if ((v6 & 0x80) != 0)
  {
    *(v4 + 162) = self->_isCurrent;
    *(v4 + 84) |= 0x80u;
    v6 = self->_has;
  }

  if ((v6 & 0x200) != 0)
  {
    *(v4 + 164) = self->_isShowOpen;
    *(v4 + 84) |= 0x200u;
  }

  if (self->_canonicalId)
  {
    [v8 setCanonicalId:?];
    v4 = v8;
  }

  if (self->_canonicalShowId)
  {
    [v8 setCanonicalShowId:?];
    v4 = v8;
  }

  if (self->_internalLegId)
  {
    [v8 setInternalLegId:?];
    v4 = v8;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 22) = self->_contractOrTimed;
    *(v4 + 84) |= 8u;
  }

  if (self->_canonicalSeasonId)
  {
    [v8 setCanonicalSeasonId:?];
    v4 = v8;
  }

  if (self->_legSeasonId)
  {
    [v8 setLegSeasonId:?];
    v4 = v8;
  }

  if (self->_legShowId)
  {
    [v8 setLegShowId:?];
    v4 = v8;
  }

  v7 = self->_has;
  if ((v7 & 0x40) != 0)
  {
    *(v4 + 161) = self->_clientIsDone;
    *(v4 + 84) |= 0x40u;
    v7 = self->_has;
    if ((v7 & 0x20) == 0)
    {
LABEL_33:
      if ((v7 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_43;
    }
  }

  else if ((v7 & 0x20) == 0)
  {
    goto LABEL_33;
  }

  *(v4 + 160) = self->_algorithmicIsDoneEnabled;
  *(v4 + 84) |= 0x20u;
  v7 = self->_has;
  if ((v7 & 1) == 0)
  {
LABEL_34:
    if ((v7 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_43:
  v4[1] = self->_mainContentLengthInMilliseconds;
  *(v4 + 84) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_35:
    v4[2] = self->_mainContentPlayHeadInMilliseconds;
    *(v4 + 84) |= 2u;
  }

LABEL_36:
  if (self->_mainContentInfo)
  {
    [v8 setMainContentInfo:?];
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:a3];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSString *)self->_externalPlayableId copyWithZone:a3];
  v9 = v5[12];
  v5[12] = v8;

  v5[5] = self->_playHeadInMilliseconds;
  v5[4] = self->_millisecondsSinceEvent;
  if (*(&self->_has + 1))
  {
    *(v5 + 163) = self->_isDone;
    *(v5 + 84) |= 0x100u;
  }

  v10 = [(NSString *)self->_externalShowId copyWithZone:a3];
  v11 = v5[13];
  v5[13] = v10;

  has = self->_has;
  if ((has & 4) != 0)
  {
    v5[3] = self->_mediaLengthInMilliseconds;
    *(v5 + 84) |= 4u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v5 + 36) = self->_mediaType;
    *(v5 + 84) |= 0x10u;
  }

  v13 = [(NSString *)self->_profileId copyWithZone:a3];
  v14 = v5[19];
  v5[19] = v13;

  v15 = [(NSString *)self->_brandId copyWithZone:a3];
  v16 = v5[6];
  v5[6] = v15;

  v17 = self->_has;
  if ((v17 & 0x80) != 0)
  {
    *(v5 + 162) = self->_isCurrent;
    *(v5 + 84) |= 0x80u;
    v17 = self->_has;
  }

  if ((v17 & 0x200) != 0)
  {
    *(v5 + 164) = self->_isShowOpen;
    *(v5 + 84) |= 0x200u;
  }

  v18 = [(NSString *)self->_canonicalId copyWithZone:a3];
  v19 = v5[8];
  v5[8] = v18;

  v20 = [(NSString *)self->_canonicalShowId copyWithZone:a3];
  v21 = v5[10];
  v5[10] = v20;

  v22 = [(NSString *)self->_internalLegId copyWithZone:a3];
  v23 = v5[14];
  v5[14] = v22;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 22) = self->_contractOrTimed;
    *(v5 + 84) |= 8u;
  }

  v24 = [(NSString *)self->_canonicalSeasonId copyWithZone:a3];
  v25 = v5[9];
  v5[9] = v24;

  v26 = [(NSString *)self->_legSeasonId copyWithZone:a3];
  v27 = v5[15];
  v5[15] = v26;

  v28 = [(NSString *)self->_legShowId copyWithZone:a3];
  v29 = v5[16];
  v5[16] = v28;

  v30 = self->_has;
  if ((v30 & 0x40) != 0)
  {
    *(v5 + 161) = self->_clientIsDone;
    *(v5 + 84) |= 0x40u;
    v30 = self->_has;
    if ((v30 & 0x20) == 0)
    {
LABEL_15:
      if ((v30 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_21:
      v5[1] = self->_mainContentLengthInMilliseconds;
      *(v5 + 84) |= 1u;
      if ((*&self->_has & 2) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v30 & 0x20) == 0)
  {
    goto LABEL_15;
  }

  *(v5 + 160) = self->_algorithmicIsDoneEnabled;
  *(v5 + 84) |= 0x20u;
  v30 = self->_has;
  if (v30)
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((v30 & 2) != 0)
  {
LABEL_17:
    v5[2] = self->_mainContentPlayHeadInMilliseconds;
    *(v5 + 84) |= 2u;
  }

LABEL_18:
  v31 = [(UWLSectionInfo *)self->_mainContentInfo copyWithZone:a3];
  v32 = v5[17];
  v5[17] = v31;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_94;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 7))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_94;
    }
  }

  externalPlayableId = self->_externalPlayableId;
  if (externalPlayableId | *(v4 + 12))
  {
    if (![(NSString *)externalPlayableId isEqual:?])
    {
      goto LABEL_94;
    }
  }

  if (self->_playHeadInMilliseconds != *(v4 + 5) || self->_millisecondsSinceEvent != *(v4 + 4))
  {
    goto LABEL_94;
  }

  has = self->_has;
  v8 = *(v4 + 84);
  if ((has & 0x100) != 0)
  {
    if ((*(v4 + 84) & 0x100) == 0)
    {
      goto LABEL_94;
    }

    v11 = *(v4 + 163);
    if (self->_isDone)
    {
      if ((*(v4 + 163) & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    else if (*(v4 + 163))
    {
      goto LABEL_94;
    }
  }

  else if ((*(v4 + 84) & 0x100) != 0)
  {
    goto LABEL_94;
  }

  externalShowId = self->_externalShowId;
  if (externalShowId | *(v4 + 13))
  {
    if (![(NSString *)externalShowId isEqual:?])
    {
      goto LABEL_94;
    }

    has = self->_has;
  }

  v10 = *(v4 + 84);
  if ((has & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_mediaLengthInMilliseconds != *(v4 + 3))
    {
      goto LABEL_94;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_94;
  }

  if ((has & 0x10) != 0)
  {
    if ((v10 & 0x10) == 0 || self->_mediaType != *(v4 + 36))
    {
      goto LABEL_94;
    }
  }

  else if ((v10 & 0x10) != 0)
  {
    goto LABEL_94;
  }

  profileId = self->_profileId;
  if (profileId | *(v4 + 19) && ![(NSString *)profileId isEqual:?])
  {
    goto LABEL_94;
  }

  brandId = self->_brandId;
  if (brandId | *(v4 + 6))
  {
    if (![(NSString *)brandId isEqual:?])
    {
      goto LABEL_94;
    }
  }

  v14 = *(v4 + 84);
  if ((*&self->_has & 0x80) != 0)
  {
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_94;
    }

    v19 = *(v4 + 162);
    if (self->_isCurrent)
    {
      if ((*(v4 + 162) & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    else if (*(v4 + 162))
    {
      goto LABEL_94;
    }
  }

  else if ((v14 & 0x80) != 0)
  {
    goto LABEL_94;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 84) & 0x200) == 0)
    {
      goto LABEL_94;
    }

    v20 = *(v4 + 164);
    if (self->_isShowOpen)
    {
      if ((*(v4 + 164) & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    else if (*(v4 + 164))
    {
      goto LABEL_94;
    }
  }

  else if ((*(v4 + 84) & 0x200) != 0)
  {
    goto LABEL_94;
  }

  canonicalId = self->_canonicalId;
  if (canonicalId | *(v4 + 8) && ![(NSString *)canonicalId isEqual:?])
  {
    goto LABEL_94;
  }

  canonicalShowId = self->_canonicalShowId;
  if (canonicalShowId | *(v4 + 10))
  {
    if (![(NSString *)canonicalShowId isEqual:?])
    {
      goto LABEL_94;
    }
  }

  internalLegId = self->_internalLegId;
  if (internalLegId | *(v4 + 14))
  {
    if (![(NSString *)internalLegId isEqual:?])
    {
      goto LABEL_94;
    }
  }

  v18 = *(v4 + 84);
  if ((*&self->_has & 8) != 0)
  {
    if ((v18 & 8) == 0 || self->_contractOrTimed != *(v4 + 22))
    {
      goto LABEL_94;
    }
  }

  else if ((v18 & 8) != 0)
  {
    goto LABEL_94;
  }

  canonicalSeasonId = self->_canonicalSeasonId;
  if (canonicalSeasonId | *(v4 + 9) && ![(NSString *)canonicalSeasonId isEqual:?])
  {
    goto LABEL_94;
  }

  legSeasonId = self->_legSeasonId;
  if (legSeasonId | *(v4 + 15))
  {
    if (![(NSString *)legSeasonId isEqual:?])
    {
      goto LABEL_94;
    }
  }

  legShowId = self->_legShowId;
  if (legShowId | *(v4 + 16))
  {
    if (![(NSString *)legShowId isEqual:?])
    {
      goto LABEL_94;
    }
  }

  v24 = self->_has;
  v25 = *(v4 + 84);
  if ((v24 & 0x40) != 0)
  {
    if ((v25 & 0x40) == 0)
    {
      goto LABEL_94;
    }

    v26 = *(v4 + 161);
    if (self->_clientIsDone)
    {
      if ((*(v4 + 161) & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    else if (*(v4 + 161))
    {
      goto LABEL_94;
    }
  }

  else if ((v25 & 0x40) != 0)
  {
    goto LABEL_94;
  }

  if ((v24 & 0x20) == 0)
  {
    if ((v25 & 0x20) == 0)
    {
      goto LABEL_70;
    }

LABEL_94:
    v29 = 0;
    goto LABEL_95;
  }

  if ((v25 & 0x20) == 0)
  {
    goto LABEL_94;
  }

  v27 = *(v4 + 160);
  if (self->_algorithmicIsDoneEnabled)
  {
    if ((*(v4 + 160) & 1) == 0)
    {
      goto LABEL_94;
    }
  }

  else if (*(v4 + 160))
  {
    goto LABEL_94;
  }

LABEL_70:
  if (v24)
  {
    if ((v25 & 1) == 0 || self->_mainContentLengthInMilliseconds != *(v4 + 1))
    {
      goto LABEL_94;
    }
  }

  else if (v25)
  {
    goto LABEL_94;
  }

  if ((v24 & 2) != 0)
  {
    if ((v25 & 2) == 0 || self->_mainContentPlayHeadInMilliseconds != *(v4 + 2))
    {
      goto LABEL_94;
    }
  }

  else if ((v25 & 2) != 0)
  {
    goto LABEL_94;
  }

  mainContentInfo = self->_mainContentInfo;
  if (mainContentInfo | *(v4 + 17))
  {
    v29 = [(UWLSectionInfo *)mainContentInfo isEqual:?];
  }

  else
  {
    v29 = 1;
  }

LABEL_95:

  return v29;
}

- (unint64_t)hash
{
  v28 = [(NSString *)self->_bundleId hash];
  v27 = [(NSString *)self->_externalPlayableId hash];
  if ((*&self->_has & 0x100) != 0)
  {
    v26 = 2654435761 * self->_isDone;
  }

  else
  {
    v26 = 0;
  }

  millisecondsSinceEvent = self->_millisecondsSinceEvent;
  playHeadInMilliseconds = self->_playHeadInMilliseconds;
  v23 = [(NSString *)self->_externalShowId hash];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v22 = 2654435761 * self->_mediaLengthInMilliseconds;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v22 = 0;
    if ((has & 0x10) != 0)
    {
LABEL_6:
      v21 = 2654435761 * self->_mediaType;
      goto LABEL_9;
    }
  }

  v21 = 0;
LABEL_9:
  v20 = [(NSString *)self->_profileId hash];
  v19 = [(NSString *)self->_brandId hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v18 = 2654435761 * self->_isCurrent;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v18 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_11:
      v4 = 2654435761 * self->_isShowOpen;
      goto LABEL_14;
    }
  }

  v4 = 0;
LABEL_14:
  v5 = [(NSString *)self->_canonicalId hash];
  v6 = [(NSString *)self->_canonicalShowId hash];
  v7 = [(NSString *)self->_internalLegId hash];
  if ((*&self->_has & 8) != 0)
  {
    v8 = 2654435761 * self->_contractOrTimed;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSString *)self->_canonicalSeasonId hash];
  v10 = [(NSString *)self->_legSeasonId hash];
  v11 = [(NSString *)self->_legShowId hash];
  v12 = self->_has;
  if ((v12 & 0x40) != 0)
  {
    v13 = 2654435761 * self->_clientIsDone;
    if ((v12 & 0x20) != 0)
    {
LABEL_19:
      v14 = 2654435761 * self->_algorithmicIsDoneEnabled;
      if (v12)
      {
        goto LABEL_20;
      }

LABEL_24:
      v15 = 0;
      if ((v12 & 2) != 0)
      {
        goto LABEL_21;
      }

LABEL_25:
      v16 = 0;
      return v27 ^ v28 ^ (2654435761 * playHeadInMilliseconds) ^ (2654435761 * millisecondsSinceEvent) ^ v26 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ [(UWLSectionInfo *)self->_mainContentInfo hash];
    }
  }

  else
  {
    v13 = 0;
    if ((v12 & 0x20) != 0)
    {
      goto LABEL_19;
    }
  }

  v14 = 0;
  if ((v12 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v15 = 2654435761 * self->_mainContentLengthInMilliseconds;
  if ((v12 & 2) == 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  v16 = 2654435761 * self->_mainContentPlayHeadInMilliseconds;
  return v27 ^ v28 ^ (2654435761 * playHeadInMilliseconds) ^ (2654435761 * millisecondsSinceEvent) ^ v26 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ [(UWLSectionInfo *)self->_mainContentInfo hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (*(v4 + 7))
  {
    [(UWLPlayEvent *)self setBundleId:?];
    v4 = v10;
  }

  if (*(v4 + 12))
  {
    [(UWLPlayEvent *)self setExternalPlayableId:?];
    v4 = v10;
  }

  self->_playHeadInMilliseconds = *(v4 + 5);
  self->_millisecondsSinceEvent = *(v4 + 4);
  if (*(v4 + 169))
  {
    self->_isDone = *(v4 + 163);
    *&self->_has |= 0x100u;
  }

  if (*(v4 + 13))
  {
    [(UWLPlayEvent *)self setExternalShowId:?];
    v4 = v10;
  }

  v5 = *(v4 + 84);
  if ((v5 & 4) != 0)
  {
    self->_mediaLengthInMilliseconds = *(v4 + 3);
    *&self->_has |= 4u;
    v5 = *(v4 + 84);
  }

  if ((v5 & 0x10) != 0)
  {
    self->_mediaType = *(v4 + 36);
    *&self->_has |= 0x10u;
  }

  if (*(v4 + 19))
  {
    [(UWLPlayEvent *)self setProfileId:?];
    v4 = v10;
  }

  if (*(v4 + 6))
  {
    [(UWLPlayEvent *)self setBrandId:?];
    v4 = v10;
  }

  v6 = *(v4 + 84);
  if ((v6 & 0x80) != 0)
  {
    self->_isCurrent = *(v4 + 162);
    *&self->_has |= 0x80u;
    v6 = *(v4 + 84);
  }

  if ((v6 & 0x200) != 0)
  {
    self->_isShowOpen = *(v4 + 164);
    *&self->_has |= 0x200u;
  }

  if (*(v4 + 8))
  {
    [(UWLPlayEvent *)self setCanonicalId:?];
    v4 = v10;
  }

  if (*(v4 + 10))
  {
    [(UWLPlayEvent *)self setCanonicalShowId:?];
    v4 = v10;
  }

  if (*(v4 + 14))
  {
    [(UWLPlayEvent *)self setInternalLegId:?];
    v4 = v10;
  }

  if ((*(v4 + 84) & 8) != 0)
  {
    self->_contractOrTimed = *(v4 + 22);
    *&self->_has |= 8u;
  }

  if (*(v4 + 9))
  {
    [(UWLPlayEvent *)self setCanonicalSeasonId:?];
    v4 = v10;
  }

  if (*(v4 + 15))
  {
    [(UWLPlayEvent *)self setLegSeasonId:?];
    v4 = v10;
  }

  if (*(v4 + 16))
  {
    [(UWLPlayEvent *)self setLegShowId:?];
    v4 = v10;
  }

  v7 = *(v4 + 84);
  if ((v7 & 0x40) != 0)
  {
    self->_clientIsDone = *(v4 + 161);
    *&self->_has |= 0x40u;
    v7 = *(v4 + 84);
    if ((v7 & 0x20) == 0)
    {
LABEL_37:
      if ((v7 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  else if ((v7 & 0x20) == 0)
  {
    goto LABEL_37;
  }

  self->_algorithmicIsDoneEnabled = *(v4 + 160);
  *&self->_has |= 0x20u;
  v7 = *(v4 + 84);
  if ((v7 & 1) == 0)
  {
LABEL_38:
    if ((v7 & 2) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_45:
  self->_mainContentLengthInMilliseconds = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 84) & 2) != 0)
  {
LABEL_39:
    self->_mainContentPlayHeadInMilliseconds = *(v4 + 2);
    *&self->_has |= 2u;
  }

LABEL_40:
  mainContentInfo = self->_mainContentInfo;
  v9 = *(v4 + 17);
  if (mainContentInfo)
  {
    if (v9)
    {
      [(UWLSectionInfo *)mainContentInfo mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(UWLPlayEvent *)self setMainContentInfo:?];
  }

  _objc_release_x1();
}

@end