@interface PCPWorkoutCluster
- (BOOL)isEqual:(id)a3;
- (PCPWorkoutCluster)initWithCluster:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEmbeddingIdentifiers:(id)a3;
- (void)addEmbeddingIdentifiersWithPhenotype:(id)a3;
- (void)copyTo:(id)a3;
- (void)mapPhenotypeData:(id)a3 toCluster:(id)a4;
- (void)mapTimeProperties:(id)a3 toPhenotype:(id)a4;
- (void)mergeFrom:(id)a3;
- (void)setHasStartTimeCFAbsolute:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPWorkoutCluster

- (void)setHasStartTimeCFAbsolute:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addEmbeddingIdentifiersWithPhenotype:(id)a3
{
  v4 = a3;
  embeddingIdentifiersWithPhenotypes = self->_embeddingIdentifiersWithPhenotypes;
  v8 = v4;
  if (!embeddingIdentifiersWithPhenotypes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_embeddingIdentifiersWithPhenotypes;
    self->_embeddingIdentifiersWithPhenotypes = v6;

    v4 = v8;
    embeddingIdentifiersWithPhenotypes = self->_embeddingIdentifiersWithPhenotypes;
  }

  [(NSMutableArray *)embeddingIdentifiersWithPhenotypes addObject:v4];
}

