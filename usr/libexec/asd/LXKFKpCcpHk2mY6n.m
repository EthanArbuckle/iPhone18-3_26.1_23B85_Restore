@interface LXKFKpCcpHk2mY6n
- (LXKFKpCcpHk2mY6n)initWithQueue:(id)a3;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)a3;
- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4;
@end

@implementation LXKFKpCcpHk2mY6n

- (LXKFKpCcpHk2mY6n)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LXKFKpCcpHk2mY6n;
  v6 = [(LXKFKpCcpHk2mY6n *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9
{
  v14 = a9;
  var1 = a3->var1;
  v16 = a8;
  v17 = a7;
  v18 = objc_opt_new();
  v19 = [(LXKFKpCcpHk2mY6n *)self queue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000297BC;
  v22[3] = &unk_100690200;
  v27 = var1;
  v26 = *a4;
  v24 = v14;
  v25 = a3;
  v22[4] = self;
  v23 = v18;
  v20 = v18;
  v21 = v14;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&a3->var4 i4KDOQicW9Xd5WBz:v17 TWWnmIjkBlMfHmma:v16 completionQueue:v19 withCompletion:v22];
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  var1 = a3->var1;
  v15 = [[NSMutableArray alloc] initWithCapacity:a3->var4.var2.var3];
  if (a3->var4.var2.var3)
  {
    v16 = 0;
    do
    {
      v17 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:*&a3->var4.var1.var1.var0[8 * v16] gsx0MJUoOpcxcozG:a3->var4.var2.var2[v16]];
      [v15 addObject:v17];

      ++v16;
    }

    while (v16 < a3->var4.var2.var3);
  }

  if (var1 == 2)
  {
    var4 = a3->var4.var2.var4;
  }

  else
  {
    var4 = 100;
  }

  v19 = v10;
  [v13 encodeInt64:0x76B410A5C9FCBEC4 forKey:@"0x5563"];
  v20 = [(LXKFKpCcpHk2mY6n *)self queue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100029DF0;
  v25[3] = &unk_100690228;
  v26 = v13;
  v27 = v15;
  v29 = var4;
  v28 = v12;
  v21 = v12;
  v22 = v15;
  v23 = v13;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&a3->var4 i4KDOQicW9Xd5WBz:v19 TWWnmIjkBlMfHmma:v11 completionQueue:v20 withCompletion:v25];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "cs", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }

  return v4;
}

- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4
{
  v7 = qword_1006DF788;
  v8 = v7;
  if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    profileIDPrefix = a3->profileIDPrefix;
    dataframeIndex = a3->dataframeIndex;
    computeError = self->computeError;
    v12[0] = 67240704;
    v12[1] = profileIDPrefix;
    v13 = 1026;
    v14 = dataframeIndex;
    v15 = 1026;
    v16 = computeError;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, a4, "cs", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d,e=%{public,signpost.telemetry:number2}d", v12, 0x14u);
  }
}

@end