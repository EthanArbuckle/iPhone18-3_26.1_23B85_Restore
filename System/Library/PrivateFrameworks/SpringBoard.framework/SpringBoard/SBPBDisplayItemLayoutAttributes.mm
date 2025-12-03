@interface SBPBDisplayItemLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (__CFString)semanticSizeTypeForSizeAsString:(__CFString *)string;
- (double)centerX;
- (double)centerY;
- (double)referenceBoundsHeightBeforeOverlapping;
- (double)referenceBoundsHeightForSize;
- (double)referenceBoundsWidthBeforeOverlapping;
- (double)referenceBoundsWidthForSize;
- (double)sizeHeight;
- (double)sizeWidth;
- (double)tileConfigurationCustomSizeHeight;
- (double)tileConfigurationCustomSizeWidth;
- (double)userSizeBeforeOverlappingInBoundsHeight;
- (double)userSizeBeforeOverlappingInBoundsWidth;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)StringAsSemanticSizeTypeForSize:(uint64_t)size;
- (uint64_t)cascaded;
- (uint64_t)contentOrientation;
- (uint64_t)lastInteractionTime;
- (uint64_t)mergeFrom:(uint64_t)from;
- (uint64_t)positionIsSystemManaged;
- (uint64_t)preferredTileRole;
- (uint64_t)semanticSizeTypeBeforeOverlapping;
- (uint64_t)semanticSizeTypeForSize;
- (uint64_t)setCascaded:(uint64_t)result;
- (uint64_t)setCenterX:(uint64_t)result;
- (uint64_t)setCenterY:(uint64_t)result;
- (uint64_t)setContentOrientation:(uint64_t)result;
- (uint64_t)setLastInteractionTime:(uint64_t)result;
- (uint64_t)setPositionIsSystemManaged:(uint64_t)result;
- (uint64_t)setPreferredTileRole:(uint64_t)result;
- (uint64_t)setReferenceBoundsHeightBeforeOverlapping:(uint64_t)result;
- (uint64_t)setReferenceBoundsHeightForSize:(uint64_t)result;
- (uint64_t)setReferenceBoundsWidthBeforeOverlapping:(uint64_t)result;
- (uint64_t)setReferenceBoundsWidthForSize:(uint64_t)result;
- (uint64_t)setSemanticSizeTypeBeforeOverlapping:(uint64_t)result;
- (uint64_t)setSemanticSizeTypeForSize:(uint64_t)result;
- (uint64_t)setSizeHeight:(uint64_t)result;
- (uint64_t)setSizeWidth:(uint64_t)result;
- (uint64_t)setSizingPolicy:(uint64_t)result;
- (uint64_t)setTileConfigurationCustomSizeHeight:(uint64_t)result;
- (uint64_t)setTileConfigurationCustomSizeWidth:(uint64_t)result;
- (uint64_t)setUserSizeBeforeOverlappingInBoundsHeight:(uint64_t)result;
- (uint64_t)setUserSizeBeforeOverlappingInBoundsWidth:(uint64_t)result;
- (uint64_t)setVersion:(uint64_t)result;
- (uint64_t)sizingPolicy;
- (uint64_t)slideOverConfiguration;
- (uint64_t)version;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)setSlideOverConfiguration:(uint64_t)configuration;
- (void)writeTo:(id)to;
@end

