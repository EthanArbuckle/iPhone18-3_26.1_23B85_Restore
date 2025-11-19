@interface CatchUpFetchController
- (NSArray)mediaInfos;
- (_TtC8VideosUI22CatchUpFetchController)initWithMediaInfos:(id)a3;
- (id)loadPlayerAtIndex:(unint64_t)a3;
- (void)appendMediaInfos:(id)a3;
- (void)loadImageAtIndex:(unint64_t)a3 completion:(id)a4;
- (void)setMediaInfos:(id)a3;
@end

@implementation CatchUpFetchController

- (NSArray)mediaInfos
{
  v2 = self;
  sub_1E3AC7314();

  sub_1E3280A90(0, &qword_1EE23B350);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062A4();
  OUTLINED_FUNCTION_50();

  return v2;
}

- (void)setMediaInfos:(id)a3
{
  sub_1E3280A90(0, &qword_1EE23B350);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062B4();
  v4 = self;
  sub_1E3AC74D8();
}

- (void)appendMediaInfos:(id)a3
{
  sub_1E3280A90(0, &qword_1EE23B350);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062B4();
  v4 = self;
  OUTLINED_FUNCTION_50();
  sub_1E3AC86E8();
}

- (void)loadImageAtIndex:(unint64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = self;

  sub_1E38364EC(&unk_1E42B87C0, v7);
}

- (id)loadPlayerAtIndex:(unint64_t)a3
{
  v4 = self;
  v5 = OUTLINED_FUNCTION_50();
  v6 = sub_1E3AC91B4(v5);

  return v6;
}

- (_TtC8VideosUI22CatchUpFetchController)initWithMediaInfos:(id)a3
{
  sub_1E3280A90(0, &qword_1EE23B350);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062B4();
  sub_1E3AC9C80();
}

@end