- (void)addEmbeddingIdentifiers:(id)a3
{
  v4 = a3;
  embeddingIdentifiers = self->_embeddingIdentifiers;
  v8 = v4;
  if (!embeddingIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_embeddingIdentifiers;
    self->_embeddingIdentifiers = v6;

    v4 = v8;
    embeddingIdentifiers = self->_embeddingIdentifiers;
  }

  [(NSMutableArray *)embeddingIdentifiers addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPWorkoutCluster;
  v4 = [(PCPWorkoutCluster *)&v8 description];
  v5 = [(PCPWorkoutCluster *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTimeCFAbsolute];
    [v4 setObject:v7 forKey:@"startTimeCFAbsolute"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endTimeCFAbsolute];
    [v4 setObject:v8 forKey:@"endTimeCFAbsolute"];
  }

  embeddingIdentifiersWithPhenotypes = self->_embeddingIdentifiersWithPhenotypes;
  if (embeddingIdentifiersWithPhenotypes)
  {
    [v4 setObject:embeddingIdentifiersWithPhenotypes forKey:@"embeddingIdentifiersWithPhenotype"];
  }

  embeddingIdentifiers = self->_embeddingIdentifiers;
  if (embeddingIdentifiers)
  {
    [v4 setObject:embeddingIdentifiers forKey:@"embeddingIdentifiers"];
  }

  clusterPhenotype = self->_clusterPhenotype;
  if (clusterPhenotype)
  {
    v12 = [(PCPClusterPhenotype *)clusterPhenotype dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"clusterPhenotype"];
  }

  dominantSourceBundleIdentifier = self->_dominantSourceBundleIdentifier;
  if (dominantSourceBundleIdentifier)
  {
    [v4 setObject:dominantSourceBundleIdentifier forKey:@"dominantSourceBundleIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    startTimeCFAbsolute = self->_startTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if (has)
  {
    endTimeCFAbsolute = self->_endTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_embeddingIdentifiersWithPhenotypes;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_embeddingIdentifiers;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  if (self->_clusterPhenotype)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dominantSourceBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v15 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v15;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_startTimeCFAbsolute;
    *(v4 + 64) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_endTimeCFAbsolute;
    *(v4 + 64) |= 1u;
  }

  if ([(PCPWorkoutCluster *)self embeddingIdentifiersWithPhenotypesCount])
  {
    [v15 clearEmbeddingIdentifiersWithPhenotypes];
    v6 = [(PCPWorkoutCluster *)self embeddingIdentifiersWithPhenotypesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PCPWorkoutCluster *)self embeddingIdentifiersWithPhenotypeAtIndex:i];
        [v15 addEmbeddingIdentifiersWithPhenotype:v9];
      }
    }
  }

  if ([(PCPWorkoutCluster *)self embeddingIdentifiersCount])
  {
    [v15 clearEmbeddingIdentifiers];
    v10 = [(PCPWorkoutCluster *)self embeddingIdentifiersCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(PCPWorkoutCluster *)self embeddingIdentifiersAtIndex:j];
        [v15 addEmbeddingIdentifiers:v13];
      }
    }
  }

  if (self->_clusterPhenotype)
  {
    [v15 setClusterPhenotype:?];
  }

  v14 = v15;
  if (self->_dominantSourceBundleIdentifier)
  {
    [v15 setDominantSourceBundleIdentifier:?];
    v14 = v15;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_startTimeCFAbsolute;
    *(v5 + 64) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_endTimeCFAbsolute;
    *(v5 + 64) |= 1u;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = self->_embeddingIdentifiersWithPhenotypes;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v31 + 1) + 8 * i) copyWithZone:a3];
        [v5 addEmbeddingIdentifiersWithPhenotype:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v11);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = self->_embeddingIdentifiers;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v27 + 1) + 8 * j) copyWithZone:{a3, v27}];
        [v5 addEmbeddingIdentifiers:v20];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v17);
  }

  v21 = [(PCPClusterPhenotype *)self->_clusterPhenotype copyWithZone:a3];
  v22 = *(v5 + 24);
  *(v5 + 24) = v21;

  v23 = [(NSString *)self->_dominantSourceBundleIdentifier copyWithZone:a3];
  v24 = *(v5 + 32);
  *(v5 + 32) = v23;

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 7))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v6 = *(v4 + 64);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_startTimeCFAbsolute != *(v4 + 2))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_endTimeCFAbsolute != *(v4 + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_22;
  }

  embeddingIdentifiersWithPhenotypes = self->_embeddingIdentifiersWithPhenotypes;
  if (embeddingIdentifiersWithPhenotypes | *(v4 + 6) && ![(NSMutableArray *)embeddingIdentifiersWithPhenotypes isEqual:?])
  {
    goto LABEL_22;
  }

  embeddingIdentifiers = self->_embeddingIdentifiers;
  if (embeddingIdentifiers | *(v4 + 5))
  {
    if (![(NSMutableArray *)embeddingIdentifiers isEqual:?])
    {
      goto LABEL_22;
    }
  }

  clusterPhenotype = self->_clusterPhenotype;
  if (clusterPhenotype | *(v4 + 3))
  {
    if (![(PCPClusterPhenotype *)clusterPhenotype isEqual:?])
    {
      goto LABEL_22;
    }
  }

  dominantSourceBundleIdentifier = self->_dominantSourceBundleIdentifier;
  if (dominantSourceBundleIdentifier | *(v4 + 4))
  {
    v11 = [(NSString *)dominantSourceBundleIdentifier isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_23:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if ((*&self->_has & 2) != 0)
  {
    startTimeCFAbsolute = self->_startTimeCFAbsolute;
    if (startTimeCFAbsolute < 0.0)
    {
      startTimeCFAbsolute = -startTimeCFAbsolute;
    }

    *v4.i64 = floor(startTimeCFAbsolute + 0.5);
    v8 = (startTimeCFAbsolute - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if (*&self->_has)
  {
    endTimeCFAbsolute = self->_endTimeCFAbsolute;
    if (endTimeCFAbsolute < 0.0)
    {
      endTimeCFAbsolute = -endTimeCFAbsolute;
    }

    *v4.i64 = floor(endTimeCFAbsolute + 0.5);
    v12 = (endTimeCFAbsolute - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v5, v4).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = v6 ^ v3 ^ v10 ^ [(NSMutableArray *)self->_embeddingIdentifiersWithPhenotypes hash];
  v15 = [(NSMutableArray *)self->_embeddingIdentifiers hash];
  v16 = v15 ^ [(PCPClusterPhenotype *)self->_clusterPhenotype hash];
  return v14 ^ v16 ^ [(NSString *)self->_dominantSourceBundleIdentifier hash];
}

- (void)mergeFrom:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 7))
  {
    [(PCPWorkoutCluster *)self setIdentifier:?];
  }

  v5 = *(v4 + 64);
  if ((v5 & 2) != 0)
  {
    self->_startTimeCFAbsolute = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 64);
  }

  if (v5)
  {
    self->_endTimeCFAbsolute = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = *(v4 + 6);
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PCPWorkoutCluster *)self addEmbeddingIdentifiersWithPhenotype:*(*(&v23 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = *(v4 + 5);
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(PCPWorkoutCluster *)self addEmbeddingIdentifiers:*(*(&v19 + 1) + 8 * j), v19];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  clusterPhenotype = self->_clusterPhenotype;
  v17 = *(v4 + 3);
  if (clusterPhenotype)
  {
    if (v17)
    {
      [(PCPClusterPhenotype *)clusterPhenotype mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(PCPWorkoutCluster *)self setClusterPhenotype:?];
  }

  if (*(v4 + 4))
  {
    [(PCPWorkoutCluster *)self setDominantSourceBundleIdentifier:?];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (PCPWorkoutCluster)initWithCluster:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(PCPWorkoutCluster);
    v6 = [v4 identifier];
    v7 = [v6 UUIDString];
    [(PCPWorkoutCluster *)v5 setIdentifier:v7];

    v8 = [v4 sourceBundleIdentifier];
    [(PCPWorkoutCluster *)v5 setDominantSourceBundleIdentifier:v8];

    v9 = [v4 startDate];

    if (v9)
    {
      v10 = [v4 startDate];
      [v10 timeIntervalSinceReferenceDate];
      [(PCPWorkoutCluster *)v5 setStartTimeCFAbsolute:?];

      [(PCPWorkoutCluster *)v5 setHasStartTimeCFAbsolute:1];
    }

    v11 = [v4 endDate];

    if (v11)
    {
      v12 = [v4 endDate];
      [v12 timeIntervalSinceReferenceDate];
      [(PCPWorkoutCluster *)v5 setEndTimeCFAbsolute:?];

      [(PCPWorkoutCluster *)v5 setHasEndTimeCFAbsolute:1];
    }

    v13 = [v4 subSuggestionIDs];
    v14 = [v13 count];

    if (v14)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v15 = [v4 subSuggestionIDs];
      v16 = [v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v36;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v36 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [(PCPWorkoutCluster *)v5 addEmbeddingIdentifiersWithPhenotype:*(*(&v35 + 1) + 8 * i)];
          }

          v17 = [v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v17);
      }
    }

    v20 = [v4 clusterMetadata];
    v21 = [v20 subSuggestionIDsBeforePruning];
    v22 = [v21 count];

    if (v22)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v23 = [v4 clusterMetadata];
      v24 = [v23 subSuggestionIDsBeforePruning];

      v25 = [v24 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v32;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v32 != v27)
            {
              objc_enumerationMutation(v24);
            }

            [(PCPWorkoutCluster *)v5 addEmbeddingIdentifiers:*(*(&v31 + 1) + 8 * j)];
          }

          v26 = [v24 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v26);
      }
    }

    [(PCPWorkoutCluster *)self mapPhenotypeData:v4 toCluster:v5];
  }

  else
  {
    v5 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)mapPhenotypeData:(id)a3 toCluster:(id)a4
{
  v23 = a3;
  v6 = a4;
  if (v23)
  {
    v7 = [v23 clusterMetadata];

    if (v7)
    {
      v8 = objc_alloc_init(PCPClusterPhenotype);
      v9 = [v23 activityType];
      [(PCPClusterPhenotype *)v8 setActivityType:v9];

      v10 = [v23 placeName];
      [(PCPClusterPhenotype *)v8 setPlaceName:v10];

      v11 = [v23 placeType];
      v12 = @"PlaceType_Unknown";
      switch(v11)
      {
        case 0:
          break;
        case 1:
          v12 = @"AreaOfInterest";
          break;
        case 2:
          v12 = @"PointOfInterest";
          break;
        case 3:
          v12 = @"Address";
          break;
        case 4:
          v12 = @"Country";
          break;
        case 5:
          v12 = @"AdministrativeArea";
          break;
        case 6:
          v12 = @"SubAdministrativeArea";
          break;
        case 7:
          v12 = @"Locality";
          break;
        case 8:
          v12 = @"TimeZone";
          break;
        case 9:
          v12 = @"SubLocality";
          break;
        case 10:
          v12 = @"Ocean";
          break;
        case 11:
          v12 = @"InlandWater";
          break;
        case 12:
          v12 = @"Island";
          break;
        case 13:
          v12 = @"Street";
          break;
        case 14:
          v12 = @"Admin";
          break;
        case 15:
          v12 = @"Postal";
          break;
        case 16:
          v12 = @"Intersection";
          break;
        case 17:
          v12 = @"Building";
          break;
        case 18:
          v12 = @"Continent";
          break;
        case 19:
          v12 = @"Region";
          break;
        case 20:
          v12 = @"Division";
          break;
        default:
          if (v11 == 1000)
          {
            v12 = @"Undefined";
          }

          else
          {
            v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v11];
          }

          break;
      }

      [(PCPClusterPhenotype *)v8 setPlaceType:v12];

      v13 = [v23 location];
      [(PCPClusterPhenotype *)v8 setPlaceLocation:v13];

      v14 = [v23 poiCategory];
      v15 = [v14 length];

      if (v15)
      {
        v16 = [v23 poiCategory];
        [(PCPClusterPhenotype *)v8 setPlaceType:v16];
      }

      if ([v23 placeUserType])
      {
        v17 = [v23 placeUserType];
        if (v17 >= 5)
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v17];
        }

        else
        {
          v18 = off_1E83B8928[v17];
        }

        [(PCPClusterPhenotype *)v8 setPlaceType:v18];
      }

      [v23 timeOfDayCircularStd];
      [(PCPClusterPhenotype *)v8 setTimeOfDayCircularStd:?];
      [v23 latLongCircularStd];
      [(PCPClusterPhenotype *)v8 setLatLongCircularStd:?];
      v19 = [v23 clusterMetadata];
      v20 = [v19 phenotype];
      [(PCPWorkoutCluster *)self mapTimeProperties:v20 toPhenotype:v8];

      if ([(PCPClusterPhenotype *)v8 hasActivityType]|| [(PCPClusterPhenotype *)v8 hasPlaceName]|| [(PCPClusterPhenotype *)v8 hasPlaceType]|| [(PCPClusterPhenotype *)v8 hasPlaceLocation]|| [(PCPClusterPhenotype *)v8 hasDayOfWeekCos]|| [(PCPClusterPhenotype *)v8 hasDayOfWeekSin]|| [(PCPClusterPhenotype *)v8 hasIsWeekend]|| [(PCPClusterPhenotype *)v8 hasTimeOfDayCos]|| [(PCPClusterPhenotype *)v8 hasTimeOfDaySin]|| [(PCPClusterPhenotype *)v8 hasWeekOfYear]|| [(PCPClusterPhenotype *)v8 hasNormalizedDuration]|| ([(PCPClusterPhenotype *)v8 timeOfDayCircularStd], v21 != 0.0) || ([(PCPClusterPhenotype *)v8 latLongCircularStd], v22 != 0.0))
      {
        [v6 setClusterPhenotype:v8];
      }
    }
  }
}