@implementation SBPBDisplayItemLayoutAttributes

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SBPBDisplayItemLayoutAttributes;
  v4 = [(SBPBDisplayItemLayoutAttributes *)&v8 description];
  dictionaryRepresentation = [(SBPBDisplayItemLayoutAttributes *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_sizeWidth];
  [dictionary setObject:v4 forKey:@"sizeWidth"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_sizeHeight];
  [dictionary setObject:v5 forKey:@"sizeHeight"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_centerX];
  [dictionary setObject:v6 forKey:@"centerX"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_centerY];
  [dictionary setObject:v7 forKey:@"centerY"];

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_lastInteractionTime];
  [dictionary setObject:v8 forKey:@"lastInteractionTime"];

  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sizingPolicy];
  [dictionary setObject:v9 forKey:@"sizingPolicy"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_userSizeBeforeOverlappingInBoundsWidth];
  [dictionary setObject:v10 forKey:@"userSizeBeforeOverlappingInBoundsWidth"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_userSizeBeforeOverlappingInBoundsHeight];
  [dictionary setObject:v11 forKey:@"userSizeBeforeOverlappingInBoundsHeight"];

  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_contentOrientation];
  [dictionary setObject:v12 forKey:@"contentOrientation"];

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_referenceBoundsWidthForSize];
  [dictionary setObject:v13 forKey:@"referenceBoundsWidthForSize"];

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_referenceBoundsHeightForSize];
  [dictionary setObject:v14 forKey:@"referenceBoundsHeightForSize"];

  semanticSizeTypeForSize = self->_semanticSizeTypeForSize;
  if (semanticSizeTypeForSize >= 0xA)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_semanticSizeTypeForSize];
  }

  else
  {
    v16 = off_2783BD7A8[semanticSizeTypeForSize];
  }

  [dictionary setObject:v16 forKey:@"semanticSizeTypeForSize"];

  v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_referenceBoundsWidthBeforeOverlapping];
  [dictionary setObject:v17 forKey:@"referenceBoundsWidthBeforeOverlapping"];

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_referenceBoundsHeightBeforeOverlapping];
  [dictionary setObject:v18 forKey:@"referenceBoundsHeightBeforeOverlapping"];

  semanticSizeTypeBeforeOverlapping = self->_semanticSizeTypeBeforeOverlapping;
  if (semanticSizeTypeBeforeOverlapping >= 0xA)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_semanticSizeTypeBeforeOverlapping];
  }

  else
  {
    v20 = off_2783BD7A8[semanticSizeTypeBeforeOverlapping];
  }

  [dictionary setObject:v20 forKey:@"semanticSizeTypeBeforeOverlapping"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_positionIsSystemManaged];
  [dictionary setObject:v21 forKey:@"positionIsSystemManaged"];

  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_preferredTileRole];
  [dictionary setObject:v22 forKey:@"preferredTileRole"];

  v23 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_version];
  [dictionary setObject:v23 forKey:@"version"];

  v24 = [MEMORY[0x277CCABB0] numberWithDouble:self->_tileConfigurationCustomSizeHeight];
  [dictionary setObject:v24 forKey:@"tileConfigurationCustomSizeHeight"];

  v25 = [MEMORY[0x277CCABB0] numberWithDouble:self->_tileConfigurationCustomSizeWidth];
  [dictionary setObject:v25 forKey:@"tileConfigurationCustomSizeWidth"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_cascaded];
  [dictionary setObject:v26 forKey:@"cascaded"];

  slideOverConfiguration = self->_slideOverConfiguration;
  if (slideOverConfiguration)
  {
    dictionaryRepresentation = [(SBPBSlideOverConfiguration *)slideOverConfiguration dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"slideOverConfiguration"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteInt64Field();
  PBDataWriterWriteInt64Field();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteInt64Field();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteBOOLField();
  PBDataWriterWriteInt64Field();
  PBDataWriterWriteInt64Field();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteBOOLField();
  if (!self->_slideOverConfiguration)
  {
    [SBPBDisplayItemLayoutAttributes writeTo:];
  }

  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 88) = self->_sizeWidth;
  *(v5 + 80) = self->_sizeHeight;
  *(v5 + 8) = self->_centerX;
  *(v5 + 16) = self->_centerY;
  *(v5 + 32) = self->_lastInteractionTime;
  *(v5 + 96) = self->_sizingPolicy;
  *(v5 + 128) = self->_userSizeBeforeOverlappingInBoundsWidth;
  *(v5 + 120) = self->_userSizeBeforeOverlappingInBoundsHeight;
  *(v5 + 24) = self->_contentOrientation;
  *(v5 + 72) = self->_referenceBoundsWidthForSize;
  *(v5 + 56) = self->_referenceBoundsHeightForSize;
  *(v5 + 148) = self->_semanticSizeTypeForSize;
  *(v5 + 64) = self->_referenceBoundsWidthBeforeOverlapping;
  *(v5 + 48) = self->_referenceBoundsHeightBeforeOverlapping;
  *(v5 + 144) = self->_semanticSizeTypeBeforeOverlapping;
  *(v5 + 161) = self->_positionIsSystemManaged;
  *(v5 + 40) = self->_preferredTileRole;
  *(v5 + 136) = self->_version;
  *(v5 + 104) = self->_tileConfigurationCustomSizeHeight;
  *(v5 + 112) = self->_tileConfigurationCustomSizeWidth;
  *(v5 + 160) = self->_cascaded;
  v6 = [(SBPBSlideOverConfiguration *)self->_slideOverConfiguration copyWithZone:zone];
  v7 = *(v5 + 152);
  *(v5 + 152) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_sizeWidth != *(equalCopy + 11) || self->_sizeHeight != *(equalCopy + 10) || self->_centerX != *(equalCopy + 1) || self->_centerY != *(equalCopy + 2) || self->_lastInteractionTime != *(equalCopy + 4) || self->_sizingPolicy != *(equalCopy + 12) || self->_userSizeBeforeOverlappingInBoundsWidth != *(equalCopy + 16) || self->_userSizeBeforeOverlappingInBoundsHeight != *(equalCopy + 15) || self->_contentOrientation != *(equalCopy + 3) || self->_referenceBoundsWidthForSize != *(equalCopy + 9) || self->_referenceBoundsHeightForSize != *(equalCopy + 7) || self->_semanticSizeTypeForSize != *(equalCopy + 37) || self->_referenceBoundsWidthBeforeOverlapping != *(equalCopy + 8) || self->_referenceBoundsHeightBeforeOverlapping != *(equalCopy + 6) || self->_semanticSizeTypeBeforeOverlapping != *(equalCopy + 36))
  {
    goto LABEL_27;
  }

  if (self->_positionIsSystemManaged)
  {
    if ((*(equalCopy + 161) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 161))
  {
LABEL_27:
    v5 = 0;
    goto LABEL_28;
  }

  if (self->_preferredTileRole != *(equalCopy + 5) || self->_version != *(equalCopy + 17) || self->_tileConfigurationCustomSizeHeight != *(equalCopy + 13) || self->_tileConfigurationCustomSizeWidth != *(equalCopy + 14))
  {
    goto LABEL_27;
  }

  if (self->_cascaded)
  {
    if ((*(equalCopy + 160) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 160))
  {
    goto LABEL_27;
  }

  slideOverConfiguration = self->_slideOverConfiguration;
  if (slideOverConfiguration | *(equalCopy + 19))
  {
    v5 = [(SBPBSlideOverConfiguration *)slideOverConfiguration isEqual:?];
  }

  else
  {
    v5 = 1;
  }

LABEL_28:

  return v5;
}

- (unint64_t)hash
{
  sizeWidth = self->_sizeWidth;
  if (sizeWidth < 0.0)
  {
    sizeWidth = -sizeWidth;
  }

  *v10.i64 = floor(sizeWidth + 0.5);
  v13 = (sizeWidth - *v10.i64) * 1.84467441e19;
  *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = vbslq_s8(vnegq_f64(v14), v11, v10);
  v16 = 2654435761u * *v15.i64;
  if (v13 >= 0.0)
  {
    if (v13 > 0.0)
    {
      v16 += v13;
    }
  }

  else
  {
    v16 -= fabs(v13);
  }

  sizeHeight = self->_sizeHeight;
  if (sizeHeight < 0.0)
  {
    sizeHeight = -sizeHeight;
  }

  *v15.i64 = floor(sizeHeight + 0.5);
  v18 = (sizeHeight - *v15.i64) * 1.84467441e19;
  *v11.i64 = *v15.i64 - trunc(*v15.i64 * 5.42101086e-20) * 1.84467441e19;
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  v20 = vbslq_s8(vnegq_f64(v19), v11, v15);
  v21 = 2654435761u * *v20.i64;
  if (v18 >= 0.0)
  {
    if (v18 > 0.0)
    {
      v21 += v18;
    }
  }

  else
  {
    v21 -= fabs(v18);
  }

  centerX = self->_centerX;
  if (centerX < 0.0)
  {
    centerX = -centerX;
  }

  *v20.i64 = floor(centerX + 0.5);
  v23 = (centerX - *v20.i64) * 1.84467441e19;
  *v11.i64 = *v20.i64 - trunc(*v20.i64 * 5.42101086e-20) * 1.84467441e19;
  v24.f64[0] = NAN;
  v24.f64[1] = NAN;
  v25 = vbslq_s8(vnegq_f64(v24), v11, v20);
  v26 = 2654435761u * *v25.i64;
  if (v23 >= 0.0)
  {
    if (v23 > 0.0)
    {
      v26 += v23;
    }
  }

  else
  {
    v26 -= fabs(v23);
  }

  centerY = self->_centerY;
  if (centerY < 0.0)
  {
    centerY = -centerY;
  }

  *v25.i64 = floor(centerY + 0.5);
  v28 = (centerY - *v25.i64) * 1.84467441e19;
  *v11.i64 = *v25.i64 - trunc(*v25.i64 * 5.42101086e-20) * 1.84467441e19;
  v29.f64[0] = NAN;
  v29.f64[1] = NAN;
  v30 = vbslq_s8(vnegq_f64(v29), v11, v25);
  v31 = 2654435761u * *v30.i64;
  if (v28 >= 0.0)
  {
    if (v28 > 0.0)
    {
      v31 += v28;
    }
  }

  else
  {
    v31 -= fabs(v28);
  }

  userSizeBeforeOverlappingInBoundsWidth = self->_userSizeBeforeOverlappingInBoundsWidth;
  if (userSizeBeforeOverlappingInBoundsWidth < 0.0)
  {
    userSizeBeforeOverlappingInBoundsWidth = -userSizeBeforeOverlappingInBoundsWidth;
  }

  *v30.i64 = floor(userSizeBeforeOverlappingInBoundsWidth + 0.5);
  v33 = (userSizeBeforeOverlappingInBoundsWidth - *v30.i64) * 1.84467441e19;
  *v11.i64 = *v30.i64 - trunc(*v30.i64 * 5.42101086e-20) * 1.84467441e19;
  v34.f64[0] = NAN;
  v34.f64[1] = NAN;
  v35 = vbslq_s8(vnegq_f64(v34), v11, v30);
  v36 = 2654435761u * *v35.i64;
  if (v33 >= 0.0)
  {
    if (v33 > 0.0)
    {
      v36 += v33;
    }
  }

  else
  {
    v36 -= fabs(v33);
  }

  userSizeBeforeOverlappingInBoundsHeight = self->_userSizeBeforeOverlappingInBoundsHeight;
  if (userSizeBeforeOverlappingInBoundsHeight < 0.0)
  {
    userSizeBeforeOverlappingInBoundsHeight = -userSizeBeforeOverlappingInBoundsHeight;
  }

  *v35.i64 = floor(userSizeBeforeOverlappingInBoundsHeight + 0.5);
  v38 = (userSizeBeforeOverlappingInBoundsHeight - *v35.i64) * 1.84467441e19;
  *v11.i64 = *v35.i64 - trunc(*v35.i64 * 5.42101086e-20) * 1.84467441e19;
  v39.f64[0] = NAN;
  v39.f64[1] = NAN;
  v40 = vbslq_s8(vnegq_f64(v39), v11, v35);
  v41 = 2654435761u * *v40.i64;
  if (v38 >= 0.0)
  {
    if (v38 > 0.0)
    {
      v41 += v38;
    }
  }

  else
  {
    v41 -= fabs(v38);
  }

  referenceBoundsWidthForSize = self->_referenceBoundsWidthForSize;
  if (referenceBoundsWidthForSize < 0.0)
  {
    referenceBoundsWidthForSize = -referenceBoundsWidthForSize;
  }

  *v40.i64 = floor(referenceBoundsWidthForSize + 0.5);
  v43 = (referenceBoundsWidthForSize - *v40.i64) * 1.84467441e19;
  *v11.i64 = *v40.i64 - trunc(*v40.i64 * 5.42101086e-20) * 1.84467441e19;
  v44.f64[0] = NAN;
  v44.f64[1] = NAN;
  v45 = vbslq_s8(vnegq_f64(v44), v11, v40);
  v46 = 2654435761u * *v45.i64;
  if (v43 >= 0.0)
  {
    if (v43 > 0.0)
    {
      v46 += v43;
    }
  }

  else
  {
    v46 -= fabs(v43);
  }

  referenceBoundsHeightForSize = self->_referenceBoundsHeightForSize;
  if (referenceBoundsHeightForSize < 0.0)
  {
    referenceBoundsHeightForSize = -referenceBoundsHeightForSize;
  }

  *v45.i64 = floor(referenceBoundsHeightForSize + 0.5);
  v48 = (referenceBoundsHeightForSize - *v45.i64) * 1.84467441e19;
  *v11.i64 = *v45.i64 - trunc(*v45.i64 * 5.42101086e-20) * 1.84467441e19;
  v49.f64[0] = NAN;
  v49.f64[1] = NAN;
  v50 = vbslq_s8(vnegq_f64(v49), v11, v45);
  v51 = 2654435761u * *v50.i64;
  if (v48 >= 0.0)
  {
    if (v48 > 0.0)
    {
      v51 += v48;
    }
  }

  else
  {
    v51 -= fabs(v48);
  }

  referenceBoundsWidthBeforeOverlapping = self->_referenceBoundsWidthBeforeOverlapping;
  if (referenceBoundsWidthBeforeOverlapping < 0.0)
  {
    referenceBoundsWidthBeforeOverlapping = -referenceBoundsWidthBeforeOverlapping;
  }

  *v50.i64 = floor(referenceBoundsWidthBeforeOverlapping + 0.5);
  v53 = (referenceBoundsWidthBeforeOverlapping - *v50.i64) * 1.84467441e19;
  *v11.i64 = *v50.i64 - trunc(*v50.i64 * 5.42101086e-20) * 1.84467441e19;
  v54.f64[0] = NAN;
  v54.f64[1] = NAN;
  v55 = vbslq_s8(vnegq_f64(v54), v11, v50);
  v56 = 2654435761u * *v55.i64;
  if (v53 >= 0.0)
  {
    if (v53 > 0.0)
    {
      v56 += v53;
    }
  }

  else
  {
    v56 -= fabs(v53);
  }

  referenceBoundsHeightBeforeOverlapping = self->_referenceBoundsHeightBeforeOverlapping;
  if (referenceBoundsHeightBeforeOverlapping < 0.0)
  {
    referenceBoundsHeightBeforeOverlapping = -referenceBoundsHeightBeforeOverlapping;
  }

  *v55.i64 = floor(referenceBoundsHeightBeforeOverlapping + 0.5);
  v58 = (referenceBoundsHeightBeforeOverlapping - *v55.i64) * 1.84467441e19;
  *v11.i64 = *v55.i64 - trunc(*v55.i64 * 5.42101086e-20) * 1.84467441e19;
  v59.f64[0] = NAN;
  v59.f64[1] = NAN;
  v60 = vbslq_s8(vnegq_f64(v59), v11, v55);
  v61 = 2654435761u * *v60.i64;
  if (v58 >= 0.0)
  {
    if (v58 > 0.0)
    {
      v61 += v58;
    }
  }

  else
  {
    v61 -= fabs(v58);
  }

  v74 = v3;
  v75 = v2;
  tileConfigurationCustomSizeHeight = self->_tileConfigurationCustomSizeHeight;
  if (tileConfigurationCustomSizeHeight < 0.0)
  {
    tileConfigurationCustomSizeHeight = -tileConfigurationCustomSizeHeight;
  }

  *v60.i64 = floor(tileConfigurationCustomSizeHeight + 0.5);
  v63 = (tileConfigurationCustomSizeHeight - *v60.i64) * 1.84467441e19;
  *v11.i64 = *v60.i64 - trunc(*v60.i64 * 5.42101086e-20) * 1.84467441e19;
  v64.f64[0] = NAN;
  v64.f64[1] = NAN;
  v65 = vbslq_s8(vnegq_f64(v64), v11, v60);
  v66 = 2654435761u * *v65.i64;
  if (v63 >= 0.0)
  {
    if (v63 > 0.0)
    {
      v66 += v63;
    }
  }

  else
  {
    v66 -= fabs(v63);
  }

  tileConfigurationCustomSizeWidth = self->_tileConfigurationCustomSizeWidth;
  if (tileConfigurationCustomSizeWidth < 0.0)
  {
    tileConfigurationCustomSizeWidth = -tileConfigurationCustomSizeWidth;
  }

  *v65.i64 = floor(tileConfigurationCustomSizeWidth + 0.5);
  v68 = (tileConfigurationCustomSizeWidth - *v65.i64) * 1.84467441e19;
  *v11.i64 = *v65.i64 - trunc(*v65.i64 * 5.42101086e-20) * 1.84467441e19;
  v69.f64[0] = NAN;
  v69.f64[1] = NAN;
  v70 = 2654435761u * *vbslq_s8(vnegq_f64(v69), v11, v65).i64;
  if (v68 >= 0.0)
  {
    if (v68 > 0.0)
    {
      v70 += v68;
    }
  }

  else
  {
    v70 -= fabs(v68);
  }

  v71 = v21 ^ v16 ^ v26 ^ v31 ^ (2654435761 * self->_lastInteractionTime) ^ (2654435761 * self->_sizingPolicy) ^ v36 ^ v41 ^ (2654435761 * self->_contentOrientation) ^ v46 ^ v51 ^ (2654435761 * self->_semanticSizeTypeForSize) ^ v56 ^ v61 ^ (2654435761 * self->_semanticSizeTypeBeforeOverlapping) ^ (2654435761 * self->_positionIsSystemManaged) ^ (2654435761 * self->_preferredTileRole);
  v72 = (2654435761 * self->_version) ^ v66 ^ v70 ^ (2654435761 * self->_cascaded);
  return v71 ^ v72 ^ [(SBPBSlideOverConfiguration *)self->_slideOverConfiguration hash:self->_positionIsSystemManaged];
}

- (__CFString)semanticSizeTypeForSizeAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if (a2 < 0xA)
  {
    string = off_2783BD7A8[a2];
    goto LABEL_4;
  }

  string = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)StringAsSemanticSizeTypeForSize:(uint64_t)size
{
  v3 = a2;
  v4 = v3;
  if (size)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"None"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"FullWidth"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"FullHeight"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"FullWidthAndHeight"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"DefaultWidth"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"DefaultHeight"])
    {
      v6 = 5;
    }

    else if ([v5 isEqualToString:@"DefaulWidthAndHeight"])
    {
      v6 = 6;
    }

    else if ([v5 isEqualToString:@"ScreenEdgePaddingWidth"])
    {
      v6 = 7;
    }

    else if ([v5 isEqualToString:@"ScreenEdgePaddingHeight"])
    {
      v6 = 8;
    }

    else if ([v5 isEqualToString:@"ScreenEdgePaddingWidthAndHeight"])
    {
      v6 = 9;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)copyTo:(uint64_t)to
{
  if (to)
  {
    *(a2 + 88) = *(to + 88);
    *(a2 + 80) = *(to + 80);
    *(a2 + 8) = *(to + 8);
    *(a2 + 16) = *(to + 16);
    *(a2 + 32) = *(to + 32);
    *(a2 + 96) = *(to + 96);
    *(a2 + 128) = *(to + 128);
    *(a2 + 120) = *(to + 120);
    *(a2 + 24) = *(to + 24);
    *(a2 + 72) = *(to + 72);
    *(a2 + 56) = *(to + 56);
    *(a2 + 148) = *(to + 148);
    *(a2 + 64) = *(to + 64);
    *(a2 + 48) = *(to + 48);
    *(a2 + 144) = *(to + 144);
    *(a2 + 161) = *(to + 161);
    *(a2 + 40) = *(to + 40);
    *(a2 + 136) = *(to + 136);
    *(a2 + 104) = *(to + 104);
    *(a2 + 112) = *(to + 112);
    *(a2 + 160) = *(to + 160);
    [(SBPBDisplayItemLayoutAttributes *)a2 setSlideOverConfiguration:?];
  }
}

