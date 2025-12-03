@interface CatchUpFetchController
- (NSArray)mediaInfos;
- (_TtC8VideosUI22CatchUpFetchController)initWithMediaInfos:(id)infos;
- (id)loadPlayerAtIndex:(unint64_t)index;
- (void)appendMediaInfos:(id)infos;
- (void)loadImageAtIndex:(unint64_t)index completion:(id)completion;
- (void)setMediaInfos:(id)infos;
@end

@implementation CatchUpFetchController

- (NSArray)mediaInfos
{
  selfCopy = self;
  sub_1E3AC7314();

  sub_1E3280A90(0, &qword_1EE23B350);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062A4();
  OUTLINED_FUNCTION_50();

  return selfCopy;
}

- (void)setMediaInfos:(id)infos
{
  sub_1E3280A90(0, &qword_1EE23B350);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062B4();
  selfCopy = self;
  sub_1E3AC74D8();
}

- (void)appendMediaInfos:(id)infos
{
  sub_1E3280A90(0, &qword_1EE23B350);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062B4();
  selfCopy = self;
  OUTLINED_FUNCTION_50();
  sub_1E3AC86E8();
}

- (void)loadImageAtIndex:(unint64_t)index completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = index;
  v7[3] = v6;
  v7[4] = self;
  selfCopy = self;

  sub_1E38364EC(&unk_1E42B87C0, v7);
}

- (id)loadPlayerAtIndex:(unint64_t)index
{
  selfCopy = self;
  v5 = OUTLINED_FUNCTION_50();
  v6 = sub_1E3AC91B4(v5);

  return v6;
}

- (_TtC8VideosUI22CatchUpFetchController)initWithMediaInfos:(id)infos
{
  sub_1E3280A90(0, &qword_1EE23B350);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062B4();
  sub_1E3AC9C80();
}

@end