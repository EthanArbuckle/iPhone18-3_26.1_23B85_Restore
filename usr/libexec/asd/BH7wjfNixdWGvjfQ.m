@interface BH7wjfNixdWGvjfQ
- (BH7wjfNixdWGvjfQ)initWithQueue:(id)a3;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)a3;
- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4;
@end

@implementation BH7wjfNixdWGvjfQ

- (BH7wjfNixdWGvjfQ)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BH7wjfNixdWGvjfQ;
  v6 = [(BH7wjfNixdWGvjfQ *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9
{
  v24 = a6;
  v25 = a7;
  v14 = a8;
  v15 = a9;
  v16 = +[YIbYnDZMoU7hwSYC sharedInstance];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_10002358C;
  v35[4] = sub_10002359C;
  v36 = 0;
  var0 = a3->var4.var8.var0;
  var4 = a3->var4.var0.var4;
  v19 = [NSMutableArray arrayWithCapacity:var4];
  v20 = [(BH7wjfNixdWGvjfQ *)self queue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000235A4;
  v26[3] = &unk_10068FE90;
  v21 = v15;
  v29 = v21;
  v22 = v16;
  v27 = v22;
  v31 = var4;
  v32 = a3;
  v23 = v19;
  v33 = var0;
  v28 = v23;
  v30 = v35;
  v34 = *a4;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&a3->var4.var7.var1 i4KDOQicW9Xd5WBz:v25 TWWnmIjkBlMfHmma:v14 completionQueue:v20 withCompletion:v26];

  _Block_object_dispose(v35, 8);
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7
{
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  v15 = [[NSMutableArray alloc] initWithCapacity:a3->var4.var0.var4];
  if (a3->var4.var0.var4)
  {
    v16 = 0;
    do
    {
      v17 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:*&a3->var4.var2.var2[2 * v16] gsx0MJUoOpcxcozG:*(a3->var4.var0.var3 + v16)];
      [v15 addObject:v17];

      ++v16;
    }

    while (v16 < a3->var4.var0.var4);
  }

  [v14 encodeObject:v15];
  [v14 encodeInt64:a3->var4.var8.var0 forKey:@"0x0x5bde"];
  [v14 encodeInt64:0x48A30D07AA9F179CLL forKey:@"0x5563"];
  v18 = [(BH7wjfNixdWGvjfQ *)self queue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100023AF8;
  v21[3] = &unk_10068F8F0;
  v22 = v14;
  v23 = v13;
  v19 = v13;
  v20 = v14;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&a3->var4.var7.var1 i4KDOQicW9Xd5WBz:v11 TWWnmIjkBlMfHmma:v12 completionQueue:v18 withCompletion:v21];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "pk", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, a4, "pk", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end