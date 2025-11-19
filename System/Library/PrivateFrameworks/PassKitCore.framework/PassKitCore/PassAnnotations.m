@interface PassAnnotations
+ (id)_propertySettersForPassAnnotations;
- (id)passAnnotations;
@end

@implementation PassAnnotations

+ (id)_propertySettersForPassAnnotations
{
  v4[0] = @"sorting_state";
  v4[1] = @"archived_timestamp";
  v5[0] = &stru_100857920;
  v5[1] = &stru_100857940;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (id)passAnnotations
{
  v3 = objc_alloc_init(PKPassAnnotations);
  v4 = +[PassAnnotations _propertySettersForPassAnnotations];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000065BC;
  v11[3] = &unk_10083C240;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

@end