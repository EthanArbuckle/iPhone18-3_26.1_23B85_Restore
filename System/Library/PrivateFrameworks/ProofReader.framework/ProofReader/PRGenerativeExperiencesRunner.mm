@interface PRGenerativeExperiencesRunner
- (PRGenerativeExperiencesRunner)init;
- (void)requestCancellationForToken:(unint64_t)token;
- (void)requestReviewWithAttributedString:(id)string range:(_NSRange)range options:(id)options completionHandler:(id)handler;
- (void)requestRewritingWithAttributedString:(id)string range:(_NSRange)range rewritingType:(id)type options:(id)options completionHandler:(id)handler;
- (void)requestShortFormRepliesWithContextHistory:(id)history documentType:(id)type options:(id)options completionHandler:(id)handler;
@end

@implementation PRGenerativeExperiencesRunner

- (PRGenerativeExperiencesRunner)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PRGenerativeExperiencesRunner();
  return [(PRGenerativeExperiencesRunner *)&v3 init];
}

- (void)requestCancellationForToken:(unint64_t)token
{
  v3 = [objc_allocWithZone(sub_1D2BF3FC8()) init];
  sub_1D2BF3FB8();
}

- (void)requestShortFormRepliesWithContextHistory:(id)history documentType:(id)type options:(id)options completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = sub_1D2BF3FF8();
  v12 = v11;
  if (options)
  {
    options = sub_1D2BF3FE8();
  }

  _Block_copy(v9);
  historyCopy = history;
  selfCopy = self;
  sub_1D2BF2C00(historyCopy, v10, v12, options, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)requestReviewWithAttributedString:(id)string range:(_NSRange)range options:(id)options completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC72BCD8, &qword_1D2BFD980);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = _Block_copy(handler);
  if (options)
  {
    options = sub_1D2BF3FE8();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = sub_1D2BF4048();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = string;
  v18[5] = location;
  v18[6] = length;
  v18[7] = options;
  v18[8] = sub_1D2BF3470;
  v18[9] = v16;
  stringCopy = string;
  sub_1D2BF13E0(0, 0, v14, &unk_1D2BFDA40, v18);
}

- (void)requestRewritingWithAttributedString:(id)string range:(_NSRange)range rewritingType:(id)type options:(id)options completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  v12 = _Block_copy(handler);
  v13 = sub_1D2BF3FF8();
  v15 = v14;
  if (options)
  {
    options = sub_1D2BF3FE8();
  }

  _Block_copy(v12);
  stringCopy = string;
  selfCopy = self;
  sub_1D2BF2FAC(stringCopy, location, length, v13, v15, options, v12);
  _Block_release(v12);
  _Block_release(v12);
}

@end