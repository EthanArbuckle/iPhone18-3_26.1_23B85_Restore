@interface CSStudiesServerRegistrar
- (void)registerWithHandler:(id)a3;
@end

@implementation CSStudiesServerRegistrar

- (void)registerWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(CSStudiesServerRegistrar *)self endpoint];
  v6 = [NSMutableURLRequest requestWithURL:v5];

  v7 = [(CSStudiesServerRegistrar *)self authorization];
  [v6 setValue:v7 forHTTPHeaderField:@"Authorization"];

  [v6 setHTTPMethod:@"POST"];
  v8 = [(CSStudiesServerRegistrar *)self config];
  v9 = [NSURLSession sessionWithConfiguration:v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100015E08;
  v12[3] = &unk_100413140;
  v13 = v4;
  v10 = v4;
  v11 = [v9 dataTaskWithRequest:v6 completionHandler:v12];
  [v11 resume];
}

@end