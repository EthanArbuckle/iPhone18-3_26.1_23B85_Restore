@interface DEPowerlogExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)a3;
@end

@implementation DEPowerlogExtension

- (id)attachmentList
{
  v15 = @"folder";
  v3 = NSTemporaryDirectory();
  v16 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  v5 = PLQueryRegistered();
  v6 = v5;
  if (v5 && ([v5 objectForKeyedSubscript:@"folder"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [NSString stringWithFormat:@"%@%@", @".PLSQL", @".gz"];
    v9 = [NSString stringWithFormat:@"(%@)$", v8];
    v10 = [NSRegularExpression regularExpressionWithPattern:v9 options:1 error:0];
    v11 = [v6 objectForKeyedSubscript:@"folder"];
    v12 = [NSURL fileURLWithPath:v11];
    v13 = [(DEPowerlogExtension *)self filesInDir:v12 matchingPattern:v10 excludingPattern:0];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  return v13;
}

- (id)attachmentsForParameters:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"clean"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"clean"];
    v6 = [v5 intValue];

    if (v6 == 1)
    {
      v27[0] = @"folder";
      v7 = NSTemporaryDirectory();
      v27[1] = @"clean";
      v28[0] = v7;
      v28[1] = &__kCFBooleanTrue;
      v4 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];

      PLQueryRegistered();
    }

    else
    {
      v4 = 0;
    }
  }

  v8 = NSTemporaryDirectory();
  v9 = [v3 objectForKey:@"attachmentPath"];

  if (v9)
  {
    v10 = [v3 objectForKeyedSubscript:@"attachmentPath"];

    v8 = v10;
  }

  v11 = [v3 objectForKey:@"collect"];

  if (v11 && ([v3 objectForKeyedSubscript:@"collect"], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "intValue"), v12, !v13))
  {
    v20 = &__NSArray0__struct;
  }

  else
  {
    v14 = [v3 objectForKey:@"user"];

    if (v14)
    {
      v25[1] = @"user";
      v26[0] = v8;
      v25[0] = @"folder";
      v15 = [v3 objectForKeyedSubscript:@"user"];
      v26[1] = v15;
      v16 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];

      v4 = v16;
    }

    else
    {
      v23 = @"folder";
      v24 = v8;
      [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v4 = v15 = v4;
    }

    v17 = PLQueryRegistered();
    v18 = [v17 objectForKeyedSubscript:@"path"];
    if (v18)
    {
      v19 = [DEAttachmentItem attachmentWithPath:v18];
      [v19 setDeleteOnAttach:&__kCFBooleanTrue];
      [v19 setShouldCompress:&__kCFBooleanTrue];
      v22 = v19;
      v20 = [NSArray arrayWithObjects:&v22 count:1];
    }

    else
    {
      v20 = &__NSArray0__struct;
    }
  }

  return v20;
}

@end