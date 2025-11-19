@interface TAMetricsDetection
+ (id)convertTADetectionTypeToString:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (TAMetricsDetection)initWithCoder:(id)a3;
- (TAMetricsDetection)initWithDetectionType:(unint64_t)a3 visitDetectionMetrics:(id)a4 generalDetectionMetrics:(id)a5 singleVisitDetectionMetrics:(id)a6 latestAdvertisement:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TAMetricsDetection

- (TAMetricsDetection)initWithDetectionType:(unint64_t)a3 visitDetectionMetrics:(id)a4 generalDetectionMetrics:(id)a5 singleVisitDetectionMetrics:(id)a6 latestAdvertisement:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = TAMetricsDetection;
  v17 = [(TAMetricsDetection *)&v21 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_17;
  }

  v17->_detectionType = a3;
  objc_storeStrong(&v17->_latestAdvertisement, a7);
  if (v13)
  {
    objc_storeStrong(&v18->_visitDetectionMetrics, a4);
  }

  if (v14)
  {
    objc_storeStrong(&v18->_generalDetectionMetrics, a5);
  }

  if (v15)
  {
    objc_storeStrong(&v18->_singleVisitDetectionMetrics, a6);
  }

  detectionType = v18->_detectionType;
  if (detectionType <= 0x10)
  {
    if (((1 << detectionType) & 0xF382) != 0)
    {
      detectionType = v18->_generalDetectionMetrics;
    }

    else
    {
      if (((1 << detectionType) & 0xC48) != 0)
      {
        if (v18->_singleVisitDetectionMetrics)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      if (((1 << detectionType) & 0x10034) != 0)
      {
        if (!v18->_visitDetectionMetrics)
        {
          goto LABEL_16;
        }

        goto LABEL_17;
      }
    }
  }

  if (!detectionType)
  {
LABEL_16:

    v18 = 0;
  }

LABEL_17:

  return v18;
}

+ (id)convertTADetectionTypeToString:(unint64_t)a3
{
  if (a3 - 1 > 0xF)
  {
    return @"Unknown";
  }

  else
  {
    return off_279DD1988[a3 - 1];
  }
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(TAMetricsDetection *)self detectionType];
      if (v7 != [(TAMetricsDetection *)v6 detectionType])
      {
        v11 = 0;
LABEL_28:

        goto LABEL_29;
      }

      v8 = [(TAMetricsDetection *)self visitDetectionMetrics];
      v9 = [(TAMetricsDetection *)v6 visitDetectionMetrics];
      if (v8 != v9)
      {
        v10 = [(TAMetricsDetection *)self visitDetectionMetrics];
        [(TAMetricsDetection *)v6 visitDetectionMetrics];
        v34 = v33 = v10;
        if (![v10 isEqual:?])
        {
          v11 = 0;
          goto LABEL_26;
        }
      }

      v12 = [(TAMetricsDetection *)self generalDetectionMetrics];
      v13 = [(TAMetricsDetection *)v6 generalDetectionMetrics];
      if (v12 != v13)
      {
        v3 = [(TAMetricsDetection *)self generalDetectionMetrics];
        v31 = [(TAMetricsDetection *)v6 generalDetectionMetrics];
        if (![v3 isEqual:?])
        {
          v11 = 0;
LABEL_24:

LABEL_25:
          if (v8 == v9)
          {
LABEL_27:

            goto LABEL_28;
          }

LABEL_26:

          goto LABEL_27;
        }
      }

      v14 = [(TAMetricsDetection *)self singleVisitDetectionMetrics];
      v15 = [(TAMetricsDetection *)v6 singleVisitDetectionMetrics];
      v32 = v14;
      v16 = v14 == v15;
      v17 = v15;
      if (v16)
      {
        v29 = v3;
        v30 = v13;
      }

      else
      {
        v18 = [(TAMetricsDetection *)self singleVisitDetectionMetrics];
        v26 = [(TAMetricsDetection *)v6 singleVisitDetectionMetrics];
        v27 = v18;
        if (![v18 isEqual:?])
        {
          v11 = 0;
          v24 = v32;
          goto LABEL_22;
        }

        v29 = v3;
        v30 = v13;
      }

      v28 = v17;
      v19 = [(TAMetricsDetection *)self latestAdvertisement];
      v20 = [(TAMetricsDetection *)v6 latestAdvertisement];
      v21 = v20;
      if (v19 == v20)
      {

        v11 = 1;
      }

      else
      {
        v22 = [(TAMetricsDetection *)self latestAdvertisement];
        v23 = [(TAMetricsDetection *)v6 latestAdvertisement];
        v11 = [v22 isEqual:v23];
      }

      v24 = v32;
      v17 = v28;
      v3 = v29;
      v13 = v30;
      if (v32 == v28)
      {
LABEL_23:

        if (v12 == v13)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_22:

      goto LABEL_23;
    }

    v11 = 0;
  }

LABEL_29:

  return v11;
}

- (TAMetricsDetection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"MType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MVisitMetrics"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MGeneralMetrics"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSingleMetrics"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MLatestAdvert"];

  v10 = [(TAMetricsDetection *)self initWithDetectionType:v5 visitDetectionMetrics:v6 generalDetectionMetrics:v7 singleVisitDetectionMetrics:v8 latestAdvertisement:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  detectionType = self->_detectionType;
  v5 = a3;
  [v5 encodeInteger:detectionType forKey:@"MType"];
  [v5 encodeObject:self->_visitDetectionMetrics forKey:@"MVisitMetrics"];
  [v5 encodeObject:self->_generalDetectionMetrics forKey:@"MGeneralMetrics"];
  [v5 encodeObject:self->_singleVisitDetectionMetrics forKey:@"MSingleMetrics"];
  [v5 encodeObject:self->_latestAdvertisement forKey:@"MLatestAdvert"];
}

@end