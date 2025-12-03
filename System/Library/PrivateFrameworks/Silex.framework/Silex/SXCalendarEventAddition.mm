@interface SXCalendarEventAddition
- (id)notesWithValue:(id)value withType:(int)type;
@end

@implementation SXCalendarEventAddition

- (id)notesWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  if (valueCopy)
  {
    v6 = [SXFormattedText alloc];
    specificationVersion = [(SXJSONObject *)self specificationVersion];
    v8 = [(SXJSONObject *)v6 initWithJSONObject:valueCopy andVersion:specificationVersion];
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  specificationVersion = [(SXJSONObject *)self valueForLookupKey:@"notes"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [[SXFormattedText alloc] initWithText:specificationVersion];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

@end