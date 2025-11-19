@interface WFDateFormatVariableAggrandizement
- (BOOL)includesTimeForISO8601;
- (NSString)customDateFormat;
- (NSString)dateStyle;
- (NSString)relativeDateStyle;
- (NSString)timeStyle;
- (id)processedContentClasses:(id)a3;
- (void)applyToContentCollection:(id)a3 completionHandler:(id)a4;
@end

@implementation WFDateFormatVariableAggrandizement

- (void)applyToContentCollection:(id)a3 completionHandler:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__WFDateFormatVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke;
  v4[3] = &unk_1E837D860;
  v4[4] = self;
  [a3 transformItemsUsingBlock:v4 completionHandler:a4];
}

void __81__WFDateFormatVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__WFDateFormatVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke_2;
  v8[3] = &unk_1E837D838;
  v8[4] = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  v7 = a2;
  [v7 getObjectRepresentation:v8 forClass:objc_opt_class()];
}

void __81__WFDateFormatVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = a2;
  v6 = a4;
  v7 = [v17 date];
  if (v7)
  {
    v8 = v7;
LABEL_4:
    v10 = [*(a1 + 32) dateStyle];
    v11 = [*(a1 + 32) timeStyle];
    v12 = [*(a1 + 32) relativeDateStyle];
    v13 = [*(a1 + 32) customDateFormat];
    v14 = [*(a1 + 32) includesTimeForISO8601];
    v15 = [v17 timeZone];
    v16 = [v8 wf_formattedStringWithDateStyle:v10 timeStyle:v11 relativeDateStyle:v12 customDateFormat:v13 includeTimeForISO8601:v14 timeZone:v15 locale:0];

    (*(*(a1 + 40) + 16))();
    goto LABEL_5;
  }

  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v9 dateFromComponents:v17];

  if (v8)
  {
    goto LABEL_4;
  }

  (*(*(a1 + 40) + 16))();
LABEL_5:
}

- (id)processedContentClasses:(id)a3
{
  v3 = MEMORY[0x1E695DFB8];
  v4 = objc_opt_class();

  return [v3 orderedSetWithObject:v4];
}

- (BOOL)includesTimeForISO8601
{
  v2 = [(WFVariableAggrandizement *)self dictionary];
  v3 = [v2 objectForKey:@"WFISO8601IncludeTime"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSString)customDateFormat
{
  v2 = [(WFVariableAggrandizement *)self dictionary];
  v3 = [v2 objectForKey:@"WFDateFormat"];

  return v3;
}

- (NSString)relativeDateStyle
{
  v2 = [(WFVariableAggrandizement *)self dictionary];
  v3 = [v2 objectForKey:@"WFRelativeDateFormatStyle"];

  return v3;
}

- (NSString)timeStyle
{
  v2 = [(WFVariableAggrandizement *)self dictionary];
  v3 = [v2 objectForKey:@"WFTimeFormatStyle"];

  return v3;
}

- (NSString)dateStyle
{
  v2 = [(WFVariableAggrandizement *)self dictionary];
  v3 = [v2 objectForKey:@"WFDateFormatStyle"];

  return v3;
}

@end