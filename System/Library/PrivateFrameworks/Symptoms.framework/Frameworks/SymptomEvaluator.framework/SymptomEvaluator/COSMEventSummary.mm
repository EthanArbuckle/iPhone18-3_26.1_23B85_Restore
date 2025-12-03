@interface COSMEventSummary
- (id)description;
- (void)_bumpInstanceNumber;
- (void)setArpFailureEvent:(BOOL)event;
- (void)setCaptivityIndeterminateEvent:(BOOL)event;
- (void)setDampeningTimerExpiryEvent:(BOOL)event;
- (void)setDataStallThresholdEvent:(BOOL)event;
- (void)setExcessCertificateErrorsEvent:(BOOL)event;
- (void)setImminentStallEvent:(BOOL)event;
- (void)setMediaPlaybackStallEvent:(BOOL)event;
- (void)setNd6FailureEvent:(BOOL)event;
- (void)setWifiChangedSSIDEvent:(BOOL)event;
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

- (void)setArpFailureEvent:(BOOL)event
{
  if (self->_arpFailureEvent != event)
  {
    self->_arpFailureEvent = event;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

- (void)setCaptivityIndeterminateEvent:(BOOL)event
{
  if (self->_captivityIndeterminateEvent != event)
  {
    self->_captivityIndeterminateEvent = event;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

- (void)setDampeningTimerExpiryEvent:(BOOL)event
{
  if (self->_dampeningTimerExpiryEvent != event)
  {
    self->_dampeningTimerExpiryEvent = event;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

- (void)setDataStallThresholdEvent:(BOOL)event
{
  if (self->_dataStallThresholdEvent != event)
  {
    self->_dataStallThresholdEvent = event;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

- (void)setExcessCertificateErrorsEvent:(BOOL)event
{
  if (self->_excessCertificateErrorsEvent != event)
  {
    self->_excessCertificateErrorsEvent = event;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

- (void)setImminentStallEvent:(BOOL)event
{
  if (self->_imminentStallEvent != event)
  {
    self->_imminentStallEvent = event;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

- (void)setMediaPlaybackStallEvent:(BOOL)event
{
  if (self->_mediaPlaybackStallEvent != event)
  {
    self->_mediaPlaybackStallEvent = event;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

- (void)setNd6FailureEvent:(BOOL)event
{
  if (self->_nd6FailureEvent != event)
  {
    self->_nd6FailureEvent = event;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

- (void)setWifiChangedSSIDEvent:(BOOL)event
{
  if (self->_wifiChangedSSIDEvent != event)
  {
    self->_wifiChangedSSIDEvent = event;
    [(COSMEventSummary *)self _bumpInstanceNumber];
  }
}

@end