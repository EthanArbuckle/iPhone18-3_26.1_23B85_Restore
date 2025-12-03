@interface LLPrncEYq6on80YB
- (LLPrncEYq6on80YB)initWithQueue:(id)queue;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)signpost;
- (void)assembleExpressions:(_h7c2C07OidUWbWOi *)expressions i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id;
- (void)filterPredicate:(_h7c2C07OidUWbWOi *)predicate dfVersion:(unsigned int)version i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma completion:(id)completion;
@end

@implementation LLPrncEYq6on80YB

- (LLPrncEYq6on80YB)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = LLPrncEYq6on80YB;
  v6 = [(LLPrncEYq6on80YB *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)filterPredicate:(_h7c2C07OidUWbWOi *)predicate dfVersion:(unsigned int)version i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma completion:(id)completion
{
  bzCopy = bz;
  hmmaCopy = hmma;
  completionCopy = completion;
  v15 = completionCopy;
  if (version > 1)
  {
    queue = [(LLPrncEYq6on80YB *)self queue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001DCCC;
    v17[3] = &unk_10068FBE8;
    v18 = v15;
    [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:&predicate->var6 i4KDOQicW9Xd5WBz:bzCopy TWWnmIjkBlMfHmma:hmmaCopy completionQueue:queue withCompletion:v17];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)assembleExpressions:(_h7c2C07OidUWbWOi *)expressions i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  bzCopy = bz;
  hmmaCopy = hmma;
  completionCopy = completion;
  v31 = [[NSMutableArray alloc] initWithCapacity:expressions->var1];
  v30 = [[NSMutableArray alloc] initWithCapacity:expressions->var1];
  v10 = [[NSMutableDictionary alloc] initWithCapacity:expressions->var1];
  selfCopy = self;
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
  v33 = completionCopy;
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
  if (expressions->var1)
  {
    v12 = 0;
    do
    {
      v13 = objc_opt_new();
      [v41 addObject:{v13, v28, v29, v30, v31, completionCopy}];

      v14 = objc_opt_new();
      [v40 addObject:v14];

      ++v12;
      var1 = expressions->var1;
    }

    while (v12 < var1);
    if (var1)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        dispatch_group_enter(v11);
        var3 = expressions->var3;
        var4 = expressions->var4;
        queue = [(LLPrncEYq6on80YB *)selfCopy queue];
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_10001E404;
        v48[3] = &unk_10068FC60;
        v57 = v36;
        v49 = v37;
        v50 = v41;
        v59 = v17;
        v51 = v40;
        expressionsCopy = expressions;
        v21 = bzCopy;
        v52 = v21;
        v22 = hmmaCopy;
        v53 = v22;
        v54 = selfCopy;
        v55 = v34;
        v56 = v11;
        [Yp00msaYdVlZesvU evaluateStringTypes2:&var3[v16] string2:&var4[v16] i4KDOQicW9Xd5WBz:v21 TWWnmIjkBlMfHmma:v22 completionQueue:queue withCompletion:v48];

        ++v17;
        ++v16;
      }

      while (v17 < expressions->var1);
    }
  }

  v23 = [(LLPrncEYq6on80YB *)selfCopy queue:v28];
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

- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  bzCopy = bz;
  hmmaCopy = hmma;
  completionCopy = completion;
  var0 = compute->var4.var8.var0;
  p_var4 = &compute->var4;
  v18 = *(&p_var4[-1].var28 + 97);
  if ([bzCopy supports:var0])
  {
    v19 = p_var4->var8.var0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10001E8E0;
    v21[3] = &unk_10068FD00;
    v24 = completionCopy;
    v25 = p_var4;
    v21[4] = self;
    v28 = v18;
    v22 = bzCopy;
    v23 = hmmaCopy;
    v26 = *&ue1->profileIDPrefix;
    profileParsedDate = ue1->profileParsedDate;
    [v22 getAt:v19 completion:v21];
  }

  else
  {
    v20 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:161031];
    (*(completionCopy + 2))(completionCopy, v20);
  }
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  bzCopy = bz;
  hmmaCopy = hmma;
  completionCopy = completion;
  v14 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v14 encodeInt64:0x594EAC2DD9E5ADEFLL forKey:@"0x5563"];
  [v14 encodeInt64:hash->var1 forKey:@"0x6595"];
  [v14 encodeInt64:hash->var4.var9.var1 forKey:@"0x89bc"];
  if (hash->var4.var9.var1)
  {
    v15 = 0;
    do
    {
      v16 = *(hash->var4.var11.var1 + 4 * v15);
      v17 = [NSString stringWithFormat:@"%d 0xa8c1", v15];
      [v14 encodeInt32:v16 forKey:v17];

      ++v15;
    }

    while (v15 < hash->var4.var9.var1);
  }

  var0 = hash->var4.var8.var0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10001FB40;
  v23[3] = &unk_10068FD78;
  p_var4 = &hash->var4;
  v19 = v14;
  v24 = v19;
  selfCopy = self;
  v20 = bzCopy;
  v26 = v20;
  v21 = hmmaCopy;
  v27 = v21;
  hashCopy = hash;
  v22 = completionCopy;
  v28 = v22;
  [v20 getAt:var0 completion:v23];
}

- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)signpost
{
  v4 = os_signpost_id_generate(qword_1006DF788);
  v5 = qword_1006DF788;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    profileIDPrefix = signpost->profileIDPrefix;
    dataframeIndex = signpost->dataframeIndex;
    v10[0] = 67240448;
    v10[1] = profileIDPrefix;
    v11 = 1026;
    v12 = dataframeIndex;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ma", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }

  return v4;
}

- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id
{
  v6 = qword_1006DF788;
  v7 = v6;
  if (id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    profileIDPrefix = signpost->profileIDPrefix;
    dataframeIndex = signpost->dataframeIndex;
    v10[0] = 67240448;
    v10[1] = profileIDPrefix;
    v11 = 1026;
    v12 = dataframeIndex;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, id, "ma", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end