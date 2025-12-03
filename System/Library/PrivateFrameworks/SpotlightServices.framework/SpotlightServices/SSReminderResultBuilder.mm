@interface SSReminderResultBuilder
+ (id)stringWithCompletionDate:(id)date dueDate:(id)dueDate modificationDate:(id)modificationDate;
- (SSReminderResultBuilder)initWithResult:(id)result;
- (id)buildDescriptions;
- (id)buildInlineCardSection;
- (id)buildTitle;
@end

@implementation SSReminderResultBuilder

+ (id)stringWithCompletionDate:(id)date dueDate:(id)dueDate modificationDate:(id)modificationDate
{
  dateCopy = date;
  dueDateCopy = dueDate;
  modificationDateCopy = modificationDate;
  v10 = modificationDateCopy;
  if (dateCopy)
  {
    v11 = +[SSDateFormatManager dateCompletedStringFormat];
    v12 = dateCopy;
  }

  else if (dueDateCopy)
  {
    v11 = +[SSDateFormatManager dateDueStringFormat];
    v12 = dueDateCopy;
  }

  else
  {
    if (!modificationDateCopy)
    {
      v11 = 0;
      v13 = 0;
      goto LABEL_10;
    }

    v11 = +[SSDateFormatManager dateModifiedStringFormat];
    v12 = v10;
  }

  v13 = v12;
  if (v11)
  {
    v14 = +[SSDateFormatManager shortDateTimeFormatter];
    v15 = [v14 stringFromDate:v13];

    v16 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, v15];

    goto LABEL_11;
  }

LABEL_10:
  v16 = 0;
LABEL_11:

  return v16;
}

- (SSReminderResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v17.receiver = self;
  v17.super_class = SSReminderResultBuilder;
  v5 = [(SSResultBuilder *)&v17 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E30] withType:objc_opt_class()];
    [(SSReminderResultBuilder *)v5 setCompletionDate:v6];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x1E6963F98] withType:objc_opt_class()];
    [(SSReminderResultBuilder *)v5 setDueDate:v7];

    v8 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E88] withType:objc_opt_class()];
    [(SSReminderResultBuilder *)v5 setModificationDate:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x1E6964C28] withType:objc_opt_class()];
    [(SSReminderResultBuilder *)v5 setReminder:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E28] withType:objc_opt_class()];
    [(SSReminderResultBuilder *)v5 setNote:v10];

    v11 = [resultCopy valueForAttribute:*MEMORY[0x1E6964410] withType:objc_opt_class()];
    [(SSReminderResultBuilder *)v5 setHashtags:v11];

    v12 = [resultCopy valueForAttribute:*MEMORY[0x1E69644B0] withType:objc_opt_class()];
    -[SSReminderResultBuilder setIsAllDay:](v5, "setIsAllDay:", [v12 BOOLValue]);

    v13 = [resultCopy valueForAttribute:*MEMORY[0x1E6964A38] withType:objc_opt_class()];
    -[SSReminderResultBuilder setIsFlagged:](v5, "setIsFlagged:", [v13 BOOLValue]);

    v14 = [resultCopy valueForAttribute:*MEMORY[0x1E6964A40] withType:objc_opt_class()];
    -[SSReminderResultBuilder setIsRecurring:](v5, "setIsRecurring:", [v14 BOOLValue]);

    completionDate = [(SSReminderResultBuilder *)v5 completionDate];
    [(SSReminderResultBuilder *)v5 setIsCompleted:completionDate != 0];
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v8.receiver = self;
  v8.super_class = SSReminderResultBuilder;
  buildInlineCardSection = [(SSResultBuilder *)&v8 buildInlineCardSection];
  if ([(SSReminderResultBuilder *)self isFlagged])
  {
    v4 = objc_opt_new();
    [v4 setSymbolName:@"flag.fill"];
    v5 = objc_opt_new();
    [buildInlineCardSection setTrailingTopText:v5];

    trailingTopText = [buildInlineCardSection trailingTopText];
    [trailingTopText setGlyph:v4];
  }

  return buildInlineCardSection;
}

- (id)buildTitle
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E69CA0F0];
  reminder = [(SSReminderResultBuilder *)self reminder];
  v6 = [v4 textWithString:reminder];
  v14[0] = v6;
  v7 = objc_opt_new();
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v3 setFormattedTextPieces:v8];

  isCompleted = [(SSReminderResultBuilder *)self isCompleted];
  formattedTextPieces = [v3 formattedTextPieces];
  v11 = [formattedTextPieces objectAtIndexedSubscript:1];
  [v11 setIsEmphasized:isCompleted];

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)buildDescriptions
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  note = [(SSReminderResultBuilder *)self note];
  v5 = [note length];

  if (v5)
  {
    v6 = MEMORY[0x1E69CA3A0];
    note2 = [(SSReminderResultBuilder *)self note];
    v8 = [v6 textWithString:note2];
    [v3 addObject:v8];
  }

  v9 = objc_opt_new();
  dueDate = [(SSReminderResultBuilder *)self dueDate];

  if (dueDate)
  {
    dueDate2 = [(SSReminderResultBuilder *)self dueDate];
    v12 = [SSDateFormatManager shortDateTimeStringFromDate:dueDate2 isAllDay:[(SSReminderResultBuilder *)self isAllDay] showAllDayString:0];

    if ([(SSReminderResultBuilder *)self isRecurring])
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, ", v12];

      v12 = v13;
    }

    dueDate3 = [(SSReminderResultBuilder *)self dueDate];
    [dueDate3 timeIntervalSinceNow];
    if (v15 >= 0.0)
    {
      v16 = 0;
    }

    else
    {
      v16 = [(SSReminderResultBuilder *)self isCompleted]^ 1;
    }

    v17 = [MEMORY[0x1E69CA0F0] textWithString:v12];
    [v17 setTextColor:v16];
    [v9 addObject:v17];
    if ([(SSReminderResultBuilder *)self isRecurring])
    {
      v18 = objc_opt_new();
      [v18 setIsTemplate:1];
      [v18 setSymbolName:@"repeat"];
      v19 = objc_opt_new();
      [v19 setGlyph:v18];
      [v19 setTextColor:v16];
      [v9 addObject:v19];
    }
  }

  v20 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  hashtags = [(SSReminderResultBuilder *)self hashtags];
  v22 = [hashtags countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v39;
    do
    {
      v25 = 0;
      do
      {
        if (*v39 != v24)
        {
          objc_enumerationMutation(hashtags);
        }

        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%@", *(*(&v38 + 1) + 8 * v25)];
        [v20 addObject:v26];

        ++v25;
      }

      while (v23 != v25);
      v23 = [hashtags countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v23);
  }

  if ([v20 count])
  {
    v27 = [v9 count];
    v28 = &stru_1F556FE60;
    if (v27)
    {
      v28 = @" ";
    }

    v29 = v28;
    v30 = [v20 componentsJoinedByString:@" "];
    v31 = [(__CFString *)v29 stringByAppendingString:v30];

    v32 = [MEMORY[0x1E69CA0F0] textWithString:v31];
    [v9 addObject:v32];
  }

  if ([v9 count])
  {
    v33 = objc_opt_new();
    [v33 setFormattedTextPieces:v9];
    [v3 addObject:v33];
  }

  if ([v3 count])
  {
    v34 = v3;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;

  v36 = *MEMORY[0x1E69E9840];
  return v34;
}

@end