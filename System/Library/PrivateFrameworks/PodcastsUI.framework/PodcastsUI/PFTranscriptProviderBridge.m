@interface PFTranscriptProviderBridge
+ (PFTranscriptProviderBridge)shared;
- (PFTranscriptProviderBridge)init;
- (void)invalidateTranscriptAssetForAdamID:(int64_t)a3;
- (void)updateTTMLIDFrom:(id)a3 toNewID:(id)a4 hasDownloadedContent:(BOOL)a5 forEpisodeAdamID:(int64_t)a6;
@end

@implementation PFTranscriptProviderBridge

+ (PFTranscriptProviderBridge)shared
{
  if (qword_2811FEAB8 != -1)
  {
    swift_once();
  }

  v3 = qword_2811FEAC0;

  return v3;
}

- (void)invalidateTranscriptAssetForAdamID:(int64_t)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR___PFTranscriptProviderBridge_managedObjectContext);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a3;
  v7[4] = v6;
  v11[4] = sub_21B4286A8;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21B36CDB8;
  v11[3] = &block_descriptor_30;
  v8 = _Block_copy(v11);
  v9 = self;
  v10 = v5;

  [v10 performBlock_];
  _Block_release(v8);
}

- (void)updateTTMLIDFrom:(id)a3 toNewID:(id)a4 hasDownloadedContent:(BOOL)a5 forEpisodeAdamID:(int64_t)a6
{
  v7 = a5;
  v8 = a4;
  if (a3)
  {
    v10 = sub_21B4C9708();
    v12 = v11;
    if (v8)
    {
LABEL_3:
      v13 = sub_21B4C9708();
      v8 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v15 = self;
  sub_21B4267DC(v10, v12, v13, v8, v7, a6);
}

- (PFTranscriptProviderBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end