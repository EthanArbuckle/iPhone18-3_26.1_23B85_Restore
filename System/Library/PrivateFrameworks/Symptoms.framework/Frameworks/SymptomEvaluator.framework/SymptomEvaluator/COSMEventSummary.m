@interface COSMEventSummary
- (id)description;
- (void)_bumpInstanceNumber;
- (void)setArpFailureEvent:(BOOL)a3;
- (void)setCaptivityIndeterminateEvent:(BOOL)a3;
- (void)setDampeningTimerExpiryEvent:(BOOL)a3;
- (void)setDataStallThresholdEvent:(BOOL)a3;
- (void)setExcessCertificateErrorsEvent:(BOOL)a3;
- (void)setImminentStallEvent:(BOOL)a3;
- (void)setMediaPlaybackStallEvent:(BOOL)a3;
- (void)setNd6FailureEvent:(BOOL)a3;
- (void)setWifiChangedSSIDEvent:(BOOL)a3;
@end

@implementation COSMEventSummary

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"COSMEventSummary: arp %d cap-indet %d certerrs %d datastall %d imminent stall  %d playback stall %d nd6 %d changed SSID %d instance num %llu", self->_arpFailureEvent, self->_captivityIndeterminateEvent, self->_excessCertificateErrorsEvent, self->_dataStallThresholdEvent, self->_imminentStallEvent, self->_mediaPlaybackStallEvent, self->_nd6FailureEvent, self->_wifiChangedSSIDEvent, self->_eventsInstanceNumber];

  return v2;
}

- (void)_bumpInstanceNumber
{
  [(COSMEventSummary *)self willChangeValueForKey:@"eventsInstanceNumber"];
  ++self->_eventsInstanceNumber;

  [(COSMEventSummary *)self didChangeValueForKey:@"eventsInstanceNumber"];
}

- (void)setArpFailureEvent:(BOOL)a3
{
  if (self->_arpFailureEvent != a3)
  {
    self->_arpFailureEvent = a3;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

- (void)setCaptivityIndeterminateEvent:(BOOL)a3
{
  if (self->_captivityIndeterminateEvent != a3)
  {
    self->_captivityIndeterminateEvent = a3;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

- (void)setDampeningTimerExpiryEvent:(BOOL)a3
{
  if (self->_dampeningTimerExpiryEvent != a3)
  {
    self->_dampeningTimerExpiryEvent = a3;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

- (void)setDataStallThresholdEvent:(BOOL)a3
{
  if (self->_dataStallThresholdEvent != a3)
  {
    self->_dataStallThresholdEvent = a3;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

- (void)setExcessCertificateErrorsEvent:(BOOL)a3
{
  if (self->_excessCertificateErrorsEvent != a3)
  {
    self->_excessCertificateErrorsEvent = a3;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

- (void)setImminentStallEvent:(BOOL)a3
{
  if (self->_imminentStallEvent != a3)
  {
    self->_imminentStallEvent = a3;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

- (void)setMediaPlaybackStallEvent:(BOOL)a3
{
  if (self->_mediaPlaybackStallEvent != a3)
  {
    self->_mediaPlaybackStallEvent = a3;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

- (void)setNd6FailureEvent:(BOOL)a3
{
  if (self->_nd6FailureEvent != a3)
  {
    self->_nd6FailureEvent = a3;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

- (void)setWifiChangedSSIDEvent:(BOOL)a3
{
  if (self->_wifiChangedSSIDEvent != a3)
  {
    self->_wifiChangedSSIDEvent = a3;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

@end