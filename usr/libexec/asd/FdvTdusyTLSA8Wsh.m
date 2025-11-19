@interface FdvTdusyTLSA8Wsh
- (FdvTdusyTLSA8Wsh)initWithQueue:(id)a3;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)a3;
- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4;
- (void)gatherMapKeys:(_pE7hOQcS3VL3CbFe *)a3 i4KDOQicW9Xd5WBz:(id)a4 TWWnmIjkBlMfHmma:(id)a5 withCompletion:(id)a6;
@end

@implementation FdvTdusyTLSA8Wsh

- (FdvTdusyTLSA8Wsh)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FdvTdusyTLSA8Wsh;
  v6 = [(FdvTdusyTLSA8Wsh *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (void)gatherMapKeys:(_pE7hOQcS3VL3CbFe *)a3 i4KDOQicW9Xd5WBz:(id)a4 TWWnmIjkBlMfHmma:(id)a5 withCompletion:(id)a6
{
  v23 = a4;
  v22 = a5;
  v19 = a6;
  v21 = [NSMutableDictionary dictionaryWithCapacity:a3->var2];
  v20 = objc_opt_new();
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v10 = dispatch_group_create();
  if (a3->var2)
  {
    v11 = 0;
    v12 = 136;
    do
    {
      dispatch_group_enter(v10);
      var3 = a3->var3;
      v14 = [(FdvTdusyTLSA8Wsh *)self queue];
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
      [Yp00msaYdVlZesvU evaluateStringTypes2:var3 + v12 - 136 string2:var3 + v12 i4KDOQicW9Xd5WBz:v23 TWWnmIjkBlMfHmma:v22 completionQueue:v14 withCompletion:v28];

      ++v11;
      v12 += 272;
    }

    while (v11 < a3->var2);
  }

  v16 = [(FdvTdusyTLSA8Wsh *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B430;
  block[3] = &unk_1006902F0;
  v25 = v21;
  v26 = v19;
  v27 = v34;
  v17 = v21;
  v18 = v19;
  dispatch_group_notify(v10, v16, block);

  _Block_object_dispose(v34, 8);
}

- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9
{
  v13 = a7;
  v14 = a8;
  v15 = a9;
  v16 = os_signpost_id_generate(qword_1006DF780);
  v17 = qword_1006DF780;
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "wp", "enableTelemetry=YES", buf, 2u);
  }

  p_var4 = &a3->var4;
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
  v33 = *&a4->profileIDPrefix;
  profileParsedDate = a4->profileParsedDate;
  v35 = v16;
  v36 = p_var4;
  v27 = v13;
  v28 = v14;
  v29 = self;
  v30 = v15;
  v31 = buf;
  v32 = v20;
  v23 = v14;
  v24 = v13;
  v25 = v15;
  [(FdvTdusyTLSA8Wsh *)self gatherMapKeys:p_var4 i4KDOQicW9Xd5WBz:v24 TWWnmIjkBlMfHmma:v23 withCompletion:v26];

  _Block_object_dispose(buf, 8);
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7
{
  v11 = a5;
  v12 = a6;
  v19 = a7;
  v13 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v13 encodeInt64:0xD65B10DF4565AAELL forKey:@"0x5563"];
  [v13 encodeInt64:a3->var4.var0.var0 forKey:@"0xca8b"];
  [v13 encodeInt64:a3->var4.var0.var4 forKey:@"0x9d77"];
  v14 = [(FdvTdusyTLSA8Wsh *)self queue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002C3CC;
  v20[3] = &unk_1006903E0;
  v15 = v13;
  v21 = v15;
  v22 = self;
  p_var4 = &a3->var4;
  v16 = v11;
  v23 = v16;
  v17 = v12;
  v24 = v17;
  v18 = v19;
  v25 = v18;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&a3->var4.var7.var1 i4KDOQicW9Xd5WBz:v16 TWWnmIjkBlMfHmma:v17 completionQueue:v14 withCompletion:v20];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "wp", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, a4, "wp", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end