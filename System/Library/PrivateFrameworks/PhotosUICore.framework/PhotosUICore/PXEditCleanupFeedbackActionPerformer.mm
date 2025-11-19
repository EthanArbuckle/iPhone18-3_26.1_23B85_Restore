@interface PXEditCleanupFeedbackActionPerformer
- (PXEditCleanupFeedbackActionPerformer)init;
- (PXEditCleanupFeedbackActionPerformer)initWithViewController:(id)a3;
- (id)actionIconForFeedbackType:(unint64_t)a3 hasResponse:(BOOL)a4;
- (void)reportFeedbackWithType:(unint64_t)a3 asset:(id)a4 originalImageData:(id)a5 renderedImageData:(id)a6 summaryString:(id)a7 completionHandler:(id)a8;
@end

@implementation PXEditCleanupFeedbackActionPerformer

- (PXEditCleanupFeedbackActionPerformer)initWithViewController:(id)a3
{
  type metadata accessor for PhotosFeedbackActionPerformer();
  v5 = a3;
  *(&self->super.isa + OBJC_IVAR___PXEditCleanupFeedbackActionPerformer_actionPerformer) = PhotosFeedbackActionPerformer.__allocating_init(parentViewController:)(v5);
  v8.receiver = self;
  v8.super_class = PXEditCleanupFeedbackActionPerformer;
  v6 = [(PXEditCleanupFeedbackActionPerformer *)&v8 init];

  return v6;
}

- (void)reportFeedbackWithType:(unint64_t)a3 asset:(id)a4 originalImageData:(id)a5 renderedImageData:(id)a6 summaryString:(id)a7 completionHandler:(id)a8
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(a8);
  if (a5)
  {
    v19 = a4;
    v20 = a6;
    v21 = a7;
    v22 = self;
    v23 = a5;
    v24 = sub_1A5240EA4();
    v49 = v25;
    v50 = v24;

    if (a6)
    {
LABEL_3:
      v26 = sub_1A5240EA4();
      v28 = v27;

      goto LABEL_6;
    }
  }

  else
  {
    v29 = a4;
    v30 = a6;
    v31 = a7;
    v32 = self;
    v49 = 0xF000000000000000;
    v50 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v26 = 0;
  v28 = 0xF000000000000000;
LABEL_6:
  v33 = self;
  v34 = a4;
  if (a7)
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
  v38 = *(&v33->super.isa + OBJC_IVAR___PXEditCleanupFeedbackActionPerformer_actionPerformer);
  if (v38)
  {
    v47 = v33;
    v39 = v37;
    v40 = sub_1A524CCB4();
    (*(*(v40 - 8) + 56))(v17, 1, 1, v40);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v38;
    v41[5] = a3;
    v43 = v49;
    v42 = v50;
    v41[6] = v34;
    v41[7] = v42;
    v41[8] = v43;
    v41[9] = v26;
    v44 = v48;
    v41[10] = v28;
    v41[11] = v44;
    v41[12] = v36;
    v41[13] = sub_1A3DB5554;
    v41[14] = v39;
    v45 = v34;
    v46 = v38;
    sub_1A3DB506C(v42, v43);
    sub_1A3DB506C(v26, v28);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3DB556C(v26, v28);
  sub_1A3DB556C(v50, v49);
}

- (id)actionIconForFeedbackType:(unint64_t)a3 hasResponse:(BOOL)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR___PXEditCleanupFeedbackActionPerformer_actionPerformer);
  if (v4)
  {
    v5 = a4;
    v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
    v8 = self;
    v9 = v4;
    v10 = v7(a3, v5);
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