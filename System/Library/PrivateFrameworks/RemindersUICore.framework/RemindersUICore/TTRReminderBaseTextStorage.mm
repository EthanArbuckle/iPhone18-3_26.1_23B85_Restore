@interface TTRReminderBaseTextStorage
- (TTRReminderBaseTextStorage)init;
- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)string;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string;
- (void)setAttributes:(id)attributes range:(_NSRange)range;
@end

@implementation TTRReminderBaseTextStorage

- (TTRReminderBaseTextStorage)init
{
  v8.receiver = self;
  v8.super_class = TTRReminderBaseTextStorage;
  v2 = [(TTRReminderBaseTextStorage *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D445B8]);
    v4 = objc_alloc_init(MEMORY[0x277CCAB48]);
    v5 = [v3 initWithBackingStore:v4];
    backingStore = v2->_backingStore;
    v2->_backingStore = v5;

    [(REMCRMutableAttributedString *)v2->_backingStore setEditObserver:v2];
  }

  return v2;
}

- (id)string
{
  backingStore = [(TTRReminderBaseTextStorage *)self backingStore];
  string = [backingStore string];

  return string;
}

- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  backingStore = [(TTRReminderBaseTextStorage *)self backingStore];
  v7 = [backingStore attributesAtIndex:index effectiveRange:range];

  return v7;
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  backingStore = [(TTRReminderBaseTextStorage *)self backingStore];
  [backingStore replaceCharactersInRange:location withString:{length, stringCopy}];
}

- (void)setAttributes:(id)attributes range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attributesCopy = attributes;
  backingStore = [(TTRReminderBaseTextStorage *)self backingStore];
  [backingStore setAttributes:attributesCopy range:{location, length}];
}

@end