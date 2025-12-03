@interface TSUIngestionTypes
+ (BOOL)isValidPlainTextUTI:(id)i;
+ (NSArray)highEfficiencyImageTypes;
+ (NSArray)highEfficiencyImageUTTypes;
+ (NSArray)imageTypesThatRequireConversion;
+ (NSArray)supported3DObjectFileTypes;
+ (NSArray)supportedImageTypes;
+ (NSArray)supportedMovieAnimatedImageTypes;
+ (NSArray)supportedMovieTypes;
+ (NSArray)supportedRichTextTypes;
+ (id)p_supportedPlainTextTypes;
+ (id)p_unsupportedPlainTextTypes;
@end

@implementation TSUIngestionTypes

+ (NSArray)supportedImageTypes
{
  if (qword_280A63CC8 != -1)
  {
    sub_277113F1C();
  }

  v3 = qword_280A63CC0;

  return v3;
}

+ (NSArray)supportedMovieTypes
{
  v9[2] = *MEMORY[0x277D85DE8];
  identifier = [*MEMORY[0x277CE1E00] identifier];
  v9[0] = identifier;
  identifier2 = [*MEMORY[0x277CE1D00] identifier];
  v9[1] = identifier2;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  supportedMovieAnimatedImageTypes = [self supportedMovieAnimatedImageTypes];
  v7 = [v5 arrayByAddingObjectsFromArray:supportedMovieAnimatedImageTypes];

  return v7;
}

+ (NSArray)supportedMovieAnimatedImageTypes
{
  v9[2] = *MEMORY[0x277D85DE8];
  identifier = [*MEMORY[0x277CE1D88] identifier];
  v9[0] = identifier;
  identifier2 = [*MEMORY[0x277CE1E10] identifier];
  v9[1] = identifier2;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  highEfficiencyImageTypes = [self highEfficiencyImageTypes];
  v7 = [v5 arrayByAddingObjectsFromArray:highEfficiencyImageTypes];

  return v7;
}

+ (NSArray)supportedRichTextTypes
{
  v7[3] = *MEMORY[0x277D85DE8];
  identifier = [*MEMORY[0x277CE1E50] identifier];
  identifier2 = [*MEMORY[0x277CE1D78] identifier];
  v7[1] = identifier2;
  identifier3 = [*MEMORY[0x277CE1E58] identifier];
  v7[2] = identifier3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];

  return v5;
}

+ (BOOL)isValidPlainTextUTI:(id)i
{
  iCopy = i;
  p_unsupportedPlainTextTypes = [self p_unsupportedPlainTextTypes];
  if ([p_unsupportedPlainTextTypes containsObject:iCopy])
  {
    v6 = 0;
  }

  else
  {
    p_supportedPlainTextTypes = [self p_supportedPlainTextTypes];
    v6 = [iCopy tsu_conformsToAnyUTI:p_supportedPlainTextTypes];
  }

  return v6;
}

+ (id)p_supportedPlainTextTypes
{
  v9[1] = *MEMORY[0x277D85DE8];
  readableTypeIdentifiersForItemProvider = [MEMORY[0x277CCACA8] readableTypeIdentifiersForItemProvider];
  identifier = [*MEMORY[0x277CE1E20] identifier];
  v9[0] = identifier;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v5 = [readableTypeIdentifiersForItemProvider arrayByAddingObjectsFromArray:v4];

  readableTypeIdentifiersForItemProvider2 = [MEMORY[0x277CBEBC0] readableTypeIdentifiersForItemProvider];
  v7 = [v5 arrayByAddingObjectsFromArray:readableTypeIdentifiersForItemProvider2];

  return v7;
}

+ (id)p_unsupportedPlainTextTypes
{
  v5[1] = *MEMORY[0x277D85DE8];
  identifier = [*MEMORY[0x277CE1EB8] identifier];
  v5[0] = identifier;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

+ (NSArray)highEfficiencyImageTypes
{
  v8[3] = *MEMORY[0x277D85DE8];
  identifier = [*MEMORY[0x277CE1D90] identifier];
  identifier2 = [*MEMORY[0x277CE1D98] identifier];
  v8[1] = identifier2;
  v4 = sub_277095430();
  identifier3 = [v4 identifier];
  v8[2] = identifier3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  return v6;
}

+ (NSArray)highEfficiencyImageUTTypes
{
  v6[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CE1D98];
  v6[0] = *MEMORY[0x277CE1D90];
  v6[1] = v2;
  v3 = sub_277095430();
  v6[2] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];

  return v4;
}

+ (NSArray)imageTypesThatRequireConversion
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"org.webmproject.webp";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (NSArray)supported3DObjectFileTypes
{
  v6[2] = *MEMORY[0x277D85DE8];
  identifier = [*MEMORY[0x277CE1E98] identifier];
  v6[0] = identifier;
  identifier2 = [*MEMORY[0x277CE1EA0] identifier];
  v6[1] = identifier2;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

@end