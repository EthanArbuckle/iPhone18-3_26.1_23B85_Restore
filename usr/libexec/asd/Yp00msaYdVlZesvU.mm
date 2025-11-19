@interface Yp00msaYdVlZesvU
+ (double)otlAmd6vMhhfwQLu:(id)a3 withObject:(id)a4 errorValue:(int64_t *)a5;
+ (id)eJSthhES04gLkDjz:(_TvmAC17dBJf7RbKu *)a3 GyF0atX3JpCKc9pK:(id)a4 predicateFormat:(id)a5 eZh1LWn1FH2uQtPX:(int64_t *)a6;
+ (id)notificationQueue;
+ (id)stringByReplacing:(id)a3 withDict:(id)a4;
+ (unint64_t)cv2QAcQ2CDdiHuN6:(id)a3;
+ (void)HeSoUpzppdCV64Ik:(_JOUEz2LcleEhhpFW *)a3 i4KDOQicW9Xd5WBz:(id)a4 withCompletion:(id)a5;
+ (void)eJSthhES04gLkDjz:(_TvmAC17dBJf7RbKu *)a3 i4KDOQicW9Xd5WBz:(id)a4 TWWnmIjkBlMfHmma:(id)a5 withCompletion:(id)a6;
+ (void)evaluateStringTypes2:(_uPR6qtVQRSW46QVd *)a3 string2:(_uPR6qtVQRSW46QVd *)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 completionQueue:(id)a7 withCompletion:(id)a8;
+ (void)evaluateStringTypes3:(_uPR6qtVQRSW46QVd *)a3 string2:(_uPR6qtVQRSW46QVd *)a4 string3:(_uPR6qtVQRSW46QVd *)a5 i4KDOQicW9Xd5WBz:(id)a6 TWWnmIjkBlMfHmma:(id)a7 completionQueue:(id)a8 withCompletion:(id)a9;
+ (void)yv5QRLoFvJ66jYJS:(_uPR6qtVQRSW46QVd *)a3 i4KDOQicW9Xd5WBz:(id)a4 TWWnmIjkBlMfHmma:(id)a5 completionQueue:(id)a6 withCompletion:(id)a7;
@end

@implementation Yp00msaYdVlZesvU

+ (id)notificationQueue
{
  if (qword_1006D7D00 != -1)
  {
    sub_100594230();
  }

  v3 = qword_1006D7D08;

  return v3;
}

+ (void)HeSoUpzppdCV64Ik:(_JOUEz2LcleEhhpFW *)a3 i4KDOQicW9Xd5WBz:(id)a4 withCompletion:(id)a5
{
  v7 = a4;
  v8 = a5;
  var4 = a3->var4;
  v10 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:a3->var0 gsx0MJUoOpcxcozG:a3->var1];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  var2 = a3->var2;
  v12 = var2 != 0;
  if (var2)
  {
    v13 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:var2 gsx0MJUoOpcxcozG:a3->var3];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 supports:var4];
  v15 = a3->var4;
  if (v14)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100033970;
    v17[3] = &unk_1006906F0;
    v20 = v8;
    v21 = &v24;
    v18 = v10;
    v23 = v12;
    v19 = v13;
    v22 = a3;
    [v7 getAt:v15 completion:v17];
  }

  else
  {
    if (v15 >= 0x3E7)
    {
      v16 = 999;
    }

    else
    {
      v16 = a3->var4;
    }

    v25[3] = v16 + 16000;
    (*(v8 + 2))(v8, 0);
  }

  _Block_object_dispose(&v24, 8);
}

+ (void)evaluateStringTypes3:(_uPR6qtVQRSW46QVd *)a3 string2:(_uPR6qtVQRSW46QVd *)a4 string3:(_uPR6qtVQRSW46QVd *)a5 i4KDOQicW9Xd5WBz:(id)a6 TWWnmIjkBlMfHmma:(id)a7 completionQueue:(id)a8 withCompletion:(id)a9
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100033E04;
  v18[3] = &unk_100690768;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a4;
  v24 = a5;
  v14 = v21;
  v15 = v20;
  v16 = v19;
  v17 = v22;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:a3 i4KDOQicW9Xd5WBz:v16 TWWnmIjkBlMfHmma:v15 completionQueue:v14 withCompletion:v18];
}