- (void)setSlideOverConfiguration:(uint64_t)configuration
{
  if (configuration)
  {
    objc_storeStrong((configuration + 152), a2);
  }
}

- (uint64_t)mergeFrom:(uint64_t)from
{
  v3 = a2;
  if (from)
  {
    OUTLINED_FUNCTION_2_27(v3, 88);
    OUTLINED_FUNCTION_2_27(v4, 80);
    OUTLINED_FUNCTION_2_27(v5, 8);
    OUTLINED_FUNCTION_2_27(v6, 16);
    OUTLINED_FUNCTION_3_25(v7, 32);
    OUTLINED_FUNCTION_3_25(v8, 96);
    OUTLINED_FUNCTION_2_27(v9, 128);
    OUTLINED_FUNCTION_2_27(v10, 120);
    OUTLINED_FUNCTION_3_25(v11, 24);
    OUTLINED_FUNCTION_2_27(v12, 72);
    OUTLINED_FUNCTION_2_27(v13, 56);
    *(from + 148) = *(v14 + 148);
    OUTLINED_FUNCTION_2_27(v14, 64);
    OUTLINED_FUNCTION_2_27(v15, 48);
    *(from + 144) = *(v16 + 144);
    *(from + 161) = *(v16 + 161);
    OUTLINED_FUNCTION_3_25(v16, 40);
    OUTLINED_FUNCTION_3_25(v17, 136);
    OUTLINED_FUNCTION_2_27(v18, 104);
    OUTLINED_FUNCTION_2_27(v19, 112);
    *(from + 160) = *(v20 + 160);
    v3 = *(from + 152);
    v21 = *(v20 + 152);
    if (v3)
    {
      if (v21)
      {
        [(SBPBSlideOverConfiguration *)v3 mergeFrom:v21];
      }
    }

    else if (v21)
    {
      [(SBPBDisplayItemLayoutAttributes *)from setSlideOverConfiguration:v21];
    }
  }

  return MEMORY[0x2821F9730](v3);
}

