@interface BYUw5HRbA4ULYJxO
- (BYUw5HRbA4ULYJxO)init;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)a3;
- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4;
@end

@implementation BYUw5HRbA4ULYJxO

- (BYUw5HRbA4ULYJxO)init
{
  v3 = objc_opt_new();
  manager = self->manager;
  self->manager = v3;

  v6.receiver = self;
  v6.super_class = BYUw5HRbA4ULYJxO;
  return [(BYUw5HRbA4ULYJxO *)&v6 init];
}

- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9
{
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = a9;
  v17 = os_signpost_id_generate(qword_1006DF780);
  v18 = qword_1006DF780;
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "mo", "enableTelemetry=YES", buf, 2u);
  }

  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  *buf = 0;
  v30 = buf;
  v31 = 0x3032000000;
  v32 = sub_100020BF4;
  v33 = sub_100020C04;
  v34 = objc_opt_new();
  v20 = [[_TtC3asd14ASMotionHelper alloc] initWithManager:self->manager];
  var0 = a3->var4.var0.var0;
  v21 = a3->var4.var0.var1.var0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100020C0C;
  v24[3] = &unk_10068FDC8;
  v26 = v35;
  v27 = buf;
  v28 = v17;
  v23 = v16;
  v25 = v23;
  [(ASMotionHelper *)v20 durationOfActivitiesWithStartDateOffset:var0 and:v21 completionHandler:v24];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v35, 8);
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7
{
  v8 = a7;
  v9 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v9 encodeInt64:0xFCDA66A5447A8D01 forKey:@"0x5563"];
  [v9 encodeInt64:a3->var4.var0.var0 forKey:@"0xf2bb"];
  [v9 encodeInt64:a3->var4.var11.var1 forKey:@"0xe33c"];
  v8[2](v8, [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:v9]);
}

- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)a3
{
  v4 = os_signpost_id_generate(qword_1006DF788);
  v5 = qword_1006DF788;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    profileIDPrefix = a3->profileIDPrefix;
    dataframeIndex = a3->dataframeIndex;
    v10[0] = 67240448;
    v10[1] = profileIDPrefix;
    v11 = 1026;
    v12 = dataframeIndex;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "mo", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }

  return v4;
}

- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4
{
  v6 = qword_1006DF788;
  v7 = v6;
  if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    profileIDPrefix = a3->profileIDPrefix;
    dataframeIndex = a3->dataframeIndex;
    v10[0] = 67240448;
    v10[1] = profileIDPrefix;
    v11 = 1026;
    v12 = dataframeIndex;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, a4, "mo", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end