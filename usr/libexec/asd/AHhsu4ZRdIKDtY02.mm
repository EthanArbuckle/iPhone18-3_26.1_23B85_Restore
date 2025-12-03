@interface AHhsu4ZRdIKDtY02
- (AHhsu4ZRdIKDtY02)initWithQueue:(id)queue;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)signpost;
- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id;
@end

@implementation AHhsu4ZRdIKDtY02

- (AHhsu4ZRdIKDtY02)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = AHhsu4ZRdIKDtY02;
  v6 = [(AHhsu4ZRdIKDtY02 *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  completionCopy = completion;
  hmmaCopy = hmma;
  bzCopy = bz;
  queue = [(AHhsu4ZRdIKDtY02 *)self queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002A1FC;
  v19[3] = &unk_100690278;
  v19[4] = self;
  v20 = completionCopy;
  computeCopy = compute;
  v22 = *ue1;
  v18 = completionCopy;
  [Yp00msaYdVlZesvU evaluateStringTypes2:&compute->var4 string2:&compute->var4.var28 + 17 i4KDOQicW9Xd5WBz:bzCopy TWWnmIjkBlMfHmma:hmmaCopy completionQueue:queue withCompletion:v19];
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  completionCopy = completion;
  hmmaCopy = hmma;
  bzCopy = bz;
  v14 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v14 encodeInt64:0x42A9F8AC261B9FEFLL forKey:@"0x5563"];
  queue = [(AHhsu4ZRdIKDtY02 *)self queue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002A8EC;
  v18[3] = &unk_1006902A0;
  v20 = completionCopy;
  hashCopy = hash;
  v19 = v14;
  v16 = completionCopy;
  v17 = v14;
  [Yp00msaYdVlZesvU evaluateStringTypes2:&hash->var4 string2:&hash->var4.var28 + 17 i4KDOQicW9Xd5WBz:bzCopy TWWnmIjkBlMfHmma:hmmaCopy completionQueue:queue withCompletion:v18];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "sl", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }

  return v4;
}

- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id
{
  v7 = qword_1006DF788;
  v8 = v7;
  if (id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    profileIDPrefix = signpost->profileIDPrefix;
    dataframeIndex = signpost->dataframeIndex;
    computeError = self->computeError;
    v12[0] = 67240704;
    v12[1] = profileIDPrefix;
    v13 = 1026;
    v14 = dataframeIndex;
    v15 = 1026;
    v16 = computeError;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, id, "sl", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d,e=%{public,signpost.telemetry:number2}d", v12, 0x14u);
  }
}

@end