- (double)sizeWidth
{
  if (self)
  {
    return OUTLINED_FUNCTION_2_1(self, 88);
  }

  else
  {
    return OUTLINED_FUNCTION_1_8();
  }
}

- (uint64_t)setSizeWidth:(uint64_t)result
{
  if (result)
  {
    *(result + 88) = a2;
  }

  return result;
}

- (double)sizeHeight
{
  if (self)
  {
    return OUTLINED_FUNCTION_2_1(self, 80);
  }

  else
  {
    return OUTLINED_FUNCTION_1_8();
  }
}

- (uint64_t)setSizeHeight:(uint64_t)result
{
  if (result)
  {
    *(result + 80) = a2;
  }

  return result;
}

- (double)centerX
{
  if (self)
  {
    return OUTLINED_FUNCTION_2_1(self, 8);
  }

  else
  {
    return OUTLINED_FUNCTION_1_8();
  }
}

- (uint64_t)setCenterX:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (double)centerY
{
  if (self)
  {
    return OUTLINED_FUNCTION_2_1(self, 16);
  }

  else
  {
    return OUTLINED_FUNCTION_1_8();
  }
}

- (uint64_t)setCenterY:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)lastInteractionTime
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)setLastInteractionTime:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

- (uint64_t)sizingPolicy
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)setSizingPolicy:(uint64_t)result
{
  if (result)
  {
    *(result + 96) = a2;
  }

  return result;
}

