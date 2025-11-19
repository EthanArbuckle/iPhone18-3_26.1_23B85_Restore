@interface PUAdjustmentInfo
- (NSString)localizedActionName;
- (double)normalizedCurrentLevel;
- (double)normalizedDefaultLevel;
- (id)copy;
- (id)description;
- (void)setCurrentLevel:(double)a3;
- (void)setLastAdjustedLevel:(double)a3;
@end

@implementation PUAdjustmentInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PUAdjustmentInfo *)self localizedName];
  v7 = [(PUAdjustmentInfo *)self enabled];
  v8 = [(PUAdjustmentInfo *)self localizedSectionName];
  v9 = [(PUAdjustmentInfo *)self adjustmentKey];
  v10 = [(PUAdjustmentInfo *)self settingKey];
  v11 = [(PUAdjustmentInfo *)self attributeKey];
  [(PUAdjustmentInfo *)self minimumLevel];
  v13 = v12;
  [(PUAdjustmentInfo *)self maximumLevel];
  v15 = v14;
  [(PUAdjustmentInfo *)self defaultLevel];
  v17 = v16;
  [(PUAdjustmentInfo *)self identityLevel];
  v19 = v18;
  [(PUAdjustmentInfo *)self lastAdjustedLevel];
  v21 = v20;
  [(PUAdjustmentInfo *)self currentLevel];
  v23 = [v3 stringWithFormat:@"<%@: %p, name=%@, enabled:%d, sectionName:%@, adjustmentKey=%@, settingsKey:%@, attributeKey:%@, min=%f, max=%f, default=%f, identity=%f, lastAdjusted=%f, current=%f", v5, self, v6, v7, v8, v9, v10, v11, v13, v15, v17, v19, v21, v22];

  return v23;
}

- (NSString)localizedActionName
{
  localizedActionName = self->_localizedActionName;
  if (localizedActionName)
  {
    v3 = localizedActionName;
  }

  else
  {
    v5 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENT_CHANGE_TITLE");
    v7 = [(PUAdjustmentInfo *)self localizedName];
    v3 = PULocalizedStringWithValidatedFormat(v5, @"%@");
  }

  return v3;
}

- (void)setLastAdjustedLevel:(double)a3
{
  if (self->_lastAdjustedLevel != a3)
  {
    self->_lastAdjustedLevel = a3;
  }
}

- (void)setCurrentLevel:(double)a3
{
  if (self->_currentLevel != a3)
  {
    [(PUAdjustmentInfo *)self setLastAdjustedLevel:?];
    self->_currentLevel = a3;
  }
}

- (double)normalizedDefaultLevel
{
  [(PUAdjustmentInfo *)self maximumLevel];
  v4 = v3;
  [(PUAdjustmentInfo *)self minimumLevel];
  if (v4 <= v5)
  {
    return 2.22507386e-308;
  }

  [(PUAdjustmentInfo *)self defaultLevel];
  v7 = v6;
  [(PUAdjustmentInfo *)self minimumLevel];
  v9 = v7 - v8;
  [(PUAdjustmentInfo *)self maximumLevel];
  v11 = v10;
  [(PUAdjustmentInfo *)self minimumLevel];
  return v9 / (v11 - v12);
}

- (double)normalizedCurrentLevel
{
  [(PUAdjustmentInfo *)self maximumLevel];
  v4 = v3;
  [(PUAdjustmentInfo *)self minimumLevel];
  if (v4 <= v5)
  {
    return 2.22507386e-308;
  }

  [(PUAdjustmentInfo *)self currentLevel];
  v7 = v6;
  [(PUAdjustmentInfo *)self minimumLevel];
  v9 = v7 - v8;
  [(PUAdjustmentInfo *)self maximumLevel];
  v11 = v10;
  [(PUAdjustmentInfo *)self minimumLevel];
  return v9 / (v11 - v12);
}

- (id)copy
{
  result = [(PUAdjustmentInfo *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

@end