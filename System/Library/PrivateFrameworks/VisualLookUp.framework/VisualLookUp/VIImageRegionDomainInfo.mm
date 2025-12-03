@interface VIImageRegionDomainInfo
- (BOOL)isEqual:(id)equal;
- (CGPoint)focalPoint;
- (VIImageRegionDomainInfo)initWithDomainKey:(id)key labelName:(id)name glyphName:(id)glyphName displayLabel:(id)label displayMessage:(id)message hasFocalPoint:(BOOL)point focalPoint:(CGPoint)focalPoint isCornerGlyph:(BOOL)self0 ocrResultsRequired:(BOOL)self1 barcodeResultsRequired:(BOOL)self2 isLowConfidence:(BOOL)self3 shouldShowDynamicGlyph:(BOOL)self4;
- (unint64_t)hash;
@end

@implementation VIImageRegionDomainInfo

- (VIImageRegionDomainInfo)initWithDomainKey:(id)key labelName:(id)name glyphName:(id)glyphName displayLabel:(id)label displayMessage:(id)message hasFocalPoint:(BOOL)point focalPoint:(CGPoint)focalPoint isCornerGlyph:(BOOL)self0 ocrResultsRequired:(BOOL)self1 barcodeResultsRequired:(BOOL)self2 isLowConfidence:(BOOL)self3 shouldShowDynamicGlyph:(BOOL)self4
{
  y = focalPoint.y;
  x = focalPoint.x;
  keyCopy = key;
  nameCopy = name;
  glyphNameCopy = glyphName;
  labelCopy = label;
  messageCopy = message;
  v39.receiver = self;
  v39.super_class = VIImageRegionDomainInfo;
  v27 = [(VIImageRegionDomainInfo *)&v39 init];
  if (v27)
  {
    v28 = [keyCopy copy];
    domainKey = v27->_domainKey;
    v27->_domainKey = v28;

    v30 = [nameCopy copy];
    labelName = v27->_labelName;
    v27->_labelName = v30;

    v32 = [glyphNameCopy copy];
    glyphName = v27->_glyphName;
    v27->_glyphName = v32;

    v34 = [labelCopy copy];
    displayLabel = v27->_displayLabel;
    v27->_displayLabel = v34;

    v36 = [messageCopy copy];
    displayMessage = v27->_displayMessage;
    v27->_displayMessage = v36;

    v27->_hasFocalPoint = point;
    v27->_focalPoint.x = x;
    v27->_focalPoint.y = y;
    v27->_isCornerGlyph = glyph;
    v27->_ocrResultsRequired = required;
    v27->_barcodeResultsRequired = resultsRequired;
    v27->_isLowConfidence = confidence;
    v27->_shouldShowDynamicGlyph = dynamicGlyph;
  }

  return v27;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    domainKey = self->_domainKey;
    domainKey = [(VIImageRegionDomainInfo *)v6 domainKey];
    if (!VIObjectIsEqual(domainKey, domainKey))
    {
      v19 = 0;
LABEL_28:

      goto LABEL_29;
    }

    labelName = self->_labelName;
    labelName = [(VIImageRegionDomainInfo *)v6 labelName];
    if (!VIObjectIsEqual(labelName, labelName))
    {
      v19 = 0;
LABEL_27:

      goto LABEL_28;
    }

    glyphName = self->_glyphName;
    glyphName = [(VIImageRegionDomainInfo *)v6 glyphName];
    if (!VIObjectIsEqual(glyphName, glyphName))
    {
      v19 = 0;
LABEL_26:

      goto LABEL_27;
    }

    displayLabel = self->_displayLabel;
    displayLabel = [(VIImageRegionDomainInfo *)v6 displayLabel];
    if (!VIObjectIsEqual(displayLabel, displayLabel))
    {
      v19 = 0;
LABEL_25:

      goto LABEL_26;
    }

    displayMessage = self->_displayMessage;
    displayMessage = [(VIImageRegionDomainInfo *)v6 displayMessage];
    if (!VIObjectIsEqual(displayMessage, displayMessage))
    {
      goto LABEL_23;
    }

    hasFocalPoint = self->_hasFocalPoint;
    if (hasFocalPoint != [(VIImageRegionDomainInfo *)v6 hasFocalPoint])
    {
      goto LABEL_23;
    }

    [(VIImageRegionDomainInfo *)v6 focalPoint];
    v19 = 0;
    if (self->_focalPoint.x != v20 || self->_focalPoint.y != v18)
    {
      goto LABEL_24;
    }

    isCornerGlyph = self->_isCornerGlyph;
    if (isCornerGlyph == [(VIImageRegionDomainInfo *)v6 isCornerGlyph]&& (ocrResultsRequired = self->_ocrResultsRequired, ocrResultsRequired == [(VIImageRegionDomainInfo *)v6 ocrResultsRequired]) && (barcodeResultsRequired = self->_barcodeResultsRequired, barcodeResultsRequired == [(VIImageRegionDomainInfo *)v6 barcodeResultsRequired]) && (isLowConfidence = self->_isLowConfidence, isLowConfidence == [(VIImageRegionDomainInfo *)v6 isLowConfidence]))
    {
      shouldShowDynamicGlyph = self->_shouldShowDynamicGlyph;
      v19 = shouldShowDynamicGlyph == [(VIImageRegionDomainInfo *)v6 shouldShowDynamicGlyph];
    }

    else
    {
LABEL_23:
      v19 = 0;
    }

LABEL_24:

    goto LABEL_25;
  }

  v19 = 1;
LABEL_29:

  return v19;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domainKey hash];
  v4 = [(NSString *)self->_labelName hash];
  v5 = [(NSString *)self->_glyphName hash];
  v6 = [(NSString *)self->_displayLabel hash];
  v7 = [(NSString *)self->_displayMessage hash];
  x = self->_focalPoint.x;
  v11.i64[0] = *&self->_focalPoint.y;
  if (x < 0.0)
  {
    x = -x;
  }

  *v8.i64 = floor(x + 0.5);
  v12 = (x - *v8.i64) * 1.84467441e19;
  *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = vnegq_f64(v13);
  v15 = vbslq_s8(v14, v9, v8);
  v16 = 2654435761u * *v15.i64;
  v17 = v16 + v12;
  if (v12 <= 0.0)
  {
    v17 = 2654435761u * *v15.i64;
  }

  v18 = v16 - fabs(v12);
  if (v12 >= 0.0)
  {
    v18 = v17;
  }

  y = -*v11.i64;
  if (*v11.i64 >= 0.0)
  {
    y = self->_focalPoint.y;
  }

  *v11.i64 = floor(y + 0.5);
  v20 = y - *v11.i64;
  *v15.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.i64[0] = vbslq_s8(v14, v15, v11).i64[0];
  v21 = v20 * 1.84467441e19;
  v22 = 2654435761u * *v11.i64;
  v23 = v22 + v21;
  if (v21 <= 0.0)
  {
    v23 = 2654435761u * *v11.i64;
  }

  v24 = v22 - fabs(v21);
  if (v21 >= 0.0)
  {
    v24 = v23;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ (2654435761 * self->_hasFocalPoint) ^ v18 ^ v24 ^ (2654435761 * self->_isCornerGlyph) ^ (2654435761 * self->_ocrResultsRequired) ^ (2654435761 * self->_barcodeResultsRequired) ^ (2654435761 * self->_isLowConfidence) ^ (2654435761 * self->_shouldShowDynamicGlyph);
}

- (CGPoint)focalPoint
{
  x = self->_focalPoint.x;
  y = self->_focalPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end