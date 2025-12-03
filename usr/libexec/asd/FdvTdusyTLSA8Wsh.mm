@interface FdvTdusyTLSA8Wsh
- (FdvTdusyTLSA8Wsh)initWithQueue:(id)queue;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)signpost;
- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id;
- (void)gatherMapKeys:(_pE7hOQcS3VL3CbFe *)keys i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
@end

@implementation FdvTdusyTLSA8Wsh

- (FdvTdusyTLSA8Wsh)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = FdvTdusyTLSA8Wsh;
  v6 = [(FdvTdusyTLSA8Wsh *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)gatherMapKeys:(_pE7hOQcS3VL3CbFe *)keys i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  bzCopy = bz;
  hmmaCopy = hmma;
  completionCopy = completion;
  v21 = [NSMutableDictionary dictionaryWithCapacity:keys->var2];
  v20 = objc_opt_new();
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v10 = dispatch_group_create();
  if (keys->var2)
  {
    v11 = 0;
    v12 = 136;
    do
    {
      dispatch_group_enter(v10);
      var3 = keys->var3;
      queue = [(FdvTdusyTLSA8Wsh *)self queue];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10002B348;
      v28[3] = &unk_1006902C8;
      v29 = v20;
      v15 = v21;
      v33 = v11;
      v30 = v15;
      v32 = v34;
      v31 = v10;
      [Yp00msaYdVlZesvU evaluateStringTypes2:var3 + v12 - 136 string2:var3 + v12 i4KDOQicW9Xd5WBz:bzCopy TWWnmIjkBlMfHmma:hmmaCopy completionQueue:queue withCompletion:v28];

      ++v11;
      v12 += 272;
    }

    while (v11 < keys->var2);
  }

  queue2 = [(FdvTdusyTLSA8Wsh *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B430;
  block[3] = &unk_1006902F0;
  v25 = v21;
  v26 = completionCopy;
  v27 = v34;
  v17 = v21;
  v18 = completionCopy;
  dispatch_group_notify(v10, queue2, block);

  _Block_object_dispose(v34, 8);
}

- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  bzCopy = bz;
  hmmaCopy = hmma;
  completionCopy = completion;
  v16 = os_signpost_id_generate(qword_1006DF780);
  v17 = qword_1006DF780;
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "wp", "enableTelemetry=YES", buf, 2u);
  }

  p_var4 = &compute->var4;
  *buf = 0;
  v39 = buf;
  v40 = 0x2020000000;
  v41 = 0;
  v20 = os_signpost_id_generate(qword_1006DF780);
  v21 = qword_1006DF780;
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *v37 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "wp_1", "enableTelemetry=YES", v37, 2u);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10002B6B4;
  v26[3] = &unk_100690368;
  v33 = *&ue1->profileIDPrefix;
  profileParsedDate = ue1->profileParsedDate;
  v35 = v16;
  v36 = p_var4;
  v27 = bzCopy;
  v28 = hmmaCopy;
  selfCopy = self;
  v30 = completionCopy;
  v31 = buf;
  v32 = v20;
  v23 = hmmaCopy;
  v24 = bzCopy;
  v25 = completionCopy;
  [(FdvTdusyTLSA8Wsh *)self gatherMapKeys:p_var4 i4KDOQicW9Xd5WBz:v24 TWWnmIjkBlMfHmma:v23 withCompletion:v26];

  _Block_object_dispose(buf, 8);
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  bzCopy = bz;
  hmmaCopy = hmma;
  completionCopy = completion;
  v13 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v13 encodeInt64:0xD65B10DF4565AAELL forKey:@"0x5563"];
  [v13 encodeInt64:hash->var4.var0.var0 forKey:@"0xca8b"];
  [v13 encodeInt64:hash->var4.var0.var4 forKey:@"0x9d77"];
  queue = [(FdvTdusyTLSA8Wsh *)self queue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002C3CC;
  v20[3] = &unk_1006903E0;
  v15 = v13;
  v21 = v15;
  selfCopy = self;
  p_var4 = &hash->var4;
  v16 = bzCopy;
  v23 = v16;
  v17 = hmmaCopy;
  v24 = v17;
  v18 = completionCopy;
  v25 = v18;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&hash->var4.var7.var1 i4KDOQicW9Xd5WBz:v16 TWWnmIjkBlMfHmma:v17 completionQueue:queue withCompletion:v20];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "wp", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, id, "wp", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end