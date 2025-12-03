@interface PXStoryDefaultAutoCurationProducer
- (PXStoryDefaultAutoCurationProducer)init;
- (PXStoryDefaultAutoCurationProducer)initWithCurationContext:(id)context;
- (id)requestCuratedAssetsWithOptions:(unint64_t)options targetOverallDurationInfo:(id *)info resultHandler:(id)handler;
- (id)requestCurationLengthsWithOptions:(unint64_t)options allAssets:(id)assets curatedAssets:(id)curatedAssets resultHandler:(id)handler;
@end

@implementation PXStoryDefaultAutoCurationProducer

- (PXStoryDefaultAutoCurationProducer)initWithCurationContext:(id)context
{
  if (context)
  {
    swift_unknownObjectRetain();
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  return StoryDefaultAutoCurationProducer.init(curationContext:)(v4);
}

- (id)requestCurationLengthsWithOptions:(unint64_t)options allAssets:(id)assets curatedAssets:(id)curatedAssets resultHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  v12 = sub_1A48055BC(assets, curatedAssets, sub_1A4287AD4, v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v12;
}

- (id)requestCuratedAssetsWithOptions:(unint64_t)options targetOverallDurationInfo:(id *)info resultHandler:(id)handler
{
  var0 = info->var0;
  v9 = info->var1.var0.var0;
  var3 = info->var1.var0.var3;
  v11 = info->var1.var1.var0;
  v12 = info->var1.var2.var0;
  v13 = info->var1.var2.var3;
  v30 = info->var1.var1.var3;
  v31 = v13;
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&info->var1.var2.var1;
  v18 = *&info->var1.var1.var1;
  v19 = *&info->var1.var0.var1;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = objc_opt_self();
  selfCopy = self;
  discreteProgressWithTotalUnitCount_ = [v22 discreteProgressWithTotalUnitCount_];
  v25 = sub_1A524CCB4();
  (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = selfCopy;
  v26[5] = var0;
  v26[6] = v9;
  v26[7] = v19;
  v26[8] = var3;
  v26[9] = v11;
  v26[10] = v18;
  v27 = v31;
  v26[11] = v30;
  v26[12] = v12;
  v26[13] = v17;
  v26[14] = v27;
  v26[15] = discreteProgressWithTotalUnitCount_;
  v26[16] = sub_1A3E79128;
  v26[17] = v21;
  v28 = discreteProgressWithTotalUnitCount_;
  sub_1A3D4D930(0, 0, v16, &unk_1A53647A0, v26);

  return v28;
}

- (PXStoryDefaultAutoCurationProducer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end