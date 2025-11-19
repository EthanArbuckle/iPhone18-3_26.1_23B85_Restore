@interface CheckForDemotedApplicationsOperation
- (CheckForDemotedApplicationsOperation)init;
- (void)run;
@end

@implementation CheckForDemotedApplicationsOperation

- (CheckForDemotedApplicationsOperation)init
{
  v4.receiver = self;
  v4.super_class = CheckForDemotedApplicationsOperation;
  v2 = [(CheckForDemotedApplicationsOperation *)&v4 init];
  if (v2)
  {
    NSLog(@"here in init");
  }

  return v2;
}

- (void)run
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002132F0;
  v4[3] = &unk_100328A90;
  v4[4] = &v5;
  [v3 enumerateBundlesOfType:0 block:v4];

  self->_hasDemotedApplications = *(v6 + 24);
  [(CheckForDemotedApplicationsOperation *)self setError:0];
  [(CheckForDemotedApplicationsOperation *)self setSuccess:1];
  _Block_object_dispose(&v5, 8);
}

@end