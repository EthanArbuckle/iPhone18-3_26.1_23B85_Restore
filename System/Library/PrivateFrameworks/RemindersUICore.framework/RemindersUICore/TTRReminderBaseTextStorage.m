@interface TTRReminderBaseTextStorage
- (TTRReminderBaseTextStorage)init;
- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)string;
- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4;
- (void)setAttributes:(id)a3 range:(_NSRange)a4;
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
  v2 = [(TTRReminderBaseTextStorage *)self backingStore];
  v3 = [v2 string];

  return v3;
}

- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = [(TTRReminderBaseTextStorage *)self backingStore];
  v7 = [v6 attributesAtIndex:a3 effectiveRange:a4];

  return v7;
}

- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [(TTRReminderBaseTextStorage *)self backingStore];
  [v8 replaceCharactersInRange:location withString:{length, v7}];
}

- (void)setAttributes:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(TTRReminderBaseTextStorage *)self backingStore];
  [v8 setAttributes:v7 range:{location, length}];
}

@end