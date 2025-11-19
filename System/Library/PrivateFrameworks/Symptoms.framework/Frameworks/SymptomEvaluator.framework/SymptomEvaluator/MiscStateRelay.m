@interface MiscStateRelay
- (void)setCellPrivateNetworkActive:(BOOL)a3;
- (void)setCellWRMExpensive:(BOOL)a3;
- (void)setCellWRMStatus:(unint64_t)a3;
- (void)setCellWRMStatusProlongedBad:(BOOL)a3;
- (void)setHomeLocationIsKnown:(BOOL)a3;
- (void)setLOIUseAuthorized:(BOOL)a3;
- (void)setWifiAlwaysOutrank:(BOOL)a3;
- (void)setWifiDnsProlongedOut:(BOOL)a3;
- (void)setWifiGoodSecurity:(BOOL)a3;
- (void)setWifiHome:(BOOL)a3;
- (void)setWifiHotspot20:(BOOL)a3;
- (void)setWifiManuallyJoined:(BOOL)a3;
- (void)setWifiNeverOutrank:(BOOL)a3;
- (void)setWifiPolledFlowsCurrentlyBad:(BOOL)a3;
- (void)setWifiPolledFlowsProlongedBad:(BOOL)a3;
- (void)setWifiProfileBased:(BOOL)a3;
- (void)setWifiPublic:(BOOL)a3;
- (void)setWifiWRMStatus:(unint64_t)a3;
@end

@implementation MiscStateRelay

- (void)setCellPrivateNetworkActive:(BOOL)a3
{
  if (self->_cellPrivateNetworkActive != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"cellPrivateNetworkActive"];
    self->_cellPrivateNetworkActive = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"cellPrivateNetworkActive"];
  }
}

- (void)setCellWRMStatus:(unint64_t)a3
{
  if (self->_cellWRMStatus != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"cellWRMStatus"];
    self->_cellWRMStatus = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"cellWRMStatus"];
  }
}

- (void)setCellWRMStatusProlongedBad:(BOOL)a3
{
  if (self->_cellWRMStatusProlongedBad != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"cellWRMStatusProlongedBad"];
    self->_cellWRMStatusProlongedBad = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"cellWRMStatusProlongedBad"];
  }
}

- (void)setCellWRMExpensive:(BOOL)a3
{
  if (self->_cellWRMExpensive != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"cellWRMExpensive"];
    self->_cellWRMExpensive = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"cellWRMExpensive"];
  }
}

- (void)setWifiDnsProlongedOut:(BOOL)a3
{
  if (self->_wifiDnsProlongedOut != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiDnsProlongedOut"];
    self->_wifiDnsProlongedOut = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiDnsProlongedOut"];
  }
}

- (void)setWifiGoodSecurity:(BOOL)a3
{
  if (self->_wifiGoodSecurity != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiGoodSecurity"];
    self->_wifiGoodSecurity = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiGoodSecurity"];
  }
}

- (void)setWifiHotspot20:(BOOL)a3
{
  if (self->_wifiHotspot20 != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiHotspot20"];
    self->_wifiHotspot20 = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiHotspot20"];
  }
}

- (void)setWifiManuallyJoined:(BOOL)a3
{
  if (self->_wifiManuallyJoined != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiManuallyJoined"];
    self->_wifiManuallyJoined = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiManuallyJoined"];
  }
}

- (void)setWifiPolledFlowsCurrentlyBad:(BOOL)a3
{
  if (self->_wifiPolledFlowsCurrentlyBad != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiPolledFlowsCurrentlyBad"];
    self->_wifiPolledFlowsCurrentlyBad = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiPolledFlowsCurrentlyBad"];
  }
}

- (void)setWifiPolledFlowsProlongedBad:(BOOL)a3
{
  if (self->_wifiPolledFlowsProlongedBad != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiPolledFlowsProlongedBad"];
    self->_wifiPolledFlowsProlongedBad = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiPolledFlowsProlongedBad"];
  }
}

- (void)setWifiProfileBased:(BOOL)a3
{
  if (self->_wifiProfileBased != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiProfileBased"];
    self->_wifiProfileBased = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiProfileBased"];
  }
}

- (void)setWifiAlwaysOutrank:(BOOL)a3
{
  if (self->_wifiAlwaysOutrank != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiAlwaysOutrank"];
    self->_wifiAlwaysOutrank = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiAlwaysOutrank"];
  }
}

- (void)setWifiNeverOutrank:(BOOL)a3
{
  if (self->_wifiNeverOutrank != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiNeverOutrank"];
    self->_wifiNeverOutrank = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiNeverOutrank"];
  }
}

- (void)setWifiPublic:(BOOL)a3
{
  if (self->_wifiPublic != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiPublic"];
    self->_wifiPublic = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiPublic"];
  }
}

- (void)setLOIUseAuthorized:(BOOL)a3
{
  if (self->_LOIUseAuthorized != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"LOIUseAuthorized"];
    self->_LOIUseAuthorized = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"LOIUseAuthorized"];
  }
}

- (void)setHomeLocationIsKnown:(BOOL)a3
{
  if (self->_homeLocationIsKnown != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"homeLocationIsKnown"];
    self->_homeLocationIsKnown = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"homeLocationIsKnown"];
  }
}

- (void)setWifiHome:(BOOL)a3
{
  if (self->_wifiHome != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiHome"];
    self->_wifiHome = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiHome"];
  }
}

- (void)setWifiWRMStatus:(unint64_t)a3
{
  if (self->_wifiWRMStatus != a3)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiWRMStatus"];
    self->_wifiWRMStatus = a3;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiWRMStatus"];
  }
}

@end