- (double)userSizeBeforeOverlappingInBoundsWidth
{
  if (self)
  {
    return OUTLINED_FUNCTION_2_1(self, 128);
  }

  else
  {
    return OUTLINED_FUNCTION_1_8();
  }
}

- (uint64_t)setUserSizeBeforeOverlappingInBoundsWidth:(uint64_t)result
{
  if (result)
  {
    *(result + 128) = a2;
  }

  return result;
}

- (double)userSizeBeforeOverlappingInBoundsHeight
{
  if (self)
  {
    return OUTLINED_FUNCTION_2_1(self, 120);
  }

  else
  {
    return OUTLINED_FUNCTION_1_8();
  }
}

- (uint64_t)setUserSizeBeforeOverlappingInBoundsHeight:(uint64_t)result
{
  if (result)
  {
    *(result + 120) = a2;
  }

  return result;
}

- (uint64_t)contentOrientation
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)setContentOrientation:(uint64_t)result
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

- (double)referenceBoundsWidthForSize
{
  if (self)
  {
    return OUTLINED_FUNCTION_2_1(self, 72);
  }

  else
  {
    return OUTLINED_FUNCTION_1_8();
  }
}

- (uint64_t)setReferenceBoundsWidthForSize:(uint64_t)result
{
  if (result)
  {
    *(result + 72) = a2;
  }

  return result;
}

