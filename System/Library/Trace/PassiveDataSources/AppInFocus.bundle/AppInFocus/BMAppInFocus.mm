@interface BMAppInFocus
- (id)jsonDictST;
@end

@implementation BMAppInFocus

- (id)jsonDictST
{
  absoluteTimestamp = [(BMAppInFocus *)self absoluteTimestamp];

  if (absoluteTimestamp && ([(BMAppInFocus *)self bundleID], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v23[0] = @"typeString";
    [(BMAppInFocus *)self type];
    v5 = BMAppInFocusTypeAsString();
    v24[0] = v5;
    v23[1] = @"bundleID";
    bundleID = [(BMAppInFocus *)self bundleID];
    v24[1] = bundleID;
    v23[2] = @"timeSinceReferenceDate";
    absoluteTimestamp2 = [(BMAppInFocus *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v8 = [NSNumber numberWithDouble:?];
    v24[2] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];

    v10 = [v9 mutableCopy];
    if ([(BMAppInFocus *)self hasStarting])
    {
      v11 = [NSNumber numberWithBool:[(BMAppInFocus *)self starting]];
      [v10 setObject:v11 forKeyedSubscript:@"starting"];
    }

    launchReason = [(BMAppInFocus *)self launchReason];

    if (launchReason)
    {
      launchReason2 = [(BMAppInFocus *)self launchReason];
      [v10 setObject:launchReason2 forKeyedSubscript:@"launchReason"];
    }

    parentBundleID = [(BMAppInFocus *)self parentBundleID];

    if (parentBundleID)
    {
      parentBundleID2 = [(BMAppInFocus *)self parentBundleID];
      [v10 setObject:parentBundleID2 forKeyedSubscript:@"parentBundleID"];
    }

    extensionHostID = [(BMAppInFocus *)self extensionHostID];

    if (extensionHostID)
    {
      extensionHostID2 = [(BMAppInFocus *)self extensionHostID];
      [v10 setObject:extensionHostID2 forKeyedSubscript:@"extensionHostID"];
    }

    shortVersionString = [(BMAppInFocus *)self shortVersionString];

    if (shortVersionString)
    {
      shortVersionString2 = [(BMAppInFocus *)self shortVersionString];
      [v10 setObject:shortVersionString2 forKeyedSubscript:@"shortVersionString"];
    }

    exactVersionString = [(BMAppInFocus *)self exactVersionString];

    if (exactVersionString)
    {
      exactVersionString2 = [(BMAppInFocus *)self exactVersionString];
      [v10 setObject:exactVersionString2 forKeyedSubscript:@"exactVersionString"];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end