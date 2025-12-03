@interface MiscStateRelay
- (void)setCellPrivateNetworkActive:(BOOL)active;
- (void)setCellWRMExpensive:(BOOL)expensive;
- (void)setCellWRMStatus:(unint64_t)status;
- (void)setCellWRMStatusProlongedBad:(BOOL)bad;
- (void)setHomeLocationIsKnown:(BOOL)known;
- (void)setLOIUseAuthorized:(BOOL)authorized;
- (void)setWifiAlwaysOutrank:(BOOL)outrank;
- (void)setWifiDnsProlongedOut:(BOOL)out;
- (void)setWifiGoodSecurity:(BOOL)security;
- (void)setWifiHome:(BOOL)home;
- (void)setWifiHotspot20:(BOOL)hotspot20;
- (void)setWifiManuallyJoined:(BOOL)joined;
- (void)setWifiNeverOutrank:(BOOL)outrank;
- (void)setWifiPolledFlowsCurrentlyBad:(BOOL)bad;
- (void)setWifiPolledFlowsProlongedBad:(BOOL)bad;
- (void)setWifiProfileBased:(BOOL)based;
- (void)setWifiPublic:(BOOL)public;
- (void)setWifiWRMStatus:(unint64_t)status;
@end

@implementation MiscStateRelay

- (void)setCellPrivateNetworkActive:(BOOL)active
{
  if (self->_cellPrivateNetworkActive != active)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"cellPrivateNetworkActive"];
    self->_cellPrivateNetworkActive = active;

    [(MiscStateRelay *)self didChangeValueForKey:@"cellPrivateNetworkActive"];
  }
}

- (void)setCellWRMStatus:(unint64_t)status
{
  if (self->_cellWRMStatus != status)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"cellWRMStatus"];
    self->_cellWRMStatus = status;

    [(MiscStateRelay *)self didChangeValueForKey:@"cellWRMStatus"];
  }
}

- (void)setCellWRMStatusProlongedBad:(BOOL)bad
{
  if (self->_cellWRMStatusProlongedBad != bad)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"cellWRMStatusProlongedBad"];
    self->_cellWRMStatusProlongedBad = bad;

    [(MiscStateRelay *)self didChangeValueForKey:@"cellWRMStatusProlongedBad"];
  }
}

- (void)setCellWRMExpensive:(BOOL)expensive
{
  if (self->_cellWRMExpensive != expensive)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"cellWRMExpensive"];
    self->_cellWRMExpensive = expensive;

    [(MiscStateRelay *)self didChangeValueForKey:@"cellWRMExpensive"];
  }
}

- (void)setWifiDnsProlongedOut:(BOOL)out
{
  if (self->_wifiDnsProlongedOut != out)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiDnsProlongedOut"];
    self->_wifiDnsProlongedOut = out;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiDnsProlongedOut"];
  }
}

- (void)setWifiGoodSecurity:(BOOL)security
{
  if (self->_wifiGoodSecurity != security)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiGoodSecurity"];
    self->_wifiGoodSecurity = security;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiGoodSecurity"];
  }
}

- (void)setWifiHotspot20:(BOOL)hotspot20
{
  if (self->_wifiHotspot20 != hotspot20)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiHotspot20"];
    self->_wifiHotspot20 = hotspot20;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiHotspot20"];
  }
}

- (void)setWifiManuallyJoined:(BOOL)joined
{
  if (self->_wifiManuallyJoined != joined)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiManuallyJoined"];
    self->_wifiManuallyJoined = joined;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiManuallyJoined"];
  }
}

- (void)setWifiPolledFlowsCurrentlyBad:(BOOL)bad
{
  if (self->_wifiPolledFlowsCurrentlyBad != bad)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiPolledFlowsCurrentlyBad"];
    self->_wifiPolledFlowsCurrentlyBad = bad;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiPolledFlowsCurrentlyBad"];
  }
}

- (void)setWifiPolledFlowsProlongedBad:(BOOL)bad
{
  if (self->_wifiPolledFlowsProlongedBad != bad)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiPolledFlowsProlongedBad"];
    self->_wifiPolledFlowsProlongedBad = bad;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiPolledFlowsProlongedBad"];
  }
}

- (void)setWifiProfileBased:(BOOL)based
{
  if (self->_wifiProfileBased != based)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiProfileBased"];
    self->_wifiProfileBased = based;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiProfileBased"];
  }
}

- (void)setWifiAlwaysOutrank:(BOOL)outrank
{
  if (self->_wifiAlwaysOutrank != outrank)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiAlwaysOutrank"];
    self->_wifiAlwaysOutrank = outrank;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiAlwaysOutrank"];
  }
}

- (void)setWifiNeverOutrank:(BOOL)outrank
{
  if (self->_wifiNeverOutrank != outrank)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiNeverOutrank"];
    self->_wifiNeverOutrank = outrank;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiNeverOutrank"];
  }
}

- (void)setWifiPublic:(BOOL)public
{
  if (self->_wifiPublic != public)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiPublic"];
    self->_wifiPublic = public;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiPublic"];
  }
}

- (void)setLOIUseAuthorized:(BOOL)authorized
{
  if (self->_LOIUseAuthorized != authorized)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"LOIUseAuthorized"];
    self->_LOIUseAuthorized = authorized;

    [(MiscStateRelay *)self didChangeValueForKey:@"LOIUseAuthorized"];
  }
}

- (void)setHomeLocationIsKnown:(BOOL)known
{
  if (self->_homeLocationIsKnown != known)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"homeLocationIsKnown"];
    self->_homeLocationIsKnown = known;

    [(MiscStateRelay *)self didChangeValueForKey:@"homeLocationIsKnown"];
  }
}

- (void)setWifiHome:(BOOL)home
{
  if (self->_wifiHome != home)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiHome"];
    self->_wifiHome = home;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiHome"];
  }
}

- (void)setWifiWRMStatus:(unint64_t)status
{
  if (self->_wifiWRMStatus != status)
  {
    [(MiscStateRelay *)self willChangeValueForKey:@"wifiWRMStatus"];
    self->_wifiWRMStatus = status;

    [(MiscStateRelay *)self didChangeValueForKey:@"wifiWRMStatus"];
  }
}

@end