@interface AudioAccessoryDeviceConfig
- (id)xpcObjectRepresentation;
@end

@implementation AudioAccessoryDeviceConfig

- (id)xpcObjectRepresentation
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (self->_allowOffListeningMode)
  {
    xpc_dictionary_set_uint64(v3, "alOf", self->_allowOffListeningMode);
  }

  if (self->_allowTemporaryManagedPairing)
  {
    xpc_dictionary_set_uint64(v4, "tmpM", self->_allowTemporaryManagedPairing);
  }

  autoANCStrength = self->_autoANCStrength;
  if (autoANCStrength)
  {
    xpc_dictionary_set_uint64(v4, "aaSt", autoANCStrength);
  }

  if (self->_enableDynamicEndOfCharge)
  {
    xpc_dictionary_set_uint64(v4, "eDec", self->_enableDynamicEndOfCharge);
  }

  if (self->_enableHearingAidGainSwipe)
  {
    xpc_dictionary_set_uint64(v4, "haGS", self->_enableHearingAidGainSwipe);
  }

  if (self->_enableHearingAssist)
  {
    xpc_dictionary_set_uint64(v4, "hrEn", self->_enableHearingAssist);
  }

  if (self->_enableHearingProtectionPPE)
  {
    xpc_dictionary_set_uint64(v4, "ppeE", self->_enableHearingProtectionPPE);
  }

  if (self->_enableHeartRateMonitor)
  {
    xpc_dictionary_set_uint64(v4, "hrmt", self->_enableHeartRateMonitor);
  }

  if (self->_enableSiriMultitone)
  {
    xpc_dictionary_set_uint64(v4, "esmt", self->_enableSiriMultitone);
  }

  if (self->_enableSleepDetection)
  {
    xpc_dictionary_set_uint64(v4, "esld", self->_enableSleepDetection);
  }

  if (self->_hearingAidToggle)
  {
    xpc_dictionary_set_uint64(v4, "haCg", self->_hearingAidToggle);
  }

  if (self->_hearingAidEnrolled)
  {
    xpc_dictionary_set_uint64(v4, "haEn", self->_hearingAidEnrolled);
  }

  if (self->_hearingAidV2SourceRegionSupport)
  {
    xpc_dictionary_set_uint64(v4, "hV2R", self->_hearingAidV2SourceRegionSupport);
  }

  if (self->_rawGesturesConfigFlags)
  {
    xpc_dictionary_set_uint64(v4, "rgCg", self->_rawGesturesConfigFlags);
  }

  return v4;
}

@end