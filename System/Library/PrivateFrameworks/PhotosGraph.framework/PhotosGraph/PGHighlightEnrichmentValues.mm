@interface PGHighlightEnrichmentValues
- (NSString)smartDescriptionMixed;
- (NSString)smartDescriptionPrivate;
- (NSString)smartDescriptionShared;
- (NSString)verboseSmartDescriptionMixed;
- (NSString)verboseSmartDescriptionPrivate;
- (NSString)verboseSmartDescriptionShared;
- (PGHighlightEnrichmentValues)initWithHighlight:(id)highlight;
- (id)description;
- (void)setSmartDescriptionMixed:(id)mixed;
- (void)setSmartDescriptionPrivate:(id)private;
- (void)setSmartDescriptionShared:(id)shared;
- (void)setVerboseSmartDescriptionMixed:(id)mixed;
- (void)setVerboseSmartDescriptionPrivate:(id)private;
- (void)setVerboseSmartDescriptionShared:(id)shared;
@end

@implementation PGHighlightEnrichmentValues

- (void)setVerboseSmartDescriptionMixed:(id)mixed
{
  mixedCopy = mixed;
  if ([mixedCopy length])
  {
    v4 = [mixedCopy copy];
  }

  else
  {
    v4 = @"\t";
  }

  verboseSmartDescriptionMixed = self->_verboseSmartDescriptionMixed;
  self->_verboseSmartDescriptionMixed = v4;
}

- (void)setSmartDescriptionMixed:(id)mixed
{
  mixedCopy = mixed;
  if ([mixedCopy length])
  {
    v4 = [mixedCopy copy];
  }

  else
  {
    v4 = @"\t";
  }

  smartDescriptionMixed = self->_smartDescriptionMixed;
  self->_smartDescriptionMixed = v4;
}

- (void)setVerboseSmartDescriptionShared:(id)shared
{
  sharedCopy = shared;
  if ([sharedCopy length])
  {
    v4 = [sharedCopy copy];
  }

  else
  {
    v4 = @"\t";
  }

  verboseSmartDescriptionShared = self->_verboseSmartDescriptionShared;
  self->_verboseSmartDescriptionShared = v4;
}

- (void)setSmartDescriptionShared:(id)shared
{
  sharedCopy = shared;
  if ([sharedCopy length])
  {
    v4 = [sharedCopy copy];
  }

  else
  {
    v4 = @"\t";
  }

  smartDescriptionShared = self->_smartDescriptionShared;
  self->_smartDescriptionShared = v4;
}

- (void)setVerboseSmartDescriptionPrivate:(id)private
{
  privateCopy = private;
  if ([privateCopy length])
  {
    v4 = [privateCopy copy];
  }

  else
  {
    v4 = @"\t";
  }

  verboseSmartDescriptionPrivate = self->_verboseSmartDescriptionPrivate;
  self->_verboseSmartDescriptionPrivate = v4;
}

- (void)setSmartDescriptionPrivate:(id)private
{
  privateCopy = private;
  if ([privateCopy length])
  {
    v4 = [privateCopy copy];
  }

  else
  {
    v4 = @"\t";
  }

  smartDescriptionPrivate = self->_smartDescriptionPrivate;
  self->_smartDescriptionPrivate = v4;
}

- (NSString)verboseSmartDescriptionMixed
{
  if (self->_verboseSmartDescriptionMixed == @"\t")
  {
    return 0;
  }

  else
  {
    return self->_verboseSmartDescriptionMixed;
  }
}

- (NSString)smartDescriptionMixed
{
  if (self->_smartDescriptionMixed == @"\t")
  {
    return 0;
  }

  else
  {
    return self->_smartDescriptionMixed;
  }
}

- (NSString)verboseSmartDescriptionShared
{
  if (self->_verboseSmartDescriptionShared == @"\t")
  {
    return 0;
  }

  else
  {
    return self->_verboseSmartDescriptionShared;
  }
}

- (NSString)smartDescriptionShared
{
  if (self->_smartDescriptionShared == @"\t")
  {
    return 0;
  }

  else
  {
    return self->_smartDescriptionShared;
  }
}

- (NSString)verboseSmartDescriptionPrivate
{
  if (self->_verboseSmartDescriptionPrivate == @"\t")
  {
    return 0;
  }

  else
  {
    return self->_verboseSmartDescriptionPrivate;
  }
}

- (NSString)smartDescriptionPrivate
{
  if (self->_smartDescriptionPrivate == @"\t")
  {
    return 0;
  }

  else
  {
    return self->_smartDescriptionPrivate;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = PGHighlightEnrichmentValues;
  v4 = [(PGHighlightEnrichmentValues *)&v10 description];
  if ([(PGHighlightEnrichmentValues *)self hasChanges])
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  enrichmentState = self->_enrichmentState;
  v7 = PHShortDescriptionForPhotosHighlightEnrichmentState();
  v8 = [v3 stringWithFormat:@"%@ - hasChanges: %@, enrichmentState: %@", v4, v5, v7];

  return v8;
}

- (PGHighlightEnrichmentValues)initWithHighlight:(id)highlight
{
  highlightCopy = highlight;
  v9.receiver = self;
  v9.super_class = PGHighlightEnrichmentValues;
  v6 = [(PGHighlightEnrichmentValues *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_highlight, highlight);
    v7->_mood = -1;
    v7->_promotionScore = -1.0;
    v7->_enrichmentState = -1;
  }

  return v7;
}

@end