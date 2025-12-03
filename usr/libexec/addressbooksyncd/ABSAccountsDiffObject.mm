@interface ABSAccountsDiffObject
- (ABSAccountsDiffObject)init;
- (BOOL)matches:(id)matches;
- (NSString)description;
@end

@implementation ABSAccountsDiffObject

- (ABSAccountsDiffObject)init
{
  v8.receiver = self;
  v8.super_class = ABSAccountsDiffObject;
  v2 = [(ABSAccountsDiffObject *)&v8 init];
  if (v2)
  {
    v3 = +[ABSyncInterface sharedInstance];
    serverState = [v3 serverState];
    v5 = [serverState getStringValueForKey:@"com.apple.absd.accounts.sha" default:@"0"];
    sha = v2->_sha;
    v2->_sha = v5;
  }

  return v2;
}

- (BOOL)matches:(id)matches
{
  v4 = +[ABSAccountsSyncObject sha];
  v5 = [(ABSAccountsDiffObject *)self sha];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (NSString)description
{
  v3 = [(ABSAccountsDiffObject *)self sha];
  v4 = [NSString stringWithFormat:@"<ABSAccountsDiffObject:%p, sha: %@>", self, v3];

  return v4;
}

@end