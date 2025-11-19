@interface CzGuHdtgzKnYoucr
- (CzGuHdtgzKnYoucr)initWithQueue:(id)a3;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)a3;
- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4;
@end

@implementation CzGuHdtgzKnYoucr

- (CzGuHdtgzKnYoucr)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CzGuHdtgzKnYoucr;
  v6 = [(CzGuHdtgzKnYoucr *)&v9 init];
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
  v15 = a8;
  v16 = a7;
  v17 = objc_alloc_init(_TtC3asd20ASFinanceStoreHelper);
  v18 = [(CzGuHdtgzKnYoucr *)self queue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001C888;
  v21[3] = &unk_10068FB70;
  v23 = v14;
  p_var4 = &a3->var4;
  v22 = v17;
  v25 = *a4;
  v19 = v17;
  v20 = v14;
  [Yp00msaYdVlZesvU evaluateStringTypes2:&a3->var4.var28 + 5 string2:&a3->var4.var28 + 22 i4KDOQicW9Xd5WBz:v16 TWWnmIjkBlMfHmma:v15 completionQueue:v18 withCompletion:v21];
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v14 encodeInt64:0x935167CDF835AA98 forKey:@"0x5563"];
  [v14 encodeInt64:a3->var4.var0.var0 forKey:@"0x1753"];
  [v14 encodeInt64:a3->var4.var11.var1 forKey:@"0x1fa8"];
  [v14 encodeInt64:a3->var4.var5.var3 forKey:@"0x1fa8"];
  [v14 encodeInt64:a3->var4.var5.var4 forKey:@"0x275a"];
  [v14 encodeInt64:a3->var4.var23.var7 forKey:@"0x0x5bde"];
  v15 = [(CzGuHdtgzKnYoucr *)self queue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001CE84;
  v18[3] = &unk_10068FB98;
  v19 = v14;
  v20 = v11;
  v16 = v11;
  v17 = v14;
  [Yp00msaYdVlZesvU evaluateStringTypes2:&a3->var4.var28 + 5 string2:&a3->var4.var28 + 22 i4KDOQicW9Xd5WBz:v13 TWWnmIjkBlMfHmma:v12 completionQueue:v15 withCompletion:v18];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "fkc", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, a4, "fkc", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end