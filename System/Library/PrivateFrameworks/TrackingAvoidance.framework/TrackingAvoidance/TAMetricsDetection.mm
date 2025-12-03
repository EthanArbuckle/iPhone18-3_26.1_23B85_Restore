@interface TAMetricsDetection
+ (id)convertTADetectionTypeToString:(unint64_t)string;
- (BOOL)isEqual:(id)equal;
- (TAMetricsDetection)initWithCoder:(id)coder;
- (TAMetricsDetection)initWithDetectionType:(unint64_t)type visitDetectionMetrics:(id)metrics generalDetectionMetrics:(id)detectionMetrics singleVisitDetectionMetrics:(id)visitDetectionMetrics latestAdvertisement:(id)advertisement;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TAMetricsDetection

- (TAMetricsDetection)initWithDetectionType:(unint64_t)type visitDetectionMetrics:(id)metrics generalDetectionMetrics:(id)detectionMetrics singleVisitDetectionMetrics:(id)visitDetectionMetrics latestAdvertisement:(id)advertisement
{
  metricsCopy = metrics;
  detectionMetricsCopy = detectionMetrics;
  visitDetectionMetricsCopy = visitDetectionMetrics;
  advertisementCopy = advertisement;
  v21.receiver = self;
  v21.super_class = TAMetricsDetection;
  v17 = [(TAMetricsDetection *)&v21 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_17;
  }

  v17->_detectionType = type;
  objc_storeStrong(&v17->_latestAdvertisement, advertisement);
  if (metricsCopy)
  {
    objc_storeStrong(&v18->_visitDetectionMetrics, metrics);
  }

  if (detectionMetricsCopy)
  {
    objc_storeStrong(&v18->_generalDetectionMetrics, detectionMetrics);
  }

  if (visitDetectionMetricsCopy)
  {
    objc_storeStrong(&v18->_singleVisitDetectionMetrics, visitDetectionMetrics);
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

+ (id)convertTADetectionTypeToString:(unint64_t)string
{
  if (string - 1 > 0xF)
  {
    return @"Unknown";
  }

  else
  {
    return off_279DD1988[string - 1];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      detectionType = [(TAMetricsDetection *)self detectionType];
      if (detectionType != [(TAMetricsDetection *)v6 detectionType])
      {
        v11 = 0;
LABEL_28:

        goto LABEL_29;
      }

      visitDetectionMetrics = [(TAMetricsDetection *)self visitDetectionMetrics];
      visitDetectionMetrics2 = [(TAMetricsDetection *)v6 visitDetectionMetrics];
      if (visitDetectionMetrics != visitDetectionMetrics2)
      {
        visitDetectionMetrics3 = [(TAMetricsDetection *)self visitDetectionMetrics];
        [(TAMetricsDetection *)v6 visitDetectionMetrics];
        v34 = v33 = visitDetectionMetrics3;
        if (![visitDetectionMetrics3 isEqual:?])
        {
          v11 = 0;
          goto LABEL_26;
        }
      }

      generalDetectionMetrics = [(TAMetricsDetection *)self generalDetectionMetrics];
      generalDetectionMetrics2 = [(TAMetricsDetection *)v6 generalDetectionMetrics];
      if (generalDetectionMetrics != generalDetectionMetrics2)
      {
        generalDetectionMetrics3 = [(TAMetricsDetection *)self generalDetectionMetrics];
        generalDetectionMetrics4 = [(TAMetricsDetection *)v6 generalDetectionMetrics];
        if (![generalDetectionMetrics3 isEqual:?])
        {
          v11 = 0;
LABEL_24:

LABEL_25:
          if (visitDetectionMetrics == visitDetectionMetrics2)
          {
LABEL_27:

            goto LABEL_28;
          }

LABEL_26:

          goto LABEL_27;
        }
      }

      singleVisitDetectionMetrics = [(TAMetricsDetection *)self singleVisitDetectionMetrics];
      singleVisitDetectionMetrics2 = [(TAMetricsDetection *)v6 singleVisitDetectionMetrics];
      v32 = singleVisitDetectionMetrics;
      v16 = singleVisitDetectionMetrics == singleVisitDetectionMetrics2;
      v17 = singleVisitDetectionMetrics2;
      if (v16)
      {
        v29 = generalDetectionMetrics3;
        v30 = generalDetectionMetrics2;
      }

      else
      {
        singleVisitDetectionMetrics3 = [(TAMetricsDetection *)self singleVisitDetectionMetrics];
        singleVisitDetectionMetrics4 = [(TAMetricsDetection *)v6 singleVisitDetectionMetrics];
        v27 = singleVisitDetectionMetrics3;
        if (![singleVisitDetectionMetrics3 isEqual:?])
        {
          v11 = 0;
          v24 = v32;
          goto LABEL_22;
        }

        v29 = generalDetectionMetrics3;
        v30 = generalDetectionMetrics2;
      }

      v28 = v17;
      latestAdvertisement = [(TAMetricsDetection *)self latestAdvertisement];
      latestAdvertisement2 = [(TAMetricsDetection *)v6 latestAdvertisement];
      v21 = latestAdvertisement2;
      if (latestAdvertisement == latestAdvertisement2)
      {

        v11 = 1;
      }

      else
      {
        latestAdvertisement3 = [(TAMetricsDetection *)self latestAdvertisement];
        latestAdvertisement4 = [(TAMetricsDetection *)v6 latestAdvertisement];
        v11 = [latestAdvertisement3 isEqual:latestAdvertisement4];
      }

      v24 = v32;
      v17 = v28;
      generalDetectionMetrics3 = v29;
      generalDetectionMetrics2 = v30;
      if (v32 == v28)
      {
LABEL_23:

        if (generalDetectionMetrics == generalDetectionMetrics2)
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

- (TAMetricsDetection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"MType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MVisitMetrics"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MGeneralMetrics"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSingleMetrics"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MLatestAdvert"];

  v10 = [(TAMetricsDetection *)self initWithDetectionType:v5 visitDetectionMetrics:v6 generalDetectionMetrics:v7 singleVisitDetectionMetrics:v8 latestAdvertisement:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  detectionType = self->_detectionType;
  coderCopy = coder;
  [coderCopy encodeInteger:detectionType forKey:@"MType"];
  [coderCopy encodeObject:self->_visitDetectionMetrics forKey:@"MVisitMetrics"];
  [coderCopy encodeObject:self->_generalDetectionMetrics forKey:@"MGeneralMetrics"];
  [coderCopy encodeObject:self->_singleVisitDetectionMetrics forKey:@"MSingleMetrics"];
  [coderCopy encodeObject:self->_latestAdvertisement forKey:@"MLatestAdvert"];
}

@end