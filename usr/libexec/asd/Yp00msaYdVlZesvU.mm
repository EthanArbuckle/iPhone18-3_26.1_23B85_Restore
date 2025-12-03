@interface Yp00msaYdVlZesvU
+ (double)otlAmd6vMhhfwQLu:(id)lu withObject:(id)object errorValue:(int64_t *)value;
+ (id)eJSthhES04gLkDjz:(_TvmAC17dBJf7RbKu *)djz GyF0atX3JpCKc9pK:(id)k predicateFormat:(id)format eZh1LWn1FH2uQtPX:(int64_t *)x;
+ (id)notificationQueue;
+ (id)stringByReplacing:(id)replacing withDict:(id)dict;
+ (unint64_t)cv2QAcQ2CDdiHuN6:(id)n6;
+ (void)HeSoUpzppdCV64Ik:(_JOUEz2LcleEhhpFW *)ik i4KDOQicW9Xd5WBz:(id)bz withCompletion:(id)completion;
+ (void)eJSthhES04gLkDjz:(_TvmAC17dBJf7RbKu *)djz i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
+ (void)evaluateStringTypes2:(_uPR6qtVQRSW46QVd *)types2 string2:(_uPR6qtVQRSW46QVd *)string2 i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma completionQueue:(id)queue withCompletion:(id)completion;
+ (void)evaluateStringTypes3:(_uPR6qtVQRSW46QVd *)types3 string2:(_uPR6qtVQRSW46QVd *)string2 string3:(_uPR6qtVQRSW46QVd *)string3 i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma completionQueue:(id)queue withCompletion:(id)completion;
+ (void)yv5QRLoFvJ66jYJS:(_uPR6qtVQRSW46QVd *)s i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma completionQueue:(id)queue withCompletion:(id)completion;
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

+ (void)HeSoUpzppdCV64Ik:(_JOUEz2LcleEhhpFW *)ik i4KDOQicW9Xd5WBz:(id)bz withCompletion:(id)completion
{
  bzCopy = bz;
  completionCopy = completion;
  var4 = ik->var4;
  v10 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:ik->var0 gsx0MJUoOpcxcozG:ik->var1];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  var2 = ik->var2;
  v12 = var2 != 0;
  if (var2)
  {
    v13 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:var2 gsx0MJUoOpcxcozG:ik->var3];
  }

  else
  {
    v13 = 0;
  }

  v14 = [bzCopy supports:var4];
  v15 = ik->var4;
  if (v14)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100033970;
    v17[3] = &unk_1006906F0;
    v20 = completionCopy;
    v21 = &v24;
    v18 = v10;
    v23 = v12;
    v19 = v13;
    ikCopy = ik;
    [bzCopy getAt:v15 completion:v17];
  }

  else
  {
    if (v15 >= 0x3E7)
    {
      v16 = 999;
    }

    else
    {
      v16 = ik->var4;
    }

    v25[3] = v16 + 16000;
    (*(completionCopy + 2))(completionCopy, 0);
  }

  _Block_object_dispose(&v24, 8);
}

+ (void)evaluateStringTypes3:(_uPR6qtVQRSW46QVd *)types3 string2:(_uPR6qtVQRSW46QVd *)string2 string3:(_uPR6qtVQRSW46QVd *)string3 i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma completionQueue:(id)queue withCompletion:(id)completion
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100033E04;
  v18[3] = &unk_100690768;
  bzCopy = bz;
  hmmaCopy = hmma;
  queueCopy = queue;
  completionCopy = completion;
  string2Copy = string2;
  string3Copy = string3;
  v14 = queueCopy;
  v15 = hmmaCopy;
  v16 = bzCopy;
  v17 = completionCopy;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:types3 i4KDOQicW9Xd5WBz:v16 TWWnmIjkBlMfHmma:v15 completionQueue:v14 withCompletion:v18];
}

+ (void)evaluateStringTypes2:(_uPR6qtVQRSW46QVd *)types2 string2:(_uPR6qtVQRSW46QVd *)string2 i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma completionQueue:(id)queue withCompletion:(id)completion
{
  bzCopy = bz;
  hmmaCopy = hmma;
  queueCopy = queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000342F8;
  v20[3] = &unk_1006907B8;
  completionCopy = completion;
  string2Copy = string2;
  v21 = bzCopy;
  v22 = hmmaCopy;
  v23 = queueCopy;
  v16 = queueCopy;
  v17 = hmmaCopy;
  v18 = bzCopy;
  v19 = completionCopy;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:types2 i4KDOQicW9Xd5WBz:v18 TWWnmIjkBlMfHmma:v17 completionQueue:v16 withCompletion:v20];
}

