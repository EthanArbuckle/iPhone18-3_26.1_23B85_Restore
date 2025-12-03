@interface LXKFKpCcpHk2mY6n
- (LXKFKpCcpHk2mY6n)initWithQueue:(id)queue;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)signpost;
- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id;
@end

@implementation LXKFKpCcpHk2mY6n

- (LXKFKpCcpHk2mY6n)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = LXKFKpCcpHk2mY6n;
  v6 = [(LXKFKpCcpHk2mY6n *)&v9 init];
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
  var1 = compute->var1;
  hmmaCopy = hmma;
  bzCopy = bz;
  v18 = objc_opt_new();
  queue = [(LXKFKpCcpHk2mY6n *)self queue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000297BC;
  v22[3] = &unk_100690200;
  v27 = var1;
  v26 = *ue1;
  v24 = completionCopy;
  computeCopy = compute;
  v22[4] = self;
  v23 = v18;
  v20 = v18;
  v21 = completionCopy;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&compute->var4 i4KDOQicW9Xd5WBz:bzCopy TWWnmIjkBlMfHmma:hmmaCopy completionQueue:queue withCompletion:v22];
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  bzCopy = bz;
  hmmaCopy = hmma;
  completionCopy = completion;
  v13 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  var1 = hash->var1;
  v15 = [[NSMutableArray alloc] initWithCapacity:hash->var4.var2.var3];
  if (hash->var4.var2.var3)
  {
    v16 = 0;
    do
    {
      v17 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:*&hash->var4.var1.var1.var0[8 * v16] gsx0MJUoOpcxcozG:hash->var4.var2.var2[v16]];
      [v15 addObject:v17];

      ++v16;
    }

    while (v16 < hash->var4.var2.var3);
  }

  if (var1 == 2)
  {
    var4 = hash->var4.var2.var4;
  }

  else
  {
    var4 = 100;
  }

  v19 = bzCopy;
  [v13 encodeInt64:0x76B410A5C9FCBEC4 forKey:@"0x5563"];
  queue = [(LXKFKpCcpHk2mY6n *)self queue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100029DF0;
  v25[3] = &unk_100690228;
  v26 = v13;
  v27 = v15;
  v29 = var4;
  v28 = completionCopy;
  v21 = completionCopy;
  v22 = v15;
  v23 = v13;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&hash->var4 i4KDOQicW9Xd5WBz:v19 TWWnmIjkBlMfHmma:hmmaCopy completionQueue:queue withCompletion:v25];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "cs", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, id, "cs", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d,e=%{public,signpost.telemetry:number2}d", v12, 0x14u);
  }
}

@end