+ (void)evaluateStringTypes2:(_uPR6qtVQRSW46QVd *)a3 string2:(_uPR6qtVQRSW46QVd *)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 completionQueue:(id)a7 withCompletion:(id)a8
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000342F8;
  v20[3] = &unk_1006907B8;
  v24 = a8;
  v25 = a4;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v16 = v15;
  v17 = v14;
  v18 = v13;
  v19 = v24;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:a3 i4KDOQicW9Xd5WBz:v18 TWWnmIjkBlMfHmma:v17 completionQueue:v16 withCompletion:v20];
}

+ (id)stringByReplacing:(id)a3 withDict:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v18 = v7;
  v8 = [v6 allKeys];
  v9 = [v8 sortedArrayUsingComparator:&stru_1006907F8];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = *v21;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v20 + 1) + 8 * v12);
        v15 = [NSString stringWithFormat:@"$%@", v14];
        v16 = [v6 objectForKeyedSubscript:v14];
        v7 = [v13 stringByReplacingOccurrencesOfString:v15 withString:v16];

        v12 = v12 + 1;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (void)yv5QRLoFvJ66jYJS:(_uPR6qtVQRSW46QVd *)a3 i4KDOQicW9Xd5WBz:(id)a4 TWWnmIjkBlMfHmma:(id)a5 completionQueue:(id)a6 withCompletion:(id)a7
{
  v32 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_100034C84;
  v57 = sub_100034C94;
  v58 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:a3->var0 gsx0MJUoOpcxcozG:a3->var1];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_100034C84;
  v51 = sub_100034C94;
  v52 = +[NSMutableDictionary dictionary];
  var6 = a3->var6;
  v15 = 137;
  if (var6 <= 3)
  {
    if (var6 < 4)
    {
      v30 = v11;
      queue = v12;
      v29 = 0;
      var2 = a3->var2;
      var5 = a3->var6;
LABEL_18:
      v23 = dispatch_group_create();
      v24 = objc_opt_new();
      v45[0] = 0;
      v45[1] = v45;
      v45[2] = 0x2020000000;
      v46 = 0;
      if (var5)
      {
        for (i = 0; i != var5; ++i)
        {
          if ((a3->var6 | 2) == 6)
          {
            v26 = a3->var4[i];
          }

          else
          {
            v26 = i;
          }

          v27 = [NSNumber numberWithInt:v26, v29, v30];
          dispatch_group_enter(v23);
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_100034C9C;
          v38[3] = &unk_100690820;
          v39 = v24;
          v43 = &v47;
          v28 = v27;
          v40 = v28;
          v44 = v45;
          v42 = v13;
          v41 = v23;
          [Yp00msaYdVlZesvU HeSoUpzppdCV64Ik:var2 i4KDOQicW9Xd5WBz:v32 withCompletion:v38];

          ++var2;
        }
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100034D84;
      block[3] = &unk_100690848;
      v35 = v45;
      v34 = v13;
      v36 = &v53;
      v37 = &v47;
      v12 = queue;
      dispatch_group_notify(v23, queue, block);

      _Block_object_dispose(v45, 8);
      v18 = v29;
      v11 = v30;
      goto LABEL_27;
    }

LABEL_26:
    v18 = 0;
    (*(v13 + 2))(v13, 0, v15);
    goto LABEL_27;
  }

  if (var6 == 4)
  {
    goto LABEL_7;
  }

  if (var6 != 5)
  {
    if (var6 != 6)
    {
      goto LABEL_26;
    }

LABEL_7:
    v18 = 0;
    var2 = a3->var3;
    var5 = a3->var5;
    goto LABEL_10;
  }

  if (![v11 count])
  {
    v15 = 164002;
    goto LABEL_26;
  }

  v19 = [v11 lastObject];
  var5 = [v19 count];
  var2 = 0;
  var6 = a3->var6;
  v18 = v19;
LABEL_10:
  queue = v12;
  if (var6 != 5)
  {
    v29 = v18;
    v30 = v11;
    goto LABEL_18;
  }

  if (var5)
  {
    for (j = 0; j != var5; ++j)
    {
      v21 = [NSNumber numberWithInt:j];
      v22 = [v18 objectAtIndexedSubscript:j];
      if (v22)
      {
        [v48[5] setObject:v22 forKeyedSubscript:v21];
      }
    }
  }

  (*(v13 + 2))(v13, v54[5], 0);
LABEL_27:

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);
}

