@interface LW1stJEQ13Gby8hG
- (LW1stJEQ13Gby8hG)initWithQueue:(id)queue;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)signpost;
- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id;
@end

@implementation LW1stJEQ13Gby8hG

- (LW1stJEQ13Gby8hG)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = LW1stJEQ13Gby8hG;
  v6 = [(LW1stJEQ13Gby8hG *)&v9 init];
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
  hmmaCopy = hmma;
  completionCopy = completion;
  var1 = compute->var1;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100019128;
  v21[3] = &unk_10068F940;
  v24 = completionCopy;
  computeCopy = compute;
  v26 = *ue1;
  v22 = vCopy;
  v23 = hmmaCopy;
  rsCopy = rs;
  v28 = var1;
  v18 = hmmaCopy;
  v19 = vCopy;
  v20 = completionCopy;
  [Yp00msaYdVlZesvU eJSthhES04gLkDjz:&compute->var4 i4KDOQicW9Xd5WBz:bz TWWnmIjkBlMfHmma:v18 withCompletion:v21];
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  vCopy = v;
  hmmaCopy = hmma;
  completionCopy = completion;
  bzCopy = bz;
  v16 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v16 encodeInt64:0x434A3129DEC70B42 forKey:@"0x5563"];
  [v16 encodeInt64:hash->var4.var1.var0.var1 forKey:@"0xfd1e"];
  [v16 encodeInt64:hash->var1 forKey:@"0x6595"];
  queue = [(LW1stJEQ13Gby8hG *)self queue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100019770;
  v22[3] = &unk_10068F990;
  v23 = v16;
  v24 = vCopy;
  v26 = completionCopy;
  hashCopy = hash;
  v25 = hmmaCopy;
  v18 = completionCopy;
  v19 = hmmaCopy;
  v20 = vCopy;
  v21 = v16;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&hash->var4.var15.var2.var1 i4KDOQicW9Xd5WBz:bzCopy TWWnmIjkBlMfHmma:v19 completionQueue:queue withCompletion:v22];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "idf", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, id, "idf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end