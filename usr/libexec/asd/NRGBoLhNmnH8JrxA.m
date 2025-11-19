@interface NRGBoLhNmnH8JrxA
- (id)bagIDForDF:(const _KUwyEjpVZR65eUyl *)a3;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)a3;
- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4;
- (void)processServerJSONDataframeForBagWithID:(id)a3 withCompletion:(id)a4;
@end

@implementation NRGBoLhNmnH8JrxA

- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9
{
  v12 = a9;
  v13 = os_signpost_id_generate(qword_1006DF780);
  v14 = qword_1006DF780;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "jdf", "enableTelemetry=YES", buf, 2u);
  }

  v16 = [(NRGBoLhNmnH8JrxA *)self bagIDForDF:a3];
  if (v16)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100025DBC;
    v22[3] = &unk_10068FFD0;
    v24 = v13;
    v25 = *&a4->profileIDPrefix;
    profileParsedDate = a4->profileParsedDate;
    v23 = v12;
    [(NRGBoLhNmnH8JrxA *)self processServerJSONDataframeForBagWithID:v16 withCompletion:v22];
    v17 = v23;
  }

  else
  {
    v18 = qword_1006DF780;
    v19 = v18;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      profileIDPrefix = a4->profileIDPrefix;
      dataframeIndex = a4->dataframeIndex;
      *buf = 67240448;
      v28 = profileIDPrefix;
      v29 = 1026;
      v30 = dataframeIndex;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v13, "jdf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
    }

    v17 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:&__NSArray0__struct qfSDGTGvqd3Hruzg:165022];
    (*(v12 + 2))(v12, v17);
  }
}

- (id)bagIDForDF:(const _KUwyEjpVZR65eUyl *)a3
{
  var1 = a3->var1;
  if (var1 == 2)
  {
    v4 = [[NSUUID alloc] initWithUUIDBytes:&a3->var4];
  }

  else if (var1 == 1)
  {
    v4 = +[_TtC3asd16RavioliConstants ravioliUUID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)processServerJSONDataframeForBagWithID:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[_TtC3asd18RavioliManagerObjC shared];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100026008;
  v10[3] = &unk_10068FFF8;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 fetchRavioliDataFromStoreFor:v9 completion:v10];
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7
{
  v8 = a7;
  v9 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v9 encodeInt64:0x569FF933A7589E17 forKey:@"0x5563"];
  [v9 encodeInt:a3->var1 forKey:@"0x6595"];
  if (a3->var1 == 2)
  {
    [v9 encodeBytes:&a3->var4 length:16];
  }

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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "jdf", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, a4, "jdf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end