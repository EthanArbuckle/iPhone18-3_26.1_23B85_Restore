@interface SCROBrailleUIListItem
- (NSString)brailleLabel;
- (SCROBrailleUIListItem)initWithIdentifier:(id)a3 brailleLabel:(id)a4 isInline:(BOOL)a5 shouldTruncateAtPanBoundary:(BOOL)a6;
- (SCROBrailleUIListItem)initWithIdentifier:(id)a3 label:(id)a4 isInline:(BOOL)a5 shouldPreserveCase:(BOOL)a6;
- (SCROBrailleUIListItem)initWithIdentifier:(id)a3 label:(id)a4 prepopulatedBraille:(id)a5 shouldBulkSelect:(BOOL)a6;
@end

@implementation SCROBrailleUIListItem

- (SCROBrailleUIListItem)initWithIdentifier:(id)a3 label:(id)a4 isInline:(BOOL)a5 shouldPreserveCase:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = SCROBrailleUIListItem;
  v13 = [(SCROBrailleUIListItem *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a3);
    objc_storeStrong(&v14->_label, a4);
    objc_storeStrong(&v14->_manualCaption, v14->_label);
    objc_storeStrong(&v14->_speakableLabel, a4);
    v14->_isInline = a5;
    v14->_shouldPreserveCase = a6;
  }

  return v14;
}

- (SCROBrailleUIListItem)initWithIdentifier:(id)a3 brailleLabel:(id)a4 isInline:(BOOL)a5 shouldTruncateAtPanBoundary:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = SCROBrailleUIListItem;
  v13 = [(SCROBrailleUIListItem *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a3);
    objc_storeStrong(&v14->_brailleLabelCache, a4);
    v14->_isInline = a5;
    v14->_shouldTruncateAtPanBoundary = a6;
  }

  return v14;
}

- (SCROBrailleUIListItem)initWithIdentifier:(id)a3 label:(id)a4 prepopulatedBraille:(id)a5 shouldBulkSelect:(BOOL)a6
{
  v11 = a5;
  v12 = [(SCROBrailleUIListItem *)self initWithIdentifier:a3 label:a4 isInline:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_prepopulatedBraille, a5);
    v13->_shouldBulkSelectPrepopulatedBraille = a6;
  }

  return v13;
}

- (NSString)brailleLabel
{
  v3 = [(SCROBrailleUIListItem *)self brailleLabelCache];

  if (!v3)
  {
    v4 = +[SCROBrailleTranslationManager sharedManager];
    v5 = [(SCROBrailleUIListItem *)self shouldPreserveCase];
    label = self->_label;
    if (!v5)
    {
      label = [(NSString *)self->_label localizedLowercaseString];
    }

    v7 = [v4 printBrailleForText:label language:0 mode:1 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{0, 0}];
    [(SCROBrailleUIListItem *)self setBrailleLabelCache:v7];

    if (!v5)
    {
    }
  }

  return [(SCROBrailleUIListItem *)self brailleLabelCache];
}

@end