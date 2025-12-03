@interface CSStudiesServerRegistrar
- (void)registerWithHandler:(id)handler;
@end

@implementation CSStudiesServerRegistrar

- (void)registerWithHandler:(id)handler
{
  handlerCopy = handler;
  endpoint = [(CSStudiesServerRegistrar *)self endpoint];
  v6 = [NSMutableURLRequest requestWithURL:endpoint];

  authorization = [(CSStudiesServerRegistrar *)self authorization];
  [v6 setValue:authorization forHTTPHeaderField:@"Authorization"];

  [v6 setHTTPMethod:@"POST"];
  config = [(CSStudiesServerRegistrar *)self config];
  v9 = [NSURLSession sessionWithConfiguration:config];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100015E08;
  v12[3] = &unk_100413140;
  v13 = handlerCopy;
  v10 = handlerCopy;
  v11 = [v9 dataTaskWithRequest:v6 completionHandler:v12];
  [v11 resume];
}

@end