- (double)referenceBoundsHeightForSize
{
  if (self)
  {
    return OUTLINED_FUNCTION_2_1(self, 56);
  }

  else
  {
    return OUTLINED_FUNCTION_1_8();
  }
}

- (uint64_t)setReferenceBoundsHeightForSize:(uint64_t)result
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

- (uint64_t)semanticSizeTypeForSize
{
  if (result)
  {
    return *(result + 148);
  }

  return result;
}

- (uint64_t)setSemanticSizeTypeForSize:(uint64_t)result
{
  if (result)
  {
    *(result + 148) = a2;
  }

  return result;
}

- (double)referenceBoundsWidthBeforeOverlapping
{
  if (self)
  {
    return OUTLINED_FUNCTION_2_1(self, 64);
  }

  else
  {
    return OUTLINED_FUNCTION_1_8();
  }
}

- (uint64_t)setReferenceBoundsWidthBeforeOverlapping:(uint64_t)result
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

- (double)referenceBoundsHeightBeforeOverlapping
{
  if (self)
  {
    return OUTLINED_FUNCTION_2_1(self, 48);
  }

  else
  {
    return OUTLINED_FUNCTION_1_8();
  }
}

- (uint64_t)setReferenceBoundsHeightBeforeOverlapping:(uint64_t)result
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