+ (id)stringByReplacing:(id)replacing withDict:(id)dict
{
  replacingCopy = replacing;
  dictCopy = dict;
  v7 = replacingCopy;
  v18 = v7;
  allKeys = [dictCopy allKeys];
  v9 = [allKeys sortedArrayUsingComparator:&stru_1006907F8];

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
        v16 = [dictCopy objectForKeyedSubscript:v14];
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

+ (void)yv5QRLoFvJ66jYJS:(_uPR6qtVQRSW46QVd *)s i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma completionQueue:(id)queue withCompletion:(id)completion
{
  bzCopy = bz;
  hmmaCopy = hmma;
  queueCopy2 = queue;
  completionCopy = completion;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_100034C84;
  v57 = sub_100034C94;
  v58 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:s->var0 gsx0MJUoOpcxcozG:s->var1];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_100034C84;
  v51 = sub_100034C94;
  v52 = +[NSMutableDictionary dictionary];
  var6 = s->var6;
  v15 = 137;
  if (var6 <= 3)
  {
    if (var6 < 4)
    {
      v30 = hmmaCopy;
      queue = queueCopy2;
      v29 = 0;
      var2 = s->var2;
      var5 = s->var6;
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
          if ((s->var6 | 2) == 6)
          {
            v26 = s->var4[i];
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
          v42 = completionCopy;
          v41 = v23;
          [Yp00msaYdVlZesvU HeSoUpzppdCV64Ik:var2 i4KDOQicW9Xd5WBz:bzCopy withCompletion:v38];

          ++var2;
        }
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100034D84;
      block[3] = &unk_100690848;
      v35 = v45;
      v34 = completionCopy;
      v36 = &v53;
      v37 = &v47;
      queueCopy2 = queue;
      dispatch_group_notify(v23, queue, block);

      _Block_object_dispose(v45, 8);
      v18 = v29;
      hmmaCopy = v30;
      goto LABEL_27;
    }

LABEL_26:
    v18 = 0;
    (*(completionCopy + 2))(completionCopy, 0, v15);
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
    var2 = s->var3;
    var5 = s->var5;
    goto LABEL_10;
  }

  if (![hmmaCopy count])
  {
    v15 = 164002;
    goto LABEL_26;
  }

  lastObject = [hmmaCopy lastObject];
  var5 = [lastObject count];
  var2 = 0;
  var6 = s->var6;
  v18 = lastObject;
LABEL_10:
  queue = queueCopy2;
  if (var6 != 5)
  {
    v29 = v18;
    v30 = hmmaCopy;
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

  (*(completionCopy + 2))(completionCopy, v54[5], 0);
LABEL_27:

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);
}

+ (double)otlAmd6vMhhfwQLu:(id)lu withObject:(id)object errorValue:(int64_t *)value
{
  luCopy = lu;
  objectCopy = object;
  v8 = [NSExpression expressionWithFormat:luCopy];
  v9 = [v8 expressionValueWithObject:objectCopy context:0];
  [v9 floatValue];
  v11 = v10;

  return v11;
}

+ (void)eJSthhES04gLkDjz:(_TvmAC17dBJf7RbKu *)djz i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  bzCopy = bz;
  hmmaCopy = hmma;
  completionCopy = completion;
  if ([bzCopy supports:djz->var2])
  {
    var2 = djz->var2;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000350AC;
    v13[3] = &unk_100690898;
    djzCopy = djz;
    v14 = bzCopy;
    v15 = hmmaCopy;
    v16 = completionCopy;
    [v14 getAt:var2 completion:v13];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, &off_1006BA8F8, -27806);
  }
}

+ (id)eJSthhES04gLkDjz:(_TvmAC17dBJf7RbKu *)djz GyF0atX3JpCKc9pK:(id)k predicateFormat:(id)format eZh1LWn1FH2uQtPX:(int64_t *)x
{
  kCopy = k;
  formatCopy = format;
  var0 = djz->var0;
  if (djz->var0 > 2)
  {
    switch(var0)
    {
      case 3u:
        v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [kCopy qfSDGTGvqd3Hruzg]);
        break;
      case 4u:
        v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [kCopy yOtBxuHAYKqZrNQN]);
        break;
      case 5u:
        wgZJLy8f4tn41Pge = [kCopy wgZJLy8f4tn41Pge];
        [wgZJLy8f4tn41Pge timeIntervalSinceNow];
        v14 = [NSNumber numberWithDouble:v13 * -1000.0];

LABEL_13:
        v17 = 0;
        *x = 0;
        goto LABEL_17;
      default:
        goto LABEL_15;
    }

    v14 = v18;
    goto LABEL_13;
  }

  if (var0 == 1)
  {
    v19 = [NSPredicate predicateWithFormat:formatCopy];
    gyF0atX3JpCKc9pK = [kCopy GyF0atX3JpCKc9pK];
    v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 evaluateWithObject:gyF0atX3JpCKc9pK substitutionVariables:0]);

    *x = 0;
    v17 = 0;
    goto LABEL_17;
  }

  if (var0 == 2)
  {
    v15 = [NSExpression expressionWithFormat:formatCopy];
    gyF0atX3JpCKc9pK2 = [kCopy GyF0atX3JpCKc9pK];
    v17 = [v15 expressionValueWithObject:gyF0atX3JpCKc9pK2 context:0];

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

      *x = v24;

      goto LABEL_17;
    }

    *x = 134002;

    goto LABEL_16;
  }

LABEL_15:
  v17 = 0;
  *x = 133;
LABEL_16:
  v14 = &off_1006BA8F8;
LABEL_17:

  return v14;
}

+ (unint64_t)cv2QAcQ2CDdiHuN6:(id)n6
{
  n6Copy = n6;
  [n6Copy finishEncoding];
  encodedData = [n6Copy encodedData];
  bytes = [encodedData bytes];
  encodedData2 = [n6Copy encodedData];
  CC_SHA256(bytes, [encodedData2 length], md);

  v7 = *md;
  return v7;
}

@end