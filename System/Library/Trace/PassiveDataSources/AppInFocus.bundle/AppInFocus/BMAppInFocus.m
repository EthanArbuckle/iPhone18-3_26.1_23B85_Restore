@interface BMAppInFocus
- (id)jsonDictST;
@end

@implementation BMAppInFocus

- (id)jsonDictST
{
  v3 = [(BMAppInFocus *)self absoluteTimestamp];

  if (v3 && ([(BMAppInFocus *)self bundleID], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v23[0] = @"typeString";
    [(BMAppInFocus *)self type];
    v5 = BMAppInFocusTypeAsString();
    v24[0] = v5;
    v23[1] = @"bundleID";
    v6 = [(BMAppInFocus *)self bundleID];
    v24[1] = v6;
    v23[2] = @"timeSinceReferenceDate";
    v7 = [(BMAppInFocus *)self absoluteTimestamp];
    [v7 timeIntervalSinceReferenceDate];
    v8 = [NSNumber numberWithDouble:?];
    v24[2] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];

    v10 = [v9 mutableCopy];
    if ([(BMAppInFocus *)self hasStarting])
    {
      v11 = [NSNumber numberWithBool:[(BMAppInFocus *)self starting]];
      [v10 setObject:v11 forKeyedSubscript:@"starting"];
    }

    v12 = [(BMAppInFocus *)self launchReason];

    if (v12)
    {
      v13 = [(BMAppInFocus *)self launchReason];
      [v10 setObject:v13 forKeyedSubscript:@"launchReason"];
    }

    v14 = [(BMAppInFocus *)self parentBundleID];

    if (v14)
    {
      v15 = [(BMAppInFocus *)self parentBundleID];
      [v10 setObject:v15 forKeyedSubscript:@"parentBundleID"];
    }

    v16 = [(BMAppInFocus *)self extensionHostID];

    if (v16)
    {
      v17 = [(BMAppInFocus *)self extensionHostID];
      [v10 setObject:v17 forKeyedSubscript:@"extensionHostID"];
    }

    v18 = [(BMAppInFocus *)self shortVersionString];

    if (v18)
    {
      v19 = [(BMAppInFocus *)self shortVersionString];
      [v10 setObject:v19 forKeyedSubscript:@"shortVersionString"];
    }

    v20 = [(BMAppInFocus *)self exactVersionString];

    if (v20)
    {
      v21 = [(BMAppInFocus *)self exactVersionString];
      [v10 setObject:v21 forKeyedSubscript:@"exactVersionString"];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end