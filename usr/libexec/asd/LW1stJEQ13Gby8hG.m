@interface LW1stJEQ13Gby8hG
- (LW1stJEQ13Gby8hG)initWithQueue:(id)a3;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)a3;
- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4;
@end

@implementation LW1stJEQ13Gby8hG

- (LW1stJEQ13Gby8hG)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LW1stJEQ13Gby8hG;
  v6 = [(LW1stJEQ13Gby8hG *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9
{
  v14 = a6;
  v15 = a8;
  v16 = a9;
  var1 = a3->var1;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100019128;
  v21[3] = &unk_10068F940;
  v24 = v16;
  v25 = a3;
  v26 = *a4;
  v22 = v14;
  v23 = v15;
  v27 = a5;
  v28 = var1;
  v18 = v15;
  v19 = v14;
  v20 = v16;
  [Yp00msaYdVlZesvU eJSthhES04gLkDjz:&a3->var4 i4KDOQicW9Xd5WBz:a7 TWWnmIjkBlMfHmma:v18 withCompletion:v21];
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7
{
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = a5;
  v16 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v16 encodeInt64:0x434A3129DEC70B42 forKey:@"0x5563"];
  [v16 encodeInt64:a3->var4.var1.var0.var1 forKey:@"0xfd1e"];
  [v16 encodeInt64:a3->var1 forKey:@"0x6595"];
  v17 = [(LW1stJEQ13Gby8hG *)self queue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100019770;
  v22[3] = &unk_10068F990;
  v23 = v16;
  v24 = v12;
  v26 = v14;
  v27 = a3;
  v25 = v13;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  v21 = v16;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&a3->var4.var15.var2.var1 i4KDOQicW9Xd5WBz:v15 TWWnmIjkBlMfHmma:v19 completionQueue:v17 withCompletion:v22];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "idf", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, a4, "idf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end