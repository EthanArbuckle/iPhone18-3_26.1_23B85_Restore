@interface NDFRjmNSzUL5yu9I
- (NDFRjmNSzUL5yu9I)initWithQueue:(id)queue;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)signpost;
- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id;
- (void)gatherOutputExpressionsForDF:(_euh2HcGTkBGXYGKw *)f i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
@end

@implementation NDFRjmNSzUL5yu9I

- (NDFRjmNSzUL5yu9I)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = NDFRjmNSzUL5yu9I;
  v6 = [(NDFRjmNSzUL5yu9I *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)gatherOutputExpressionsForDF:(_euh2HcGTkBGXYGKw *)f i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  bzCopy = bz;
  hmmaCopy = hmma;
  completionCopy = completion;
  v9 = [NSMutableArray arrayWithCapacity:f->var6];
  v10 = [NSMutableArray arrayWithCapacity:f->var6];
  if (f->var6)
  {
    v11 = 0;
    do
    {
      v12 = +[NSNull null];
      [v9 addObject:v12];

      v13 = +[NSNull null];
      [v10 addObject:v13];

      ++v11;
    }

    while (v11 < f->var6);
  }

  v14 = dispatch_group_create();
  v25 = objc_opt_new();
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  if (f->var6)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      dispatch_group_enter(v14);
      var4 = f->var4;
      var5 = f->var5;
      queue = [(NDFRjmNSzUL5yu9I *)self queue];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000164C8;
      v34[3] = &unk_10068F630;
      v35 = v25;
      v39 = v41;
      v36 = v9;
      v40 = v16;
      v37 = v10;
      v38 = v14;
      [Yp00msaYdVlZesvU evaluateStringTypes2:&var4[v15] string2:&var5[v15] i4KDOQicW9Xd5WBz:bzCopy TWWnmIjkBlMfHmma:hmmaCopy completionQueue:queue withCompletion:v34];

      ++v16;
      ++v15;
    }

    while (v16 < f->var6);
  }

  queue2 = [(NDFRjmNSzUL5yu9I *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000165A8;
  block[3] = &unk_10068F658;
  v30 = v9;
  v31 = v10;
  v32 = completionCopy;
  v33 = v41;
  v21 = v10;
  v22 = v9;
  v23 = completionCopy;
  dispatch_group_notify(v14, queue2, block);

  _Block_object_dispose(v41, 8);
}

- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  bzCopy = bz;
  hmmaCopy = hmma;
  completionCopy = completion;
  var0 = compute->var4.var0.var0;
  compute = (compute + 24);
  v17 = *(&compute[-1].var4.var28 + 97) > 1u;
  var0 = [NSString stringWithFormat:@"%.*s", compute->var2, var0];
  queue = [(NDFRjmNSzUL5yu9I *)self queue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000167D4;
  v24[3] = &unk_10068F738;
  v28 = completionCopy;
  computeCopy = compute;
  v24[4] = self;
  v25 = bzCopy;
  v26 = hmmaCopy;
  v27 = var0;
  v31 = v17;
  v30 = *ue1;
  v20 = var0;
  v21 = hmmaCopy;
  v22 = bzCopy;
  v23 = completionCopy;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&compute->var3 i4KDOQicW9Xd5WBz:v22 TWWnmIjkBlMfHmma:v21 completionQueue:queue withCompletion:v24];
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  bzCopy = bz;
  hmmaCopy = hmma;
  completionCopy = completion;
  v14 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v14 encodeInt64:0x195A0A8200DBA60CLL forKey:@"0x5563"];
  v15 = [NSString stringWithFormat:@"%.*s", hash->var4.var1.var0.var1, hash->var4.var0.var0];
  [v14 encodeObject:v15];
  queue = [(NDFRjmNSzUL5yu9I *)self queue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100017284;
  v21[3] = &unk_10068F788;
  v22 = v14;
  selfCopy = self;
  v24 = bzCopy;
  v25 = hmmaCopy;
  v26 = completionCopy;
  hashCopy = hash;
  v17 = completionCopy;
  v18 = hmmaCopy;
  v19 = bzCopy;
  v20 = v14;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&hash->var4.var15.var2.var1 i4KDOQicW9Xd5WBz:v19 TWWnmIjkBlMfHmma:v18 completionQueue:queue withCompletion:v21];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "bi", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, id, "bi", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end