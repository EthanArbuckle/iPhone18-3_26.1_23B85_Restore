@interface SSGeneralResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (id)buildDescriptions;
- (id)buildDetailedRowCardSection;
- (id)buildFootnote;
- (id)buildSecondaryTitle;
- (id)buildTitle;
@end

@implementation SSGeneralResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v4 = [a3 sectionBundleIdentifier];
  v5 = [a1 bundleId];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (id)buildTitle
{
  v20[2] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = SSGeneralResultBuilder;
  v3 = [(SSResultBuilder *)&v19 buildTitle];
  if (isMacOS())
  {
    v4 = [(SSResultBuilder *)self result];
    v5 = [v4 valueForAttribute:*MEMORY[0x1E6963FA0] withType:objc_opt_class()];
    [v5 doubleValue];
    v7 = v6;

    if (v7 != 0.0)
    {
      v8 = MEMORY[0x1E69CA0F0];
      v9 = [v3 text];
      v10 = [v8 textWithString:v9];

      [v10 setIsEmphasized:1];
      v11 = MEMORY[0x1E69CA0F0];
      v12 = MEMORY[0x1E696AEC0];
      v13 = [SSDateFormatManager stringFromTimeInterval:v7];
      v14 = [v12 stringWithFormat:@" — %@", v13];
      v15 = [v11 textWithString:v14];

      v20[0] = v10;
      v20[1] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
      [v3 setFormattedTextPieces:v16];
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)buildSecondaryTitle
{
  if (buildSecondaryTitle_onceToken != -1)
  {
    [SSGeneralResultBuilder buildSecondaryTitle];
  }

  v3 = [(SSResultBuilder *)self result];
  v4 = MEMORY[0x1E695DFD8];
  v5 = [v3 contentTypeTree];
  v6 = [v4 setWithArray:v5];

  v7 = [v3 valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
  if (v7 && [buildSecondaryTitle_utiTypesWithSecondaryTitle intersectsSet:v6])
  {
    v8 = [SSDateFormatManager dynamicCompactStringFromDate:v7];
    if (v8)
    {
      v9 = [MEMORY[0x1E69CA0F0] textWithString:v8];
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

void __45__SSGeneralResultBuilder_buildSecondaryTitle__block_invoke()
{
  v7[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = [*MEMORY[0x1E6982DA8] identifier];
  v7[0] = v1;
  v2 = [*MEMORY[0x1E6982ED8] identifier];
  v7[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v0 setWithArray:v3];
  v5 = buildSecondaryTitle_utiTypesWithSecondaryTitle;
  buildSecondaryTitle_utiTypesWithSecondaryTitle = v4;

  v6 = *MEMORY[0x1E69E9840];
}

- (id)buildDescriptions
{
  v3 = [(SSResultBuilder *)self result];
  v38 = [v3 valueForAttribute:*MEMORY[0x1E6963C90] withType:objc_opt_class()];
  v4 = [v3 valueForAttribute:*MEMORY[0x1E6963BF8] withType:objc_opt_class()];
  v5 = [v3 valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
  v40 = [v3 valueForAttribute:*MEMORY[0x1E6964990] withType:objc_opt_class()];
  v44 = [v3 valueForAttribute:*MEMORY[0x1E6963E58] withType:objc_opt_class()];
  v39 = [v3 valueForAttribute:*MEMORY[0x1E6964B28] withType:objc_opt_class()];
  v6 = [v3 valueForAttribute:*MEMORY[0x1E6964628] withType:objc_opt_class()];
  v7 = isMacOS();
  v8 = MEMORY[0x1E6964590];
  if (!v7)
  {
    v8 = MEMORY[0x1E6964340];
  }

  v42 = [v3 valueForAttribute:*v8 withType:objc_opt_class()];
  *(&v45 + 1) = [v3 valueForAttribute:*MEMORY[0x1E6963E30] withType:objc_opt_class()];
  *&v45 = [v3 valueForAttribute:*MEMORY[0x1E6963F98] withType:objc_opt_class()];
  v9 = [v3 valueForAttribute:*MEMORY[0x1E6964B30] withType:objc_opt_class()];
  v41 = [v3 valueForAttribute:*MEMORY[0x1E6963FE8] withType:objc_opt_class()];
  v10 = [v3 valueForAttribute:*MEMORY[0x1E69644B0] withType:objc_opt_class()];
  v11 = [v10 BOOLValue];

  v12 = MEMORY[0x1E695DF70];
  v46.receiver = self;
  v46.super_class = SSGeneralResultBuilder;
  v13 = [(SSResultBuilder *)&v46 buildDescriptions];
  v14 = [v12 arrayWithArray:v13];

  if (!v14)
  {
    v14 = objc_opt_new();
  }

  v43 = v6;
  v15 = v38;
  if (v38)
  {
    v16 = [MEMORY[0x1E69CA3A0] textWithString:v38];
    [v14 addObject:v16];
  }

  if (v4)
  {
    v17 = MEMORY[0x1E69CA3A0];
    v18 = [SSMusicResultBuilder stringWithAlbum:v4 releaseDate:v5];
    v19 = [v17 textWithString:v18];
    [v14 addObject:v19];

    v15 = v38;
  }

  if (v45 != 0)
  {
    v20 = [SSReminderResultBuilder stringWithCompletionDate:*(&v45 + 1) dueDate:v45 modificationDate:0];
    [MEMORY[0x1E69CA3A0] textWithString:v20];
    v21 = v5;
    v22 = v4;
    v24 = v23 = v15;
    [v14 addObject:v24];

    v15 = v23;
    v4 = v22;
    v5 = v21;
  }

  if (v9)
  {
    v25 = [SSCalendarResultBuilder stringWithStartDate:v9 endDate:v41 isAllDay:v11];
    v26 = [MEMORY[0x1E69CA3A0] textWithString:v25];
    [v14 addObject:v26];
  }

  if (v43)
  {
    v27 = MEMORY[0x1E69CA3A0];
    v28 = [SSFileResultBuilder stringWithPageCount:?];
    v29 = [v27 textWithString:v28];
    [v14 addObject:v29];
  }

  if (v42)
  {
    v30 = MEMORY[0x1E69CA3A0];
    v31 = +[SSNumberFormatManager stringFromByteCount:](SSNumberFormatManager, "stringFromByteCount:", [v42 longLongValue]);
    v32 = [v30 textWithString:v31];
    [v14 addObject:v32];
  }

  if (v44)
  {
    v33 = [MEMORY[0x1E69CA3A0] textWithString:?];
    [v14 addObject:v33];
  }

  if (v39)
  {
    v34 = [MEMORY[0x1E69CA3A0] textWithString:v40];
    [v39 doubleValue];
    [v34 setStarRating:?];
    [v14 addObject:v34];
  }

  if ([v14 count])
  {
    v35 = v14;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;

  return v35;
}

- (id)buildFootnote
{
  if (isMacOS())
  {
    v3 = 0;
    goto LABEL_15;
  }

  v4 = [(SSResultBuilder *)self result];
  v5 = [v4 valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
  v6 = [v4 valueForAttribute:*MEMORY[0x1E6963FA0] withType:objc_opt_class()];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v4 valueForAttribute:*MEMORY[0x1E6964600] withType:objc_opt_class()];
  v10 = [v4 contentTypeTree];
  v11 = [*MEMORY[0x1E6982D30] identifier];
  v12 = [v10 containsObject:v11];

  v13 = [v4 valueForAttribute:*MEMORY[0x1E6963C08] withType:objc_opt_class()];
  v14 = [v13 objectAtIndexedSubscript:0];
  objc_opt_class();
  v15 = 0;
  if (objc_opt_isKindOfClass())
  {
    v15 = [v13 objectAtIndexedSubscript:0];
  }

  if (v8 != 0.0)
  {
    v16 = [SSDateFormatManager stringFromTimeInterval:v8];
    goto LABEL_11;
  }

  if (!((v9 == 0) | v12 & 1))
  {
    v16 = [SSNewsResultBuilder newsFootnoteWithNewsSource:v9 publishedDate:v5];
LABEL_11:
    v17 = v16;
    if (v16)
    {
      goto LABEL_12;
    }

LABEL_13:
    v3 = 0;
    goto LABEL_14;
  }

  if (!v15)
  {
    goto LABEL_13;
  }

  v17 = v15;
LABEL_12:
  v3 = [MEMORY[0x1E69CA3A0] textWithString:v17];

LABEL_14:
LABEL_15:

  return v3;
}

- (id)buildDetailedRowCardSection
{
  v6.receiver = self;
  v6.super_class = SSGeneralResultBuilder;
  v3 = [(SSResultBuilder *)&v6 buildDetailedRowCardSection];
  v4 = [(SSGeneralResultBuilder *)self buildSecondaryTitle];
  [v3 setIsSecondaryTitleDetached:v4 != 0];

  return v3;
}

@end