@interface RIBdWx6IE2Tv357l
- (RIBdWx6IE2Tv357l)initWithQueue:(id)queue;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)signpost;
- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id;
@end

@implementation RIBdWx6IE2Tv357l

- (RIBdWx6IE2Tv357l)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = RIBdWx6IE2Tv357l;
  v6 = [(RIBdWx6IE2Tv357l *)&v9 init];
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
  queue = [(RIBdWx6IE2Tv357l *)self queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100023EC4;
  v19[3] = &unk_10068FEB8;
  v21 = *ue1;
  v20 = completionCopy;
  v18 = completionCopy;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&compute->var4 i4KDOQicW9Xd5WBz:bzCopy TWWnmIjkBlMfHmma:hmmaCopy completionQueue:queue withCompletion:v19];
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  completionCopy = completion;
  hmmaCopy = hmma;
  bzCopy = bz;
  v14 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v14 encodeInt64:0xF6509D9806D22585 forKey:@"0x5563"];
  queue = [(RIBdWx6IE2Tv357l *)self queue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100024390;
  v18[3] = &unk_10068F8F0;
  v19 = v14;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = v14;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&hash->var4 i4KDOQicW9Xd5WBz:bzCopy TWWnmIjkBlMfHmma:hmmaCopy completionQueue:queue withCompletion:v18];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "pl", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, id, "pl", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end