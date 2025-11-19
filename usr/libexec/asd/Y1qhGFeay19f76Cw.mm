@interface Y1qhGFeay19f76Cw
- (Y1qhGFeay19f76Cw)initWithQueue:(id)a3;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)a3;
- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4;
@end

@implementation Y1qhGFeay19f76Cw

- (Y1qhGFeay19f76Cw)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = Y1qhGFeay19f76Cw;
  v6 = [(Y1qhGFeay19f76Cw *)&v9 init];
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
  v15 = a3->var1 >= 2 && a3->var4.var8.var0 != 0;
  v16 = a8;
  v17 = a7;
  v18 = [(Y1qhGFeay19f76Cw *)self queue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001AE9C;
  v20[3] = &unk_10068FA58;
  v21 = v14;
  v22 = a3;
  v23 = *&a4->profileIDPrefix;
  profileParsedDate = a4->profileParsedDate;
  v25 = v15;
  v19 = v14;
  [Yp00msaYdVlZesvU evaluateStringTypes2:&a3->var4.var7.var1 string2:&a3->var4.var28 + 18 i4KDOQicW9Xd5WBz:v17 TWWnmIjkBlMfHmma:v16 completionQueue:v18 withCompletion:v20];
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = [(Y1qhGFeay19f76Cw *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001B83C;
  v16[3] = &unk_10068FA80;
  v17 = v11;
  v18 = a3;
  v15 = v11;
  [Yp00msaYdVlZesvU evaluateStringTypes2:&a3->var4.var7.var1 string2:&a3->var4.var28 + 18 i4KDOQicW9Xd5WBz:v13 TWWnmIjkBlMfHmma:v12 completionQueue:v14 withCompletion:v16];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "fp", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, a4, "fp", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end