@interface SUCoreFSM(SoftwareUpdateUI)
- (void)postEvent:()SoftwareUpdateUI endingActivity:;
- (void)postEvent:()SoftwareUpdateUI withInfo:endingActivity:;
@end

@implementation SUCoreFSM(SoftwareUpdateUI)

- (void)postEvent:()SoftwareUpdateUI endingActivity:
{
  v6 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (a4 && *a4)
  {
    if (LOBYTE((*a4)[1].opaque[1]))
    {
      os_activity_scope_leave(*a4);
    }

    free(*a4);
    *a4 = 0;
  }

  [v6 postEvent:location[0]];
  objc_storeStrong(location, 0);
}

- (void)postEvent:()SoftwareUpdateUI withInfo:endingActivity:
{
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if (a5 && *a5)
  {
    if (LOBYTE((*a5)[1].opaque[1]))
    {
      os_activity_scope_leave(*a5);
    }

    free(*a5);
    *a5 = 0;
  }

  [v9 postEvent:location[0] withInfo:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

@end