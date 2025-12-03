@interface SPUISMusicResultBuilder
+ (BOOL)supportsResult:(id)result;
+ (id)stringWithAlbum:(id)album releaseDate:(id)date;
- (SPUISMusicResultBuilder)initWithResult:(id)result;
- (id)buildButtonItems;
- (id)buildCompactCardSection;
- (id)buildDescriptions;
- (id)buildResult;
- (id)buildThumbnail;
- (id)buildTitle;
@end

@implementation SPUISMusicResultBuilder

+ (id)stringWithAlbum:(id)album releaseDate:(id)date
{
  albumCopy = album;
  dateCopy = date;
  v7 = objc_opt_new();
  if ([albumCopy length])
  {
    [v7 addObject:albumCopy];
  }

  if (dateCopy)
  {
    v8 = +[SPUISDateFormatManager calendar];
    v9 = [v8 component:4 fromDate:dateCopy];

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    stringValue = [v10 stringValue];
    [v7 addObject:stringValue];
  }

  v12 = [v7 componentsJoinedByString:@" · "];

  return v12;
}

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
  bundleId = [self bundleId];
  if ([applicationBundleIdentifier isEqualToString:bundleId])
  {
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS___SPUISMusicResultBuilder;
    v7 = objc_msgSendSuper2(&v9, sel_supportsResult_, resultCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SPUISMusicResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v14.receiver = self;
  v14.super_class = SPUISMusicResultBuilder;
  v5 = [(SPUISResultBuilder *)&v14 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC23F8] withType:objc_opt_class()];
    [(SPUISMusicResultBuilder *)v5 setAlbum:v6];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC2480] withType:objc_opt_class()];
    [(SPUISMusicResultBuilder *)v5 setArtist:v7];

    v8 = [resultCopy valueForAttribute:*MEMORY[0x277CC3208] withType:objc_opt_class()];
    [(SPUISMusicResultBuilder *)v5 setMediaId:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x277CC2780] withType:objc_opt_class()];
    [(SPUISMusicResultBuilder *)v5 setSongLengthInSeconds:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISMusicResultBuilder *)v5 setCreationDate:v10];

    v11 = [resultCopy valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    [(SPUISMusicResultBuilder *)v5 setSong:v11];

    v12 = [resultCopy valueForAttribute:*MEMORY[0x277CC2668] withType:objc_opt_class()];
    -[SPUISMusicResultBuilder setIsExplicit:](v5, "setIsExplicit:", [v12 BOOLValue]);
  }

  return v5;
}

- (id)buildResult
{
  v6.receiver = self;
  v6.super_class = SPUISMusicResultBuilder;
  buildResult = [(SPUISResultBuilder *)&v6 buildResult];
  mediaId = [(SPUISMusicResultBuilder *)self mediaId];
  [buildResult setIdentifier:mediaId];

  return buildResult;
}

- (id)buildCompactCardSection
{
  v8.receiver = self;
  v8.super_class = SPUISMusicResultBuilder;
  buildCompactCardSection = [(SPUISResultBuilder *)&v8 buildCompactCardSection];
  footnote = [buildCompactCardSection footnote];

  if (footnote)
  {
    descriptions = [buildCompactCardSection descriptions];
    footnote2 = [buildCompactCardSection footnote];
    v6 = [descriptions arrayByAddingObject:footnote2];
    [buildCompactCardSection setDescriptions:v6];
  }

  [buildCompactCardSection setFootnote:0];

  return buildCompactCardSection;
}

- (id)buildTitle
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  song = [(SPUISMusicResultBuilder *)self song];

  if (song)
  {
    v6 = MEMORY[0x277D4C3A0];
    song2 = [(SPUISMusicResultBuilder *)self song];
    v8 = [v6 textWithString:song2];
    [v3 addObject:v8];
  }

  if ([(SPUISMusicResultBuilder *)self isExplicit])
  {
    firstObject = [v3 firstObject];
    [firstObject setIsEmphasized:1];

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
  result = [(SPUISResultBuilder *)self result];
  contentType = [result contentType];
  identifier = [*MEMORY[0x277CE1E28] identifier];
  if ([contentType isEqualToString:identifier])
  {
    v7 = @"PLAYLIST";
  }

  else
  {
    v7 = @"SONG";
  }

  v8 = [SPUISUtilities localizedStringForKey:v7];
  [v3 addObject:v8];

  artist = [(SPUISMusicResultBuilder *)self artist];
  v10 = [artist length];

  if (v10)
  {
    artist2 = [(SPUISMusicResultBuilder *)self artist];
    [v3 addObject:artist2];
  }

  songLengthInSeconds = [(SPUISMusicResultBuilder *)self songLengthInSeconds];

  if (songLengthInSeconds)
  {
    songLengthInSeconds2 = [(SPUISMusicResultBuilder *)self songLengthInSeconds];
    [songLengthInSeconds2 doubleValue];
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
  mediaId = [(SPUISMusicResultBuilder *)self mediaId];
  [v3 setSpotlightIdentifier:mediaId];

  return v3;
}

- (id)buildButtonItems
{
  v13[1] = *MEMORY[0x277D85DE8];
  mediaId = [(SPUISMusicResultBuilder *)self mediaId];

  if (mediaId)
  {
    v4 = objc_opt_new();
    mediaId2 = [(SPUISMusicResultBuilder *)self mediaId];
    [v4 setMediaIdentifier:mediaId2];

    v6 = *MEMORY[0x277CE1E28];
    uniformType = [(SPUISResultBuilder *)self uniformType];
    LODWORD(v6) = [v6 conformsToType:uniformType];

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