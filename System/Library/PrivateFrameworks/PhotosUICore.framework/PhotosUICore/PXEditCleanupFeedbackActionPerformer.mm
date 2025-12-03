@interface PXEditCleanupFeedbackActionPerformer
- (PXEditCleanupFeedbackActionPerformer)init;
- (PXEditCleanupFeedbackActionPerformer)initWithViewController:(id)controller;
- (id)actionIconForFeedbackType:(unint64_t)type hasResponse:(BOOL)response;
- (void)reportFeedbackWithType:(unint64_t)type asset:(id)asset originalImageData:(id)data renderedImageData:(id)imageData summaryString:(id)string completionHandler:(id)handler;
@end

@implementation PXEditCleanupFeedbackActionPerformer

- (PXEditCleanupFeedbackActionPerformer)initWithViewController:(id)controller
{
  type metadata accessor for PhotosFeedbackActionPerformer();
  controllerCopy = controller;
  *(&self->super.isa + OBJC_IVAR___PXEditCleanupFeedbackActionPerformer_actionPerformer) = PhotosFeedbackActionPerformer.__allocating_init(parentViewController:)(controllerCopy);
  v8.receiver = self;
  v8.super_class = PXEditCleanupFeedbackActionPerformer;
  v6 = [(PXEditCleanupFeedbackActionPerformer *)&v8 init];

  return v6;
}

- (void)reportFeedbackWithType:(unint64_t)type asset:(id)asset originalImageData:(id)data renderedImageData:(id)imageData summaryString:(id)string completionHandler:(id)handler
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(handler);
  if (data)
  {
    assetCopy = asset;
    imageDataCopy = imageData;
    stringCopy = string;
    selfCopy = self;
    dataCopy = data;
    v24 = sub_1A5240EA4();
    v49 = v25;
    v50 = v24;

    if (imageData)
    {
LABEL_3:
      v26 = sub_1A5240EA4();
      v28 = v27;

      goto LABEL_6;
    }
  }

  else
  {
    assetCopy2 = asset;
    imageDataCopy2 = imageData;
    stringCopy2 = string;
    selfCopy2 = self;
    v49 = 0xF000000000000000;
    v50 = 0;
    if (imageData)
    {
      goto LABEL_3;
    }
  }

  v26 = 0;
  v28 = 0xF000000000000000;
LABEL_6:
  selfCopy3 = self;
  assetCopy3 = asset;
  if (string)
  {
    v48 = sub_1A524C674();
    v36 = v35;
  }

  else
  {
    v48 = 0;
    v36 = 0;
  }

  v37 = swift_allocObject();
  *(v37 + 16) = v18;
  v38 = *(&selfCopy3->super.isa + OBJC_IVAR___PXEditCleanupFeedbackActionPerformer_actionPerformer);
  if (v38)
  {
    v47 = selfCopy3;
    v39 = v37;
    v40 = sub_1A524CCB4();
    (*(*(v40 - 8) + 56))(v17, 1, 1, v40);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v38;
    v41[5] = type;
    v43 = v49;
    v42 = v50;
    v41[6] = assetCopy3;
    v41[7] = v42;
    v41[8] = v43;
    v41[9] = v26;
    v44 = v48;
    v41[10] = v28;
    v41[11] = v44;
    v41[12] = v36;
    v41[13] = sub_1A3DB5554;
    v41[14] = v39;
    v45 = assetCopy3;
    v46 = v38;
    sub_1A3DB506C(v42, v43);
    sub_1A3DB506C(v26, v28);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3DB556C(v26, v28);
  sub_1A3DB556C(v50, v49);
}

- (id)actionIconForFeedbackType:(unint64_t)type hasResponse:(BOOL)response
{
  v4 = *(&self->super.isa + OBJC_IVAR___PXEditCleanupFeedbackActionPerformer_actionPerformer);
  if (v4)
  {
    responseCopy = response;
    v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
    selfCopy = self;
    v9 = v4;
    v10 = v7(type, responseCopy);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PXEditCleanupFeedbackActionPerformer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end