- (void)mapTimeProperties:(id)a3 toPhenotype:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = [v13 objectForKeyedSubscript:@"timeOfDayCos"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 doubleValue];
    [v5 setTimeOfDayCos:?];
    [v5 setHasTimeOfDayCos:1];
  }

  v7 = [v13 objectForKeyedSubscript:@"timeOfDaySin"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 doubleValue];
    [v5 setTimeOfDaySin:?];
    [v5 setHasTimeOfDaySin:1];
  }

  v8 = [v13 objectForKeyedSubscript:@"dayOfWeekCos"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 doubleValue];
    [v5 setDayOfWeekCos:?];
    [v5 setHasDayOfWeekCos:1];
  }

  v9 = [v13 objectForKeyedSubscript:@"dayOfWeekSin"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 doubleValue];
    [v5 setDayOfWeekSin:?];
    [v5 setHasDayOfWeekSin:1];
  }

  v10 = [v13 objectForKeyedSubscript:@"normalizedDuration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 doubleValue];
    [v5 setNormalizedDuration:?];
    [v5 setHasNormalizedDuration:1];
  }

  v11 = [v13 objectForKeyedSubscript:@"weekOfYear"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setWeekOfYear:{objc_msgSend(v11, "unsignedIntValue")}];
    [v5 setHasWeekOfYear:1];
  }

  v12 = [v13 objectForKeyedSubscript:@"isWeekend"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v5 setIsWeekend:{objc_msgSend(v12, "BOOLValue")}];
    [v5 setHasIsWeekend:1];
  }
}

@end