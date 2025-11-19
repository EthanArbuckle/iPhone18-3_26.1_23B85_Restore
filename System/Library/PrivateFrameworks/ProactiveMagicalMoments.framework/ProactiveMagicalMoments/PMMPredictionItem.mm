@interface PMMPredictionItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPredictionItem:(id)a3;
- (PMMPredictionItem)initWithBundleId:(id)a3 predictionSource:(unint64_t)a4 reason:(int64_t)a5 reasonMetadata:(id)a6 anchorType:(int64_t)a7 confidence:(double)a8;
- (id)description;
- (unint64_t)hash;
@end

@implementation PMMPredictionItem

- (PMMPredictionItem)initWithBundleId:(id)a3 predictionSource:(unint64_t)a4 reason:(int64_t)a5 reasonMetadata:(id)a6 anchorType:(int64_t)a7 confidence:(double)a8
{
  v15 = a3;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = PMMPredictionItem;
  v17 = [(PMMPredictionItem *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_bundleId, a3);
    v18->_predictionSource = a4;
    v18->_reason = a5;
    objc_storeStrong(&v18->_reasonMetadata, a6);
    v18->_anchorType = a7;
    v18->_confidence = a8;
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PMMPredictionItem *)self isEqualToPredictionItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToPredictionItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_predictionSource != *(v4 + 1) || self->_confidence != *(v4 + 6))
  {
    goto LABEL_3;
  }

  v8 = self->_bundleId;
  v9 = v8;
  if (v8 == v5[1])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
LABEL_3:
      v6 = 0;
      goto LABEL_4;
    }
  }

  v11 = self->_reasonMetadata;
  v12 = v11;
  if (v11 == v5[4])
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSDictionary *)v11 isEqual:?];
  }

LABEL_4:
  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  v4 = self->_predictionSource - v3 + 32 * v3;
  return self->_reason - v4 + 32 * v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  bundleId = self->_bundleId;
  v5 = [PMMTypes predictionSourceToString:self->_predictionSource];
  reason = self->_reason;
  v7 = [v3 stringWithFormat:@"BundleId: %@\nPredictionSource: %@\nConfidence: %lf\nReason: %ld\nAnchorType: %ld", bundleId, v5, *&self->_confidence, reason, self->_anchorType];

  return v7;
}

@end