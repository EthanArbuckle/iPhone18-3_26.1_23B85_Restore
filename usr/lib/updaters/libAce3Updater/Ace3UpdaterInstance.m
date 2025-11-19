@interface Ace3UpdaterInstance
- (uarpRestoreLayer4Callbacks)uarpRestoreLayer4Callbacks;
- (void)uarpRestoreInitOptions;
@end

@implementation Ace3UpdaterInstance

- (void)uarpRestoreInitOptions
{
  v3 = calloc(1uLL, 0x50uLL);
  v4 = v3;
  if (v3)
  {
    v3[9] = 1;
    *v3 = [(UARPSoCUpdaterInstance *)self routerID];
    *(v4 + 1) = [(UARPSoCUpdaterInstance *)self logicUnitNumber];
    v4[8] = [(UARPSoCUpdaterInstance *)self skipSameVersion];
    *(v4 + 18) = [(UARPSoCUpdaterInstance *)self updaterMode];
    if ([(UARPSoCUpdaterInstance *)self updaterMode]== 4)
    {
      v4[10] = 1;
    }
  }

  else
  {
    v5 = [(UARPSoCUpdaterInstance *)self log];
    [v5 log:{@"%s: error allocating options: No resources", "-[Ace3UpdaterInstance uarpRestoreInitOptions]"}];
  }

  return v4;
}

- (uarpRestoreLayer4Callbacks)uarpRestoreLayer4Callbacks
{
  v3 = calloc(1uLL, 0x98uLL);
  v4 = v3;
  if (v3)
  {
    v3->var0 = USBCUpdateEndpointInitialize;
  }

  else
  {
    v5 = [(UARPSoCUpdaterInstance *)self log];
    [v5 log:{@"%s: error allocating callbacks: No resources", "-[Ace3UpdaterInstance uarpRestoreLayer4Callbacks]"}];
  }

  return v4;
}

@end