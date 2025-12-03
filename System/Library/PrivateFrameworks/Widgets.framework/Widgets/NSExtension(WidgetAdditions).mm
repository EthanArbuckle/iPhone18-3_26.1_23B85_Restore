@interface NSExtension(WidgetAdditions)
- (BOOL)wg_hasExplicitUserElectionState;
- (id)wg_description;
@end

@implementation NSExtension(WidgetAdditions)

- (id)wg_description
{
  v2 = [self description];
  _plugIn = [self _plugIn];
  uuid = [_plugIn uuid];
  optedIn = [self optedIn];
  v6 = @"NO";
  if (optedIn)
  {
    v6 = @"YES";
  }

  v7 = [v2 stringByAppendingFormat:@" {uuid = %@; optedIn = %@}", uuid, v6];;

  return v7;
}

- (BOOL)wg_hasExplicitUserElectionState
{
  _plugIn = [self _plugIn];
  userElection = [_plugIn userElection];

  return userElection != 0;
}

@end