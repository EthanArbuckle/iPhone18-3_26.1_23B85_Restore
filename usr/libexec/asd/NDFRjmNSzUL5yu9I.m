@interface NDFRjmNSzUL5yu9I
- (NDFRjmNSzUL5yu9I)initWithQueue:(id)a3;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)a3;
- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4;
- (void)gatherOutputExpressionsForDF:(_euh2HcGTkBGXYGKw *)a3 i4KDOQicW9Xd5WBz:(id)a4 TWWnmIjkBlMfHmma:(id)a5 withCompletion:(id)a6;
@end

@implementation NDFRjmNSzUL5yu9I

- (NDFRjmNSzUL5yu9I)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NDFRjmNSzUL5yu9I;
  v6 = [(NDFRjmNSzUL5yu9I *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (void)gatherOutputExpressionsForDF:(_euh2HcGTkBGXYGKw *)a3 i4KDOQicW9Xd5WBz:(id)a4 TWWnmIjkBlMfHmma:(id)a5 withCompletion:(id)a6
{
  v27 = a4;
  v26 = a5;
  v24 = a6;
  v9 = [NSMutableArray arrayWithCapacity:a3->var6];
  v10 = [NSMutableArray arrayWithCapacity:a3->var6];
  if (a3->var6)
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

    while (v11 < a3->var6);
  }

  v14 = dispatch_group_create();
  v25 = objc_opt_new();
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  if (a3->var6)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      dispatch_group_enter(v14);
      var4 = a3->var4;
      var5 = a3->var5;
      v19 = [(NDFRjmNSzUL5yu9I *)self queue];
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
      [Yp00msaYdVlZesvU evaluateStringTypes2:&var4[v15] string2:&var5[v15] i4KDOQicW9Xd5WBz:v27 TWWnmIjkBlMfHmma:v26 completionQueue:v19 withCompletion:v34];

      ++v16;
      ++v15;
    }

    while (v16 < a3->var6);
  }

  v20 = [(NDFRjmNSzUL5yu9I *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000165A8;
  block[3] = &unk_10068F658;
  v30 = v9;
  v31 = v10;
  v32 = v24;
  v33 = v41;
  v21 = v10;
  v22 = v9;
  v23 = v24;
  dispatch_group_notify(v14, v20, block);

  _Block_object_dispose(v41, 8);
}

- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9
{
  v13 = a7;
  v14 = a8;
  v15 = a9;
  var0 = a3->var4.var0.var0;
  a3 = (a3 + 24);
  v17 = *(&a3[-1].var4.var28 + 97) > 1u;
  v18 = [NSString stringWithFormat:@"%.*s", a3->var2, var0];
  v19 = [(NDFRjmNSzUL5yu9I *)self queue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000167D4;
  v24[3] = &unk_10068F738;
  v28 = v15;
  v29 = a3;
  v24[4] = self;
  v25 = v13;
  v26 = v14;
  v27 = v18;
  v31 = v17;
  v30 = *a4;
  v20 = v18;
  v21 = v14;
  v22 = v13;
  v23 = v15;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&a3->var3 i4KDOQicW9Xd5WBz:v22 TWWnmIjkBlMfHmma:v21 completionQueue:v19 withCompletion:v24];
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7
{
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v14 encodeInt64:0x195A0A8200DBA60CLL forKey:@"0x5563"];
  v15 = [NSString stringWithFormat:@"%.*s", a3->var4.var1.var0.var1, a3->var4.var0.var0];
  [v14 encodeObject:v15];
  v16 = [(NDFRjmNSzUL5yu9I *)self queue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100017284;
  v21[3] = &unk_10068F788;
  v22 = v14;
  v23 = self;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27 = a3;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v14;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&a3->var4.var15.var2.var1 i4KDOQicW9Xd5WBz:v19 TWWnmIjkBlMfHmma:v18 completionQueue:v16 withCompletion:v21];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "bi", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, a4, "bi", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end