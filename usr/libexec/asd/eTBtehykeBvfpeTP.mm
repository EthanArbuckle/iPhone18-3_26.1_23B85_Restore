@interface eTBtehykeBvfpeTP
+ (id)hKjCyPlJs74k9vMV:(int64_t)v;
+ (id)rsNB9HkZVEH0l6fT:(char *)t gsx0MJUoOpcxcozG:(unsigned int)g;
- (eTBtehykeBvfpeTP)initWithdEyUJuqYjUufZYGN:(id)n UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 CYjHC6NGGdOD33W9:(_XqnwpLSFrBke2fSP *)w9 g8citQiyynNCr9c4:(_nc5BBnMiYo0TSmWP *)cr9c4;
- (unsigned)hi5ump20ke7n4x6o:(_KUwyEjpVZR65eUyl *)hi5ump20ke7n4x6o;
- (unsigned)pDYAPbGDBo6ZMVXG:(id)g;
- (void)KKbGrSwDukIWFRjI:(_JqTz0JeuAWNFxnUl *)i i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)PLMCCRRqEw4moT9R:(_KUwyEjpVZR65eUyl *)r UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)dealloc;
- (void)jCbmcix0xxhNVOSS:(_KUwyEjpVZR65eUyl *)s TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
@end

@implementation eTBtehykeBvfpeTP

+ (id)hKjCyPlJs74k9vMV:(int64_t)v
{
  v4 = [kjAS9HuCdR1m5txL alloc];
  if (v)
  {
    vCopy = v;
  }

  else
  {
    vCopy = 150;
  }

  v6 = [(kjAS9HuCdR1m5txL *)v4 initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:vCopy];

  return v6;
}

+ (id)rsNB9HkZVEH0l6fT:(char *)t gsx0MJUoOpcxcozG:(unsigned int)g
{
  v6 = malloc_type_malloc(g + 1, 0x100004077774924uLL);
  if (v6)
  {
    v7 = v6;
    memcpy(v6, t, g);
    v7[g] = 0;
    v8 = [NSString stringWithUTF8String:v7];
    free(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (eTBtehykeBvfpeTP)initWithdEyUJuqYjUufZYGN:(id)n UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 CYjHC6NGGdOD33W9:(_XqnwpLSFrBke2fSP *)w9 g8citQiyynNCr9c4:(_nc5BBnMiYo0TSmWP *)cr9c4
{
  nCopy = n;
  v29.receiver = self;
  v29.super_class = eTBtehykeBvfpeTP;
  v11 = [(eTBtehykeBvfpeTP *)&v29 init];
  if (v11)
  {
    v12 = +[NSMutableSet set];
    v13 = v12;
    if (!cr9c4)
    {

      goto LABEL_10;
    }

    if (cr9c4->var2 && cr9c4->var0)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = [NSNumber numberWithUnsignedInt:cr9c4->var2[v14].var0];
        [v13 addObject:v16];

        ++v15;
        ++v14;
      }

      while (v15 < cr9c4->var0);
    }

    v30[0] = @"cg";
    v17 = [NSNumber numberWithUnsignedChar:w9->var2];
    v31[0] = v17;
    v30[1] = @"bc";
    v18 = [NSNumber numberWithUnsignedInt:w9->var1];
    v31[1] = v18;
    v30[2] = @"kv";
    v19 = [NSNumber numberWithUnsignedInt:w9->var0];
    v31[2] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];

    v21 = dispatch_queue_create("smthQ", 0);
    v22 = *(v11 + 4);
    *(v11 + 4) = v21;

    *(v11 + 2) = cr9c4;
    v23 = *&ue1->profileIDPrefix;
    *(v11 + 7) = ue1->profileParsedDate;
    *(v11 + 40) = v23;
    v24 = [[_TtC3asd16S1ji7lMPfNbOh31Q alloc] initWithSupportedKeys:v13 queueForExecutingCompletions:*(v11 + 4)];
    v25 = *(v11 + 1);
    *(v11 + 1) = v24;

    v26 = [[Gpvs7B00ytMM3bTs alloc] initWithdEyUJuqYjUufZYGN:nCopy Po0NnEfbQHpSgzj7:v20 jHoy3L8RogTTbjjB:cr9c4->var8 X5iUjoUzZPsj1b68:cr9c4->var6];
    v27 = *(v11 + 3);
    *(v11 + 3) = v26;
  }

  cr9c4 = v11;
LABEL_10:

  return cr9c4;
}

- (void)dealloc
{
  smoothContext = self->_smoothContext;
  sub_1002C9B10();
  free(self->_smoothContext);
  v4.receiver = self;
  v4.super_class = eTBtehykeBvfpeTP;
  [(eTBtehykeBvfpeTP *)&v4 dealloc];
}

- (void)PLMCCRRqEw4moT9R:(_KUwyEjpVZR65eUyl *)r UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  hmmaCopy = hmma;
  completionCopy = completion;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1000323A4;
  v39 = sub_1000323B4;
  v40 = 0;
  if (![(eTBtehykeBvfpeTP *)self hi5ump20ke7n4x6o:r])
  {
    v14 = [eTBtehykeBvfpeTP hKjCyPlJs74k9vMV:151];
    v15 = v36[5];
    v36[5] = v14;

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000323BC;
    v32[3] = &unk_100690590;
    v34 = &v35;
    v33 = completionCopy;
    [(eTBtehykeBvfpeTP *)self jCbmcix0xxhNVOSS:r TWWnmIjkBlMfHmma:hmmaCopy withCompletion:v32];
  }

  v16 = [(Gpvs7B00ytMM3bTs *)self->_evaluatorManager asyncEvaluatorForType:r->var0 version:r->var1];
  v30 = *&ue1->profileIDPrefix;
  profileParsedDate = ue1->profileParsedDate;
  v17 = [v16 beginSignpost:&v30];
  i4KDOQicW9Xd5WBz = self->_i4KDOQicW9Xd5WBz;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100032414;
  v22[3] = &unk_1006905E0;
  v22[4] = self;
  rCopy = r;
  v19 = hmmaCopy;
  v23 = v19;
  v20 = v16;
  v24 = v20;
  v27 = *&ue1->profileIDPrefix;
  v28 = ue1->profileParsedDate;
  v29 = v17;
  v21 = completionCopy;
  v25 = v21;
  v30 = *&ue1->profileIDPrefix;
  profileParsedDate = ue1->profileParsedDate;
  [v20 compute:r UtPlzRffoEpw7Ue1:&v30 SFkZRA5Ek9YzhDRs:rs jAVr67FQ6j4EzsgV:self i4KDOQicW9Xd5WBz:i4KDOQicW9Xd5WBz TWWnmIjkBlMfHmma:v19 withCompletion:v22];

  _Block_object_dispose(&v35, 8);
}

- (void)KKbGrSwDukIWFRjI:(_JqTz0JeuAWNFxnUl *)i i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100032628;
  v10[3] = &unk_100690608;
  completionCopy = completion;
  v9 = completionCopy;
  [Yp00msaYdVlZesvU eJSthhES04gLkDjz:&i->var1 i4KDOQicW9Xd5WBz:bz TWWnmIjkBlMfHmma:hmma withCompletion:v10];
}

- (unsigned)pDYAPbGDBo6ZMVXG:(id)g
{
  gCopy = g;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [&off_1006BABC8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v27;
LABEL_3:
    v8 = 0;
    v9 = v6;
    while (1)
    {
      if (*v27 != v7)
      {
        objc_enumerationMutation(&off_1006BABC8);
      }

      v10 = [NSString stringWithFormat:@"%@\\s*%@\\s*%@", *(*(&v26 + 1) + 8 * v8), @"[!=|~<>]+", @"[A-Z0-9a-z\\._%+-]+"];
      v25 = v9;
      v11 = [NSRegularExpression regularExpressionWithPattern:v10 options:1 error:&v25];
      v6 = v25;

      if ([v11 numberOfMatchesInString:gCopy options:8 range:{0, objc_msgSend(gCopy, "length")}])
      {
        break;
      }

      v8 = v8 + 1;
      v9 = v6;
      if (v5 == v8)
      {
        v5 = [&off_1006BABC8 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
    v6 = 0;
LABEL_11:
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [&off_1006BABE0 countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (!v12)
    {
      v18 = 1;
      goto LABEL_21;
    }

    v13 = v12;
    v14 = *v22;
LABEL_13:
    v15 = 0;
    v16 = v6;
    while (1)
    {
      if (*v22 != v14)
      {
        objc_enumerationMutation(&off_1006BABE0);
      }

      v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@\\s*%@\\s*%@", *(*(&v21 + 1) + 8 * v15), @"[!=|~<>]+", @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}");
      v20 = v16;
      v11 = [NSRegularExpression regularExpressionWithPattern:v17 options:1 error:&v20];
      v6 = v20;

      if ([v11 numberOfMatchesInString:gCopy options:8 range:{0, objc_msgSend(gCopy, "length")}])
      {
        break;
      }

      v15 = v15 + 1;
      v16 = v6;
      if (v13 == v15)
      {
        v13 = [&off_1006BABE0 countByEnumeratingWithState:&v21 objects:v30 count:16];
        v18 = 1;
        if (v13)
        {
          goto LABEL_13;
        }

        goto LABEL_21;
      }
    }
  }

  v18 = 0;
LABEL_21:

  return v18;
}

- (unsigned)hi5ump20ke7n4x6o:(_KUwyEjpVZR65eUyl *)hi5ump20ke7n4x6o
{
  if (hi5ump20ke7n4x6o->var0 - 1 > 1)
  {
    return 1;
  }

  v4 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:hi5ump20ke7n4x6o->var4.var0.var0 gsx0MJUoOpcxcozG:hi5ump20ke7n4x6o->var4.var1.var0.var1];
  LOBYTE(self) = [(eTBtehykeBvfpeTP *)self pDYAPbGDBo6ZMVXG:v4];

  return self;
}

- (void)jCbmcix0xxhNVOSS:(_KUwyEjpVZR65eUyl *)s TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  evaluatorManager = self->_evaluatorManager;
  var0 = s->var0;
  var1 = s->var1;
  completionCopy = completion;
  hmmaCopy = hmma;
  v13 = [(Gpvs7B00ytMM3bTs *)evaluatorManager asyncEvaluatorForType:var0 version:var1];
  [v13 computeHash:s jAVr67FQ6j4EzsgV:self i4KDOQicW9Xd5WBz:self->_i4KDOQicW9Xd5WBz TWWnmIjkBlMfHmma:hmmaCopy withCompletion:completionCopy];
}

@end