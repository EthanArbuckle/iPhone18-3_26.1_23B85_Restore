@interface PRGenerativeExperiencesRunner
- (PRGenerativeExperiencesRunner)init;
- (void)requestCancellationForToken:(unint64_t)a3;
- (void)requestReviewWithAttributedString:(id)a3 range:(_NSRange)a4 options:(id)a5 completionHandler:(id)a6;
- (void)requestRewritingWithAttributedString:(id)a3 range:(_NSRange)a4 rewritingType:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)requestShortFormRepliesWithContextHistory:(id)a3 documentType:(id)a4 options:(id)a5 completionHandler:(id)a6;
@end

@implementation PRGenerativeExperiencesRunner

- (PRGenerativeExperiencesRunner)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PRGenerativeExperiencesRunner();
  return [(PRGenerativeExperiencesRunner *)&v3 init];
}

- (void)requestCancellationForToken:(unint64_t)a3
{
  v3 = [objc_allocWithZone(sub_1D2BF3FC8()) init];
  sub_1D2BF3FB8();
}

- (void)requestShortFormRepliesWithContextHistory:(id)a3 documentType:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_1D2BF3FF8();
  v12 = v11;
  if (a5)
  {
    a5 = sub_1D2BF3FE8();
  }

  _Block_copy(v9);
  v13 = a3;
  v14 = self;
  sub_1D2BF2C00(v13, v10, v12, a5, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)requestReviewWithAttributedString:(id)a3 range:(_NSRange)a4 options:(id)a5 completionHandler:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC72BCD8, &qword_1D2BFD980);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = _Block_copy(a6);
  if (a5)
  {
    a5 = sub_1D2BF3FE8();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = sub_1D2BF4048();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a3;
  v18[5] = location;
  v18[6] = length;
  v18[7] = a5;
  v18[8] = sub_1D2BF3470;
  v18[9] = v16;
  v19 = a3;
  sub_1D2BF13E0(0, 0, v14, &unk_1D2BFDA40, v18);
}

- (void)requestRewritingWithAttributedString:(id)a3 range:(_NSRange)a4 rewritingType:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  length = a4.length;
  location = a4.location;
  v12 = _Block_copy(a7);
  v13 = sub_1D2BF3FF8();
  v15 = v14;
  if (a6)
  {
    a6 = sub_1D2BF3FE8();
  }

  _Block_copy(v12);
  v16 = a3;
  v17 = self;
  sub_1D2BF2FAC(v16, location, length, v13, v15, a6, v12);
  _Block_release(v12);
  _Block_release(v12);
}

@end