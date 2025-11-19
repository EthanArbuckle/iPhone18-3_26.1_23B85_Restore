@interface GQdxG3xjQCtxhh8w
- (GQdxG3xjQCtxhh8w)initWithQueue:(id)a3;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)a3;
- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4;
@end

@implementation GQdxG3xjQCtxhh8w

- (GQdxG3xjQCtxhh8w)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GQdxG3xjQCtxhh8w;
  v6 = [(GQdxG3xjQCtxhh8w *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9
{
  v21 = a6;
  v14 = a7;
  v15 = a8;
  v16 = a9;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_100018694;
  v30[4] = sub_1000186A4;
  v31 = 0;
  v17 = [(GQdxG3xjQCtxhh8w *)self queue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000186AC;
  v22[3] = &unk_10068F8C8;
  v18 = v16;
  v26 = v18;
  p_var4 = &a3->var4;
  v19 = v14;
  v23 = v19;
  v20 = v15;
  v24 = v20;
  v25 = self;
  v27 = v30;
  v29 = *a4;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&a3->var4.var7.var1 i4KDOQicW9Xd5WBz:v19 TWWnmIjkBlMfHmma:v20 completionQueue:v17 withCompletion:v22];

  _Block_object_dispose(v30, 8);
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7
{
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v14 encodeInt64:0x9F34F2F6C05E11C5 forKey:@"0x5563"];
  v15 = [(GQdxG3xjQCtxhh8w *)self queue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100018C58;
  v20[3] = &unk_10068F788;
  v21 = v14;
  v22 = v11;
  v23 = v12;
  v24 = self;
  v25 = v13;
  v26 = a3;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v14;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&a3->var4.var7.var1 i4KDOQicW9Xd5WBz:v18 TWWnmIjkBlMfHmma:v17 completionQueue:v15 withCompletion:v20];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ch", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, a4, "ch", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end