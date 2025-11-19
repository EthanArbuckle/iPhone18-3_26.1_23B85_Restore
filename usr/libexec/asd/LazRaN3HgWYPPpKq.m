@interface LazRaN3HgWYPPpKq
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)a3;
- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4;
@end

@implementation LazRaN3HgWYPPpKq

- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9
{
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = a9;
  var1 = a3->var1;
  if (var1 == 5)
  {
    if (a3->var4.var1.var0.var1 - 4097 >= 0xFFFFF000 && a3->var4.var5.var2 < 6)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (var1 != 4)
  {
    v18 = [kjAS9HuCdR1m5txL alloc];
    v19 = -27209;
    goto LABEL_11;
  }

  if (a3->var4.var1.var0.var1 - 4097 < 0xFFFFF000 || a3->var4.var5.var2 > 5 || a3->var4.var5.var3 >= 300001)
  {
LABEL_9:
    v18 = [kjAS9HuCdR1m5txL alloc];
    v19 = 155;
LABEL_11:
    v20 = [(kjAS9HuCdR1m5txL *)v18 initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:v19];
    v16[2](v16, v20);

    goto LABEL_12;
  }

LABEL_13:
  v21 = +[hjIvoYfuuA5g1aoN sharedInstance];
  v22 = [v21 ciiN3o1L7RiefeS5:a3];

  if (v22)
  {
    v23 = os_signpost_id_generate(qword_1006DF780);
    v24 = qword_1006DF780;
    v25 = v24;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "lo", "enableTelemetry=YES", buf, 2u);
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100019D20;
    v27[3] = &unk_10068F9B8;
    v29 = v23;
    v30 = *&a4->profileIDPrefix;
    profileParsedDate = a4->profileParsedDate;
    v28 = v16;
    [v22 UupMWO2j2nYek7xf:a3 TYPlhTGwKuAdWgfx:v13 TWWnmIjkBlMfHmma:v15 withCompletion:v27];
  }

  else
  {
    v26 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:139001];
    v16[2](v16, v26);
  }

LABEL_12:
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7
{
  v8 = a7;
  v11 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  var1 = a3->var1;
  [v11 encodeInt64:0x76DF2CA55E370785 forKey:@"0x5563"];
  [v11 encodeInt32:var1 forKey:@"0x6595"];
  if (var1 == 5)
  {
    v10 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:a3->var4.var0.var0 gsx0MJUoOpcxcozG:a3->var4.var1.var0.var1];
    [v11 encodeObject:v10];
    [v11 encodeInt32:a3->var4.var5.var2 forKey:@"0xb18e"];
  }

  else
  {
    if (var1 != 4)
    {
      goto LABEL_6;
    }

    v10 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:a3->var4.var0.var0 gsx0MJUoOpcxcozG:a3->var4.var1.var0.var1];
    [v11 encodeObject:v10];
    [v11 encodeInt64:a3->var4.var5.var3 forKey:@"0x9efa"];
    [v11 encodeInt32:a3->var4.var5.var2 forKey:@"0xb18e"];
    [v11 encodeInt64:a3->var4.var5.var4 forKey:@"0xf16f"];
  }

LABEL_6:
  v8[2](v8, [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:v11]);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "lo", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, a4, "lo", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end