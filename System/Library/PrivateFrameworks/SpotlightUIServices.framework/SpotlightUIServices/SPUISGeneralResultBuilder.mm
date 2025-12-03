@interface SPUISGeneralResultBuilder
+ (BOOL)supportsResult:(id)result;
- (id)buildDescriptions;
- (id)buildDetailedRowCardSection;
- (id)buildFootnote;
- (id)buildSecondaryTitle;
- (id)buildTitle;
@end

@implementation SPUISGeneralResultBuilder

+ (BOOL)supportsResult:(id)result
{
  sectionBundleIdentifier = [result sectionBundleIdentifier];
  bundleId = [self bundleId];
  v6 = [sectionBundleIdentifier isEqual:bundleId];

  return v6;
}

- (id)buildTitle
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = SPUISGeneralResultBuilder;
  buildTitle = [(SPUISResultBuilder *)&v19 buildTitle];
  if (+[SPUISUtilities isMacOS])
  {
    result = [(SPUISResultBuilder *)self result];
    v5 = [result valueForAttribute:*MEMORY[0x277CC2780] withType:objc_opt_class()];
    [v5 doubleValue];
    v7 = v6;

    if (v7 != 0.0)
    {
      v8 = MEMORY[0x277D4C3A0];
      text = [buildTitle text];
      v10 = [v8 textWithString:text];

      [v10 setIsEmphasized:1];
      v11 = MEMORY[0x277D4C3A0];
      v12 = MEMORY[0x277CCACA8];
      v13 = [SPUISDateFormatManager stringFromTimeInterval:v7];
      v14 = [v12 stringWithFormat:@" — %@", v13];
      v15 = [v11 textWithString:v14];

      v20[0] = v10;
      v20[1] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
      [buildTitle setFormattedTextPieces:v16];
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return buildTitle;
}

- (id)buildSecondaryTitle
{
  if (buildSecondaryTitle_onceToken != -1)
  {
    [SPUISGeneralResultBuilder buildSecondaryTitle];
  }

  result = [(SPUISResultBuilder *)self result];
  v4 = MEMORY[0x277CBEB98];
  contentTypeTree = [result contentTypeTree];
  v6 = [v4 setWithArray:contentTypeTree];

  v7 = [result valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
  if (v7 && [buildSecondaryTitle_utiTypesWithSecondaryTitle intersectsSet:v6])
  {
    v8 = [SPUISDateFormatManager dynamicCompactStringFromDate:v7];
    if (v8)
    {
      v9 = [MEMORY[0x277D4C3A0] textWithString:v8];
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

void __48__SPUISGeneralResultBuilder_buildSecondaryTitle__block_invoke()
{
  v7[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = [*MEMORY[0x277CE1D60] identifier];
  v7[0] = v1;
  v2 = [*MEMORY[0x277CE1DF8] identifier];
  v7[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v0 setWithArray:v3];
  v5 = buildSecondaryTitle_utiTypesWithSecondaryTitle;
  buildSecondaryTitle_utiTypesWithSecondaryTitle = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (id)buildDescriptions
{
  result = [(SPUISResultBuilder *)self result];
  v38 = [result valueForAttribute:*MEMORY[0x277CC2480] withType:objc_opt_class()];
  v4 = [result valueForAttribute:*MEMORY[0x277CC23F8] withType:objc_opt_class()];
  v5 = [result valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
  v40 = [result valueForAttribute:*MEMORY[0x277CC3008] withType:objc_opt_class()];
  v44 = [result valueForAttribute:*MEMORY[0x277CC2630] withType:objc_opt_class()];
  v39 = [result valueForAttribute:*MEMORY[0x277CC3120] withType:objc_opt_class()];
  v6 = [result valueForAttribute:*MEMORY[0x277CC2E08] withType:objc_opt_class()];
  v7 = +[SPUISUtilities isMacOS];
  v8 = MEMORY[0x277CC2D48];
  if (!v7)
  {
    v8 = MEMORY[0x277CC2B48];
  }

  v42 = [result valueForAttribute:*v8 withType:objc_opt_class()];
  *(&v45 + 1) = [result valueForAttribute:*MEMORY[0x277CC25E0] withType:objc_opt_class()];
  *&v45 = [result valueForAttribute:*MEMORY[0x277CC2778] withType:objc_opt_class()];
  v9 = [result valueForAttribute:*MEMORY[0x277CC3128] withType:objc_opt_class()];
  v41 = [result valueForAttribute:*MEMORY[0x277CC27A0] withType:objc_opt_class()];
  v10 = [result valueForAttribute:*MEMORY[0x277CC2C60] withType:objc_opt_class()];
  bOOLValue = [v10 BOOLValue];

  v12 = MEMORY[0x277CBEB18];
  v46.receiver = self;
  v46.super_class = SPUISGeneralResultBuilder;
  buildDescriptions = [(SPUISResultBuilder *)&v46 buildDescriptions];
  v14 = [v12 arrayWithArray:buildDescriptions];

  if (!v14)
  {
    v14 = objc_opt_new();
  }

  v43 = v6;
  v15 = v38;
  if (v38)
  {
    v16 = [MEMORY[0x277D4C598] textWithString:v38];
    [v14 addObject:v16];
  }

  if (v4)
  {
    v17 = MEMORY[0x277D4C598];
    v18 = [SPUISMusicResultBuilder stringWithAlbum:v4 releaseDate:v5];
    v19 = [v17 textWithString:v18];
    [v14 addObject:v19];

    v15 = v38;
  }

  if (v45 != 0)
  {
    v20 = [SPUISReminderResultBuilder stringWithCompletionDate:*(&v45 + 1) dueDate:v45 modificationDate:0];
    [MEMORY[0x277D4C598] textWithString:v20];
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
    v25 = [SPUISCalendarResultBuilder stringWithStartDate:v9 endDate:v41 isAllDay:bOOLValue];
    v26 = [MEMORY[0x277D4C598] textWithString:v25];
    [v14 addObject:v26];
  }

  if (v43)
  {
    v27 = MEMORY[0x277D4C598];
    v28 = [SPUISFileResultBuilder stringWithPageCount:?];
    v29 = [v27 textWithString:v28];
    [v14 addObject:v29];
  }

  if (v42)
  {
    v30 = MEMORY[0x277D4C598];
    v31 = +[SPUISNumberFormatManager stringFromByteCount:](SPUISNumberFormatManager, "stringFromByteCount:", [v42 longLongValue]);
    v32 = [v30 textWithString:v31];
    [v14 addObject:v32];
  }

  if (v44)
  {
    v33 = [MEMORY[0x277D4C598] textWithString:?];
    [v14 addObject:v33];
  }

  if (v39)
  {
    v34 = [MEMORY[0x277D4C598] textWithString:v40];
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
  if (+[SPUISUtilities isMacOS])
  {
    v3 = 0;
    goto LABEL_15;
  }

  result = [(SPUISResultBuilder *)self result];
  v5 = [result valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
  v6 = [result valueForAttribute:*MEMORY[0x277CC2780] withType:objc_opt_class()];
  [v6 doubleValue];
  v8 = v7;

  v9 = [result valueForAttribute:*MEMORY[0x277CC2DD0] withType:objc_opt_class()];
  contentTypeTree = [result contentTypeTree];
  identifier = [*MEMORY[0x277CE1D20] identifier];
  v12 = [contentTypeTree containsObject:identifier];

  v13 = [result valueForAttribute:*MEMORY[0x277CC2408] withType:objc_opt_class()];
  v14 = [v13 objectAtIndexedSubscript:0];
  objc_opt_class();
  v15 = 0;
  if (objc_opt_isKindOfClass())
  {
    v15 = [v13 objectAtIndexedSubscript:0];
  }

  if (v8 != 0.0)
  {
    v16 = [SPUISDateFormatManager stringFromTimeInterval:v8];
    goto LABEL_11;
  }

  if (!((v9 == 0) | v12 & 1))
  {
    v16 = [SPUISNewsResultBuilder newsFootnoteWithNewsSource:v9 publishedDate:v5];
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
  v3 = [MEMORY[0x277D4C598] textWithString:v17];

LABEL_14:
LABEL_15:

  return v3;
}

- (id)buildDetailedRowCardSection
{
  v6.receiver = self;
  v6.super_class = SPUISGeneralResultBuilder;
  buildDetailedRowCardSection = [(SPUISResultBuilder *)&v6 buildDetailedRowCardSection];
  buildSecondaryTitle = [(SPUISGeneralResultBuilder *)self buildSecondaryTitle];
  [buildDetailedRowCardSection setIsSecondaryTitleDetached:buildSecondaryTitle != 0];

  return buildDetailedRowCardSection;
}

@end