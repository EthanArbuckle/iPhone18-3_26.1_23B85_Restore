@interface PXStoryChapterSettings
+ (PXStoryChapterSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXStoryChapterSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXStoryChapterSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXStoryChapterSettings *)self setChapterCollectionProducerKind:1];
  [(PXStoryChapterSettings *)self setDummyChaptersDayInterval:1];
  [(PXStoryChapterSettings *)self setDummyChaptersCountInterval:4];
  [(PXStoryChapterSettings *)self setDummyChaptersIncludeSubtitles:0];
}

+ (id)settingsControllerModule
{
  v39[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C65F8];
  v37 = NSStringFromSelector(sel_chapterCollectionProducerKind);
  v36 = [v3 rowWithTitle:@"Kind" valueKeyPath:v37];
  v35 = [v36 possibleValues:&unk_1F190FFA0 titles:&unk_1F190FFB8];
  v38[0] = v35;
  v4 = MEMORY[0x1E69C66A0];
  v34 = NSStringFromSelector(sel_dummyChaptersDayInterval);
  v33 = [v4 rowWithTitle:@"Day Interval" valueKeyPath:v34];
  v32 = [v33 minValue:1.0 maxValue:30.0];
  v30 = [v32 px_increment:1.0];
  v5 = MEMORY[0x1E696AE18];
  v31 = NSStringFromSelector(sel_chapterCollectionProducerKind);
  v29 = [v5 predicateWithFormat:@"%K == %li", v31, 3];
  v28 = [v30 condition:v29];
  v38[1] = v28;
  v6 = MEMORY[0x1E69C66A0];
  v27 = NSStringFromSelector(sel_dummyChaptersCountInterval);
  v26 = [v6 rowWithTitle:@"Count Interval" valueKeyPath:v27];
  v25 = [v26 minValue:1.0 maxValue:30.0];
  v23 = [v25 px_increment:1.0];
  v7 = MEMORY[0x1E696AE18];
  v24 = NSStringFromSelector(sel_chapterCollectionProducerKind);
  v22 = [v7 predicateWithFormat:@"%K == %li", v24, 3];
  v21 = [v23 condition:v22];
  v38[2] = v21;
  v8 = MEMORY[0x1E69C66A8];
  v9 = NSStringFromSelector(sel_dummyChaptersIncludeSubtitles);
  v10 = [v8 rowWithTitle:@"Subtitles" valueKeyPath:v9];
  v11 = MEMORY[0x1E696AE18];
  v12 = NSStringFromSelector(sel_chapterCollectionProducerKind);
  v13 = [v11 predicateWithFormat:@"%K != %li", v12, 1];
  v14 = [v10 condition:v13];
  v38[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  v16 = [v2 sectionWithRows:v15 title:@"Settings"];
  v39[0] = v16;
  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v39[1] = px_restoreDefaultsSection;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v19 = [v2 moduleWithTitle:@"Chapters" contents:v18];

  return v19;
}

+ (PXStoryChapterSettings)sharedInstance
{
  if (sharedInstance_onceToken_43342 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_43342, &__block_literal_global_43343);
  }

  v3 = sharedInstance_sharedInstance_43344;

  return v3;
}

void __40__PXStoryChapterSettings_sharedInstance__block_invoke()
{
  v2 = +[PXStorySettings sharedInstance];
  v0 = [v2 chapterSettings];
  v1 = sharedInstance_sharedInstance_43344;
  sharedInstance_sharedInstance_43344 = v0;
}

@end