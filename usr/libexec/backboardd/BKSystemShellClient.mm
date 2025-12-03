@interface BKSystemShellClient
- (NSString)debugDescription;
- (void)appendDescriptionToStream:(id)stream;
@end

@implementation BKSystemShellClient

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  hasSuccinctStyle = [streamCopy hasSuccinctStyle];
  v6 = hasSuccinctStyle;
  if (hasSuccinctStyle)
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006FF64;
  v12[3] = &unk_1000FD128;
  v8 = streamCopy;
  v13 = v8;
  selfCopy2 = self;
  [v8 appendProem:selfCopy block:v12];
  if ((v6 & 1) == 0)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006FF94;
    v9[3] = &unk_1000FD128;
    v10 = v8;
    selfCopy3 = self;
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