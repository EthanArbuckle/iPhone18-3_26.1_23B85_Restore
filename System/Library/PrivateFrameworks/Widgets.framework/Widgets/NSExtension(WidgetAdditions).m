@interface NSExtension(WidgetAdditions)
- (BOOL)wg_hasExplicitUserElectionState;
- (id)wg_description;
@end

@implementation NSExtension(WidgetAdditions)

- (id)wg_description
{
  v2 = [a1 description];
  v3 = [a1 _plugIn];
  v4 = [v3 uuid];
  v5 = [a1 optedIn];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [v2 stringByAppendingFormat:@" {uuid = %@; optedIn = %@}", v4, v6];;

  return v7;
}

- (BOOL)wg_hasExplicitUserElectionState
{
  v1 = [a1 _plugIn];
  v2 = [v1 userElection];

  return v2 != 0;
}

@end