@interface LLPrncEYq6on80YB
- (LLPrncEYq6on80YB)initWithQueue:(id)a3;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)a3;
- (void)assembleExpressions:(_h7c2C07OidUWbWOi *)a3 i4KDOQicW9Xd5WBz:(id)a4 TWWnmIjkBlMfHmma:(id)a5 withCompletion:(id)a6;
- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4;
- (void)filterPredicate:(_h7c2C07OidUWbWOi *)a3 dfVersion:(unsigned int)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 completion:(id)a7;
@end

@implementation LLPrncEYq6on80YB

- (LLPrncEYq6on80YB)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LLPrncEYq6on80YB;
  v6 = [(LLPrncEYq6on80YB *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (void)filterPredicate:(_h7c2C07OidUWbWOi *)a3 dfVersion:(unsigned int)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (a4 > 1)
  {
    v16 = [(LLPrncEYq6on80YB *)self queue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001DCCC;
    v17[3] = &unk_10068FBE8;
    v18 = v15;
    [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&a3->var6 i4KDOQicW9Xd5WBz:v12 TWWnmIjkBlMfHmma:v13 completionQueue:v16 withCompletion:v17];
  }

  else
  {
    (*(v14 + 2))(v14, 0, 0);
  }
}

- (void)assembleExpressions:(_h7c2C07OidUWbWOi *)a3 i4KDOQicW9Xd5WBz:(id)a4 TWWnmIjkBlMfHmma:(id)a5 withCompletion:(id)a6
{
  v39 = a4;
  v38 = a5;
  v32 = a6;
  v31 = [[NSMutableArray alloc] initWithCapacity:a3->var1];
  v30 = [[NSMutableArray alloc] initWithCapacity:a3->var1];
  v10 = [[NSMutableDictionary alloc] initWithCapacity:a3->var1];
  v35 = self;
  v28 = dispatch_group_create();
  v29 = v10;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x2020000000;
  v69 = 0;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_10001E388;
  v60[3] = &unk_10068FC10;
  v37 = objc_opt_new();
  v61 = v37;
  v67 = v68;
  v33 = v32;
  v66 = v33;
  v41 = v31;
  v62 = v41;
  v40 = v30;
  v63 = v40;
  v34 = v10;
  v64 = v34;
  v11 = v28;
  v65 = v11;
  v36 = objc_retainBlock(v60);
  if (a3->var1)
  {
    v12 = 0;
    do
    {
      v13 = objc_opt_new();
      [v41 addObject:{v13, v28, v29, v30, v31, v32}];

      v14 = objc_opt_new();
      [v40 addObject:v14];

      ++v12;
      var1 = a3->var1;
    }

    while (v12 < var1);
    if (var1)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        dispatch_group_enter(v11);
        var3 = a3->var3;
        var4 = a3->var4;
        v20 = [(LLPrncEYq6on80YB *)v35 queue];
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_10001E404;
        v48[3] = &unk_10068FC60;
        v57 = v36;
        v49 = v37;
        v50 = v41;
        v59 = v17;
        v51 = v40;
        v58 = a3;
        v21 = v39;
        v52 = v21;
        v22 = v38;
        v53 = v22;
        v54 = v35;
        v55 = v34;
        v56 = v11;
        [Yp00msaYdVlZesvU evaluateStringTypes2:&var3[v16] string2:&var4[v16] i4KDOQicW9Xd5WBz:v21 TWWnmIjkBlMfHmma:v22 completionQueue:v20 withCompletion:v48];

        ++v17;
        ++v16;
      }

      while (v17 < a3->var1);
    }
  }

  v23 = [(LLPrncEYq6on80YB *)v35 queue:v28];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E704;
  block[3] = &unk_10068FC88;
  v43 = v41;
  v44 = v40;
  v46 = v33;
  v47 = v68;
  v45 = v34;
  v24 = v34;
  v25 = v40;
  v26 = v41;
  v27 = v33;
  dispatch_group_notify(v11, v23, block);

  _Block_object_dispose(v68, 8);
}

- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9
{
  v13 = a7;
  v14 = a8;
  v15 = a9;
  var0 = a3->var4.var8.var0;
  p_var4 = &a3->var4;
  v18 = *(&p_var4[-1].var28 + 97);
  if ([v13 supports:var0])
  {
    v19 = p_var4->var8.var0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10001E8E0;
    v21[3] = &unk_10068FD00;
    v24 = v15;
    v25 = p_var4;
    v21[4] = self;
    v28 = v18;
    v22 = v13;
    v23 = v14;
    v26 = *&a4->profileIDPrefix;
    profileParsedDate = a4->profileParsedDate;
    [v22 getAt:v19 completion:v21];
  }

  else
  {
    v20 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:161031];
    (*(v15 + 2))(v15, v20);
  }
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7
{
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v14 encodeInt64:0x594EAC2DD9E5ADEFLL forKey:@"0x5563"];
  [v14 encodeInt64:a3->var1 forKey:@"0x6595"];
  [v14 encodeInt64:a3->var4.var9.var1 forKey:@"0x89bc"];
  if (a3->var4.var9.var1)
  {
    v15 = 0;
    do
    {
      v16 = *(a3->var4.var11.var1 + 4 * v15);
      v17 = [NSString stringWithFormat:@"%d 0xa8c1", v15];
      [v14 encodeInt32:v16 forKey:v17];

      ++v15;
    }

    while (v15 < a3->var4.var9.var1);
  }

  var0 = a3->var4.var8.var0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10001FB40;
  v23[3] = &unk_10068FD78;
  p_var4 = &a3->var4;
  v19 = v14;
  v24 = v19;
  v25 = self;
  v20 = v11;
  v26 = v20;
  v21 = v12;
  v27 = v21;
  v30 = a3;
  v22 = v13;
  v28 = v22;
  [v20 getAt:var0 completion:v23];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ma", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, a4, "ma", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end