+ (double)otlAmd6vMhhfwQLu:(id)a3 withObject:(id)a4 errorValue:(int64_t *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [NSExpression expressionWithFormat:v6];
  v9 = [v8 expressionValueWithObject:v7 context:0];
  [v9 floatValue];
  v11 = v10;

  return v11;
}

+ (void)eJSthhES04gLkDjz:(_TvmAC17dBJf7RbKu *)a3 i4KDOQicW9Xd5WBz:(id)a4 TWWnmIjkBlMfHmma:(id)a5 withCompletion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if ([v9 supports:a3->var2])
  {
    var2 = a3->var2;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000350AC;
    v13[3] = &unk_100690898;
    v17 = a3;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    [v14 getAt:var2 completion:v13];
  }

  else
  {
    (*(v11 + 2))(v11, &off_1006BA8F8, -27806);
  }
}

+ (id)eJSthhES04gLkDjz:(_TvmAC17dBJf7RbKu *)a3 GyF0atX3JpCKc9pK:(id)a4 predicateFormat:(id)a5 eZh1LWn1FH2uQtPX:(int64_t *)a6
{
  v9 = a4;
  v10 = a5;
  var0 = a3->var0;
  if (a3->var0 > 2)
  {
    switch(var0)
    {
      case 3u:
        v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 qfSDGTGvqd3Hruzg]);
        break;
      case 4u:
        v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 yOtBxuHAYKqZrNQN]);
        break;
      case 5u:
        v12 = [v9 wgZJLy8f4tn41Pge];
        [v12 timeIntervalSinceNow];
        v14 = [NSNumber numberWithDouble:v13 * -1000.0];

LABEL_13:
        v17 = 0;
        *a6 = 0;
        goto LABEL_17;
      default:
        goto LABEL_15;
    }

    v14 = v18;
    goto LABEL_13;
  }

  if (var0 == 1)
  {
    v19 = [NSPredicate predicateWithFormat:v10];
    v20 = [v9 GyF0atX3JpCKc9pK];
    v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 evaluateWithObject:v20 substitutionVariables:0]);

    *a6 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  if (var0 == 2)
  {
    v15 = [NSExpression expressionWithFormat:v10];
    v16 = [v9 GyF0atX3JpCKc9pK];
    v17 = [v15 expressionValueWithObject:v16 context:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v17;

      v14 = v17;
      goto LABEL_17;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = 0;
      v22 = [NSScanner scannerWithString:v17];
      v23 = [v22 scanLongLong:&v25];

      if (v23)
      {
        v14 = [NSNumber numberWithLongLong:v25];
        v24 = 0;
      }

      else
      {
        v14 = &off_1006BA8F8;
        v24 = 134001;
      }

      *a6 = v24;

      goto LABEL_17;
    }

    *a6 = 134002;

    goto LABEL_16;
  }

LABEL_15:
  v17 = 0;
  *a6 = 133;
LABEL_16:
  v14 = &off_1006BA8F8;
LABEL_17:

  return v14;
}

+ (unint64_t)cv2QAcQ2CDdiHuN6:(id)a3
{
  v3 = a3;
  [v3 finishEncoding];
  v4 = [v3 encodedData];
  v5 = [v4 bytes];
  v6 = [v3 encodedData];
  CC_SHA256(v5, [v6 length], md);

  v7 = *md;
  return v7;
}

@end