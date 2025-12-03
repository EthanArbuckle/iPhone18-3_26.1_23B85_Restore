@interface SCROBrailleUIListItem
- (NSString)brailleLabel;
- (SCROBrailleUIListItem)initWithIdentifier:(id)identifier brailleLabel:(id)label isInline:(BOOL)inline shouldTruncateAtPanBoundary:(BOOL)boundary;
- (SCROBrailleUIListItem)initWithIdentifier:(id)identifier label:(id)label isInline:(BOOL)inline shouldPreserveCase:(BOOL)case;
- (SCROBrailleUIListItem)initWithIdentifier:(id)identifier label:(id)label prepopulatedBraille:(id)braille shouldBulkSelect:(BOOL)select;
@end

@implementation SCROBrailleUIListItem

- (SCROBrailleUIListItem)initWithIdentifier:(id)identifier label:(id)label isInline:(BOOL)inline shouldPreserveCase:(BOOL)case
{
  identifierCopy = identifier;
  labelCopy = label;
  v16.receiver = self;
  v16.super_class = SCROBrailleUIListItem;
  v13 = [(SCROBrailleUIListItem *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v14->_label, label);
    objc_storeStrong(&v14->_manualCaption, v14->_label);
    objc_storeStrong(&v14->_speakableLabel, label);
    v14->_isInline = inline;
    v14->_shouldPreserveCase = case;
  }

  return v14;
}

- (SCROBrailleUIListItem)initWithIdentifier:(id)identifier brailleLabel:(id)label isInline:(BOOL)inline shouldTruncateAtPanBoundary:(BOOL)boundary
{
  identifierCopy = identifier;
  labelCopy = label;
  v16.receiver = self;
  v16.super_class = SCROBrailleUIListItem;
  v13 = [(SCROBrailleUIListItem *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v14->_brailleLabelCache, label);
    v14->_isInline = inline;
    v14->_shouldTruncateAtPanBoundary = boundary;
  }

  return v14;
}

- (SCROBrailleUIListItem)initWithIdentifier:(id)identifier label:(id)label prepopulatedBraille:(id)braille shouldBulkSelect:(BOOL)select
{
  brailleCopy = braille;
  v12 = [(SCROBrailleUIListItem *)self initWithIdentifier:identifier label:label isInline:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_prepopulatedBraille, braille);
    v13->_shouldBulkSelectPrepopulatedBraille = select;
  }

  return v13;
}

- (NSString)brailleLabel
{
  brailleLabelCache = [(SCROBrailleUIListItem *)self brailleLabelCache];

  if (!brailleLabelCache)
  {
    v4 = +[SCROBrailleTranslationManager sharedManager];
    shouldPreserveCase = [(SCROBrailleUIListItem *)self shouldPreserveCase];
    label = self->_label;
    if (!shouldPreserveCase)
    {
      label = [(NSString *)self->_label localizedLowercaseString];
    }

    v7 = [v4 printBrailleForText:label language:0 mode:1 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{0, 0}];
    [(SCROBrailleUIListItem *)self setBrailleLabelCache:v7];

    if (!shouldPreserveCase)
    {
    }
  }

  return [(SCROBrailleUIListItem *)self brailleLabelCache];
}

@end