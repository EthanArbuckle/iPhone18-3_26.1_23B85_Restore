@interface SXCalendarEventAddition
- (id)notesWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXCalendarEventAddition

- (id)notesWithValue:(id)a3 withType:(int)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = [SXFormattedText alloc];
    v7 = [(SXJSONObject *)self specificationVersion];
    v8 = [(SXJSONObject *)v6 initWithJSONObject:v5 andVersion:v7];
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  v7 = [(SXJSONObject *)self valueForLookupKey:@"notes"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [[SXFormattedText alloc] initWithText:v7];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

@end