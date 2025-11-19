@interface SPUISMusicResultBuilder
+ (BOOL)supportsResult:(id)a3;
+ (id)stringWithAlbum:(id)a3 releaseDate:(id)a4;
- (SPUISMusicResultBuilder)initWithResult:(id)a3;
- (id)buildButtonItems;
- (id)buildCompactCardSection;
- (id)buildDescriptions;
- (id)buildResult;
- (id)buildThumbnail;
- (id)buildTitle;
@end

@implementation SPUISMusicResultBuilder

+ (id)stringWithAlbum:(id)a3 releaseDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  if ([v5 length])
  {
    [v7 addObject:v5];
  }

  if (v6)
  {
    v8 = +[SPUISDateFormatManager calendar];
    v9 = [v8 component:4 fromDate:v6];

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    v11 = [v10 stringValue];
    [v7 addObject:v11];
  }

  v12 = [v7 componentsJoinedByString:@" · "];

  return v12;
}

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  v5 = [v4 applicationBundleIdentifier];
  v6 = [a1 bundleId];
  if ([v5 isEqualToString:v6])
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___SPUISMusicResultBuilder;
    v7 = objc_msgSendSuper2(&v9, sel_supportsResult_, v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SPUISMusicResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SPUISMusicResultBuilder;
  v5 = [(SPUISResultBuilder *)&v14 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x277CC23F8] withType:objc_opt_class()];
    [(SPUISMusicResultBuilder *)v5 setAlbum:v6];

    v7 = [v4 valueForAttribute:*MEMORY[0x277CC2480] withType:objc_opt_class()];
    [(SPUISMusicResultBuilder *)v5 setArtist:v7];

    v8 = [v4 valueForAttribute:*MEMORY[0x277CC3208] withType:objc_opt_class()];
    [(SPUISMusicResultBuilder *)v5 setMediaId:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x277CC2780] withType:objc_opt_class()];
    [(SPUISMusicResultBuilder *)v5 setSongLengthInSeconds:v9];

    v10 = [v4 valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISMusicResultBuilder *)v5 setCreationDate:v10];

    v11 = [v4 valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    [(SPUISMusicResultBuilder *)v5 setSong:v11];

    v12 = [v4 valueForAttribute:*MEMORY[0x277CC2668] withType:objc_opt_class()];
    -[SPUISMusicResultBuilder setIsExplicit:](v5, "setIsExplicit:", [v12 BOOLValue]);
  }

  return v5;
}

- (id)buildResult
{
  v6.receiver = self;
  v6.super_class = SPUISMusicResultBuilder;
  v3 = [(SPUISResultBuilder *)&v6 buildResult];
  v4 = [(SPUISMusicResultBuilder *)self mediaId];
  [v3 setIdentifier:v4];

  return v3;
}

- (id)buildCompactCardSection
{
  v8.receiver = self;
  v8.super_class = SPUISMusicResultBuilder;
  v2 = [(SPUISResultBuilder *)&v8 buildCompactCardSection];
  v3 = [v2 footnote];

  if (v3)
  {
    v4 = [v2 descriptions];
    v5 = [v2 footnote];
    v6 = [v4 arrayByAddingObject:v5];
    [v2 setDescriptions:v6];
  }

  [v2 setFootnote:0];

  return v2;
}

- (id)buildTitle
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(SPUISMusicResultBuilder *)self song];

  if (v5)
  {
    v6 = MEMORY[0x277D4C3A0];
    v7 = [(SPUISMusicResultBuilder *)self song];
    v8 = [v6 textWithString:v7];
    [v3 addObject:v8];
  }

  if ([(SPUISMusicResultBuilder *)self isExplicit])
  {
    v9 = [v3 firstObject];
    [v9 setIsEmphasized:1];

    v10 = objc_opt_new();
    [v10 setSymbolName:@"e.square.fill"];
    [v10 setIsTemplate:1];
    v11 = objc_opt_new();
    [v11 setGlyph:v10];
    v12 = [MEMORY[0x277D4C3A0] textWithString:@" "];
    [v3 addObject:v12];

    [v3 addObject:v11];
  }

  v13 = [v3 copy];
  [v4 setFormattedTextPieces:v13];

  return v4;
}

- (id)buildDescriptions
{
  v27[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(SPUISResultBuilder *)self result];
  v5 = [v4 contentType];
  v6 = [*MEMORY[0x277CE1E28] identifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = @"PLAYLIST";
  }

  else
  {
    v7 = @"SONG";
  }

  v8 = [SPUISUtilities localizedStringForKey:v7];
  [v3 addObject:v8];

  v9 = [(SPUISMusicResultBuilder *)self artist];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [(SPUISMusicResultBuilder *)self artist];
    [v3 addObject:v11];
  }

  v12 = [(SPUISMusicResultBuilder *)self songLengthInSeconds];

  if (v12)
  {
    v13 = [(SPUISMusicResultBuilder *)self songLengthInSeconds];
    [v13 doubleValue];
    v14 = [SPUISDateFormatManager stringFromTimeInterval:?];
    [v3 addObject:v14];
  }

  v15 = objc_opt_new();
  [v15 setSymbolName:@"music.square.stack.fill"];
  [v15 setIsTemplate:1];
  v16 = objc_opt_new();
  [v16 setGlyph:v15];
  v17 = objc_opt_new();
  v27[0] = v16;
  v18 = MEMORY[0x277D4C3A0];
  v19 = [v3 componentsJoinedByString:@" · "];
  v20 = [@" " stringByAppendingString:v19];
  v21 = [v18 textWithString:v20];
  v27[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  [v17 setFormattedTextPieces:v22];

  v26 = v17;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)buildThumbnail
{
  v3 = objc_opt_new();
  v4 = [(SPUISMusicResultBuilder *)self mediaId];
  [v3 setSpotlightIdentifier:v4];

  return v3;
}

- (id)buildButtonItems
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISMusicResultBuilder *)self mediaId];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [(SPUISMusicResultBuilder *)self mediaId];
    [v4 setMediaIdentifier:v5];

    v6 = *MEMORY[0x277CE1E28];
    v7 = [(SPUISResultBuilder *)self uniformType];
    LODWORD(v6) = [v6 conformsToType:v7];

    if (v6)
    {
      v8 = 5;
    }

    else
    {
      v8 = 1;
    }

    [v4 setMediaType:v8];
    v9 = objc_opt_new();
    [v9 setMediaMetadata:v4];
    v13[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end