- (uint64_t)semanticSizeTypeBeforeOverlapping
{
  if (result)
  {
    return *(result + 144);
  }

  return result;
}

- (uint64_t)setSemanticSizeTypeBeforeOverlapping:(uint64_t)result
{
  if (result)
  {
    *(result + 144) = a2;
  }

  return result;
}

- (uint64_t)positionIsSystemManaged
{
  if (self)
  {
    v1 = *(self + 161);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)setPositionIsSystemManaged:(uint64_t)result
{
  if (result)
  {
    *(result + 161) = a2;
  }

  return result;
}

- (uint64_t)preferredTileRole
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)setPreferredTileRole:(uint64_t)result
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)version
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

- (uint64_t)setVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 136) = a2;
  }

  return result;
}

- (double)tileConfigurationCustomSizeHeight
{
  if (self)
  {
    return OUTLINED_FUNCTION_2_1(self, 104);
  }

  else
  {
    return OUTLINED_FUNCTION_1_8();
  }
}

- (uint64_t)setTileConfigurationCustomSizeHeight:(uint64_t)result
{
  if (result)
  {
    *(result + 104) = a2;
  }

  return result;
}

- (double)tileConfigurationCustomSizeWidth
{
  if (self)
  {
    return OUTLINED_FUNCTION_2_1(self, 112);
  }

  else
  {
    return OUTLINED_FUNCTION_1_8();
  }
}

- (uint64_t)setTileConfigurationCustomSizeWidth:(uint64_t)result
{
  if (result)
  {
    *(result + 112) = a2;
  }

  return result;
}

- (uint64_t)cascaded
{
  if (self)
  {
    v1 = *(self + 160);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)setCascaded:(uint64_t)result
{
  if (result)
  {
    *(result + 160) = a2;
  }

  return result;
}

- (uint64_t)slideOverConfiguration
{
  if (result)
  {
    return *(result + 152);
  }

  return result;
}

@end