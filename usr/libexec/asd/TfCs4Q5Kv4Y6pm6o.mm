@interface TfCs4Q5Kv4Y6pm6o
- (BOOL)hasActiveCalls;
- (TfCs4Q5Kv4Y6pm6o)init;
- (id)collectCallParametersFor:(id)a3;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)a3;
- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4;
@end

@implementation TfCs4Q5Kv4Y6pm6o

- (TfCs4Q5Kv4Y6pm6o)init
{
  v8.receiver = self;
  v8.super_class = TfCs4Q5Kv4Y6pm6o;
  v2 = [(TfCs4Q5Kv4Y6pm6o *)&v8 init];
  v3 = dispatch_queue_create("com.apple.asd.acdfe", 0);
  queue = v2->_queue;
  v2->_queue = v3;

  v5 = [[TUCallCenter alloc] initWithQueue:v2->_queue];
  tuCallCenter = v2->_tuCallCenter;
  v2->_tuCallCenter = v5;

  return v2;
}

- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9
{
  v11 = a9;
  if ([(TfCs4Q5Kv4Y6pm6o *)self hasActiveCalls])
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014850;
    block[3] = &unk_10068F5E0;
    block[4] = self;
    v16 = *&a4->profileIDPrefix;
    profileParsedDate = a4->profileParsedDate;
    v15 = v11;
    dispatch_async(queue, block);
  }

  else
  {
    v13 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:&__NSArray0__struct qfSDGTGvqd3Hruzg:178001];
    (*(v11 + 2))(v11, v13);
  }
}

- (id)collectCallParametersFor:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isHostedOnCurrentDevice]);
  [v4 setObject:v5 forKeyedSubscript:@"ho"];

  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isEndpointOnCurrentDevice]);
  [v4 setObject:v6 forKeyedSubscript:@"ep"];

  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 status]);
  [v4 setObject:v7 forKeyedSubscript:@"ct"];

  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 service]);
  [v4 setObject:v8 forKeyedSubscript:@"cs"];

  v9 = [v3 handle];
  v10 = [v9 value];
  [v4 setObject:v10 forKeyedSubscript:@"hd"];

  v11 = [v3 handle];
  v12 = [v11 siriDisplayName];
  [v4 setObject:v12 forKeyedSubscript:@"hs"];

  [v3 callDuration];
  v13 = [NSNumber numberWithDouble:?];
  [v4 setObject:v13 forKeyedSubscript:@"cd"];

  v14 = [v3 dateConnected];
  [v4 setObject:v14 forKeyedSubscript:@"dc"];

  v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 callSubType]);
  [v4 setObject:v15 forKeyedSubscript:@"cb"];

  v16 = [v3 screenSharingType];
  v17 = [NSNumber numberWithUnsignedInteger:v16];
  [v4 setObject:v17 forKeyedSubscript:@"ss"];

  return v4;
}

- (BOOL)hasActiveCalls
{
  v2 = os_signpost_id_generate(qword_1006DF780);
  v3 = qword_1006DF780;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ac_1", "enableTelemetry=YES", buf, 2u);
  }

  v5 = +[AVSystemController sharedAVSystemController];
  v6 = [v5 attributeForKey:AVSystemController_CallIsActive];

  v7 = qword_1006DF780;
  v8 = v7;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v2, "ac_1", "", v11, 2u);
  }

  v9 = [v6 BOOLValue];
  return v9;
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7
{
  v7 = a7;
  v8 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v8 encodeInt64:0xC2940413E020F12ALL forKey:@"0x5563"];
  v7[2](v7, [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:v8]);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ac", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, a4, "ac", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end