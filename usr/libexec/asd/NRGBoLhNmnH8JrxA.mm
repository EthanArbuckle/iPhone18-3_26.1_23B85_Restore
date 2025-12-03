@interface NRGBoLhNmnH8JrxA
- (id)bagIDForDF:(const _KUwyEjpVZR65eUyl *)f;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)signpost;
- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id;
- (void)processServerJSONDataframeForBagWithID:(id)d withCompletion:(id)completion;
@end

@implementation NRGBoLhNmnH8JrxA

- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  completionCopy = completion;
  v13 = os_signpost_id_generate(qword_1006DF780);
  v14 = qword_1006DF780;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "jdf", "enableTelemetry=YES", buf, 2u);
  }

  v16 = [(NRGBoLhNmnH8JrxA *)self bagIDForDF:compute];
  if (v16)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100025DBC;
    v22[3] = &unk_10068FFD0;
    v24 = v13;
    v25 = *&ue1->profileIDPrefix;
    profileParsedDate = ue1->profileParsedDate;
    v23 = completionCopy;
    [(NRGBoLhNmnH8JrxA *)self processServerJSONDataframeForBagWithID:v16 withCompletion:v22];
    v17 = v23;
  }

  else
  {
    v18 = qword_1006DF780;
    v19 = v18;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      profileIDPrefix = ue1->profileIDPrefix;
      dataframeIndex = ue1->dataframeIndex;
      *buf = 67240448;
      v28 = profileIDPrefix;
      v29 = 1026;
      v30 = dataframeIndex;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v13, "jdf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
    }

    v17 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:&__NSArray0__struct qfSDGTGvqd3Hruzg:165022];
    (*(completionCopy + 2))(completionCopy, v17);
  }
}

- (id)bagIDForDF:(const _KUwyEjpVZR65eUyl *)f
{
  var1 = f->var1;
  if (var1 == 2)
  {
    v4 = [[NSUUID alloc] initWithUUIDBytes:&f->var4];
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

- (void)processServerJSONDataframeForBagWithID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v7 = +[_TtC3asd18RavioliManagerObjC shared];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100026008;
  v10[3] = &unk_10068FFF8;
  v11 = dCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  [v7 fetchRavioliDataFromStoreFor:v9 completion:v10];
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  completionCopy = completion;
  v9 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v9 encodeInt64:0x569FF933A7589E17 forKey:@"0x5563"];
  [v9 encodeInt:hash->var1 forKey:@"0x6595"];
  if (hash->var1 == 2)
  {
    [v9 encodeBytes:&hash->var4 length:16];
  }

  completionCopy[2](completionCopy, [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:v9]);
}

- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)signpost
{
  v4 = os_signpost_id_generate(qword_1006DF788);
  v5 = qword_1006DF788;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    profileIDPrefix = signpost->profileIDPrefix;
    dataframeIndex = signpost->dataframeIndex;
    v10[0] = 67240448;
    v10[1] = profileIDPrefix;
    v11 = 1026;
    v12 = dataframeIndex;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "jdf", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }

  return v4;
}

- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id
{
  v6 = qword_1006DF788;
  v7 = v6;
  if (id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    profileIDPrefix = signpost->profileIDPrefix;
    dataframeIndex = signpost->dataframeIndex;
    v10[0] = 67240448;
    v10[1] = profileIDPrefix;
    v11 = 1026;
    v12 = dataframeIndex;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, id, "jdf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end