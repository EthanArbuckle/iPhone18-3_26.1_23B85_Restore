@interface BKSystemShellClient
- (NSString)debugDescription;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation BKSystemShellClient

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v5 = [v4 hasSuccinctStyle];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = self;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006FF64;
  v12[3] = &unk_1000FD128;
  v8 = v4;
  v13 = v8;
  v14 = self;
  [v8 appendProem:v7 block:v12];
  if ((v6 & 1) == 0)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006FF94;
    v9[3] = &unk_1000FD128;
    v10 = v8;
    v11 = self;
    [v10 appendBodySectionWithName:0 block:v9];
  }
}

- (NSString)debugDescription
{
  v3 = +[BSDescriptionStyle debugStyle];
  v4 = [BSDescriptionStream descriptionForRootObject:self withStyle:v3];

  return v4;
}

@end