@interface BH7wjfNixdWGvjfQ
- (BH7wjfNixdWGvjfQ)initWithQueue:(id)queue;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)signpost;
- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id;
@end

@implementation BH7wjfNixdWGvjfQ

- (BH7wjfNixdWGvjfQ)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = BH7wjfNixdWGvjfQ;
  v6 = [(BH7wjfNixdWGvjfQ *)&v9 init];
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
  v16 = +[YIbYnDZMoU7hwSYC sharedInstance];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_10002358C;
  v35[4] = sub_10002359C;
  v36 = 0;
  var0 = compute->var4.var8.var0;
  var4 = compute->var4.var0.var4;
  v19 = [NSMutableArray arrayWithCapacity:var4];
  queue = [(BH7wjfNixdWGvjfQ *)self queue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000235A4;
  v26[3] = &unk_10068FE90;
  v21 = completionCopy;
  v29 = v21;
  v22 = v16;
  v27 = v22;
  v31 = var4;
  computeCopy = compute;
  v23 = v19;
  v33 = var0;
  v28 = v23;
  v30 = v35;
  v34 = *ue1;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&compute->var4.var7.var1 i4KDOQicW9Xd5WBz:bzCopy TWWnmIjkBlMfHmma:hmmaCopy completionQueue:queue withCompletion:v26];

  _Block_object_dispose(v35, 8);
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  bzCopy = bz;
  hmmaCopy = hmma;
  completionCopy = completion;
  v14 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  v15 = [[NSMutableArray alloc] initWithCapacity:hash->var4.var0.var4];
  if (hash->var4.var0.var4)
  {
    v16 = 0;
    do
    {
      v17 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:*&hash->var4.var2.var2[2 * v16] gsx0MJUoOpcxcozG:*(hash->var4.var0.var3 + v16)];
      [v15 addObject:v17];

      ++v16;
    }

    while (v16 < hash->var4.var0.var4);
  }

  [v14 encodeObject:v15];
  [v14 encodeInt64:hash->var4.var8.var0 forKey:@"0x0x5bde"];
  [v14 encodeInt64:0x48A30D07AA9F179CLL forKey:@"0x5563"];
  queue = [(BH7wjfNixdWGvjfQ *)self queue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100023AF8;
  v21[3] = &unk_10068F8F0;
  v22 = v14;
  v23 = completionCopy;
  v19 = completionCopy;
  v20 = v14;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&hash->var4.var7.var1 i4KDOQicW9Xd5WBz:bzCopy TWWnmIjkBlMfHmma:hmmaCopy completionQueue:queue withCompletion:v21];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "pk", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, id, "pk", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end