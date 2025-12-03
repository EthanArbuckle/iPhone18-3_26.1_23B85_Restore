@interface Cb88V9Z9PGLm1XBw
- (Cb88V9Z9PGLm1XBw)initWithQueue:(id)queue;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)signpost;
- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id;
@end

@implementation Cb88V9Z9PGLm1XBw

- (Cb88V9Z9PGLm1XBw)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = Cb88V9Z9PGLm1XBw;
  v6 = [(Cb88V9Z9PGLm1XBw *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  vCopy = v;
  bzCopy = bz;
  hmmaCopy = hmma;
  completionCopy = completion;
  v18 = +[YIbYnDZMoU7hwSYC sharedInstance];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_100022C1C;
  v28[4] = sub_100022C2C;
  v29 = 0;
  queue = [(Cb88V9Z9PGLm1XBw *)self queue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100022C34;
  v22[3] = &unk_10068F8A0;
  v20 = completionCopy;
  v24 = v20;
  v21 = v18;
  v25 = v28;
  computeCopy = compute;
  v23 = v21;
  v27 = *ue1;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&compute->var4.var7.var1 i4KDOQicW9Xd5WBz:bzCopy TWWnmIjkBlMfHmma:hmmaCopy completionQueue:queue withCompletion:v22];

  _Block_object_dispose(v28, 8);
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  completionCopy = completion;
  hmmaCopy = hmma;
  bzCopy = bz;
  v14 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  queue = [(Cb88V9Z9PGLm1XBw *)self queue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100023090;
  v18[3] = &unk_10068FE68;
  v20 = completionCopy;
  hashCopy = hash;
  v19 = v14;
  v16 = completionCopy;
  v17 = v14;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&hash->var4.var7.var1 i4KDOQicW9Xd5WBz:bzCopy TWWnmIjkBlMfHmma:hmmaCopy completionQueue:queue withCompletion:v18];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "pkc", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, id, "pkc", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end