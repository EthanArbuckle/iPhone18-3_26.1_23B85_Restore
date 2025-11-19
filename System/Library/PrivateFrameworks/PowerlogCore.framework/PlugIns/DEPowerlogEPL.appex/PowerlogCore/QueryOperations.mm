@interface QueryOperations
- (QueryOperations)init;
- (QueryOperations)initWithCompletion:(id)a3;
- (void)main;
@end

@implementation QueryOperations

- (QueryOperations)init
{
  v6.receiver = self;
  v6.super_class = QueryOperations;
  v2 = [(QueryOperations *)&v6 init];
  v3 = v2;
  if (v2)
  {
    completion = v2->_completion;
    v2->_completion = 0;

    v3->_queryType = 0;
  }

  return v3;
}

- (QueryOperations)initWithCompletion:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = QueryOperations;
  v5 = [(QueryOperations *)&v9 init];
  if (v5)
  {
    v6 = objc_retainBlock(v4);
    completion = v5->_completion;
    v5->_completion = v6;

    v5->_queryType = 0;
  }

  return v5;
}

- (void)main
{
  v3 = [(QueryOperations *)self functionName];

  if (!v3)
  {
    return;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100001340;
  v40 = sub_100001350;
  v41 = 0;
  v4 = [(QueryOperations *)self manualFileName];

  if (v4)
  {
    v5 = [(QueryOperations *)self manualFileName];
    v6 = [NSString stringWithFormat:@"%@.plist", v5];

    v7 = [NSDictionary dictionaryWithContentsOfFile:v6];
    v8 = v37[5];
    v37[5] = v7;
  }

  if (v37[5])
  {
    v9 = 0;
    goto LABEL_25;
  }

  v29 = +[NSMutableDictionary dictionary];
  v10 = [(QueryOperations *)self functionName];
  v11 = [v10 isEqualToString:@"PLBatteryUIQueryFunctionKey"];

  if (v11)
  {
    v12 = [NSNumber numberWithUnsignedInt:[(QueryOperations *)self queryType]];
    [v29 setObject:v12 forKey:@"PLBatteryUIQueryTypeKey"];
  }

  else
  {
    v13 = [(QueryOperations *)self functionName];
    v14 = [v13 isEqualToString:@"PLBatteryUIModelsQueryFunctionKey"];

    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = [(QueryOperations *)self graphArray];

    if (!v15)
    {
      goto LABEL_12;
    }

    v12 = [(QueryOperations *)self graphArray];
    [v29 setObject:v12 forKey:@"ModelGraphName"];
  }

LABEL_12:
  v16 = dispatch_semaphore_create(0);
  v17 = dispatch_get_global_queue(2, 0);
  v18 = 0;
  while (1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001358;
    block[3] = &unk_100008270;
    block[4] = self;
    v35 = &v36;
    v19 = v29;
    v33 = v19;
    v20 = v16;
    v34 = v20;
    dispatch_async(v17, block);

    v21 = dispatch_time(0, 60000000000);
    if (!dispatch_semaphore_wait(v20, v21))
    {
      break;
    }

    NSLog(@"Timeout happened on %d try. Retrying if possible.", v18);
LABEL_20:

    v18 = (v18 + 1);
    if (v18 == 3)
    {
      goto LABEL_24;
    }
  }

  v22 = [(QueryOperations *)self functionName];
  v23 = [v22 isEqualToString:@"PLBatteryUIQueryFunctionKey"];

  if (!v23)
  {
    goto LABEL_23;
  }

  v24 = v37[5];
  if (!v24)
  {
    goto LABEL_19;
  }

  v25 = [v24 objectForKeyedSubscript:@"PLBatteryUIXPCVersionKey"];
  if (!v25 || ([v37[5] objectForKeyedSubscript:@"PLBatteryUIXPCVersionKey"], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "doubleValue"), v28 = v27, v26, v25, v28 != 1.0))
  {
LABEL_19:
    NSLog(@"Received invalid BUI graph response on try %d, sleeping...", v18);
    [NSThread sleepForTimeInterval:3.0];
    goto LABEL_20;
  }

  NSLog(@"Received valid BUI graph response on try %d.", v18);
LABEL_23:

LABEL_24:
  v9 = v37[5];

LABEL_25:
  if (([(QueryOperations *)self isCancelled]& 1) == 0)
  {
    if (self->_completion)
    {
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100001408;
      v30[3] = &unk_100008298;
      v30[4] = self;
      v31 = v9;
      dispatch_sync(&_dispatch_main_q, v30);
    }
  }

  _Block_object_dispose(&v36, 8);
}

@end