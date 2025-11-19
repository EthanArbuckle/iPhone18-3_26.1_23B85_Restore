uint64_t awd::metrics::protobuf_ShutdownFile_Facetime_2eproto(awd::metrics *this)
{
  if (awd::metrics::FacetimeNetworkStatusReport::default_instance_)
  {
    (*(*awd::metrics::FacetimeNetworkStatusReport::default_instance_ + 8))(awd::metrics::FacetimeNetworkStatusReport::default_instance_);
  }

  if (awd::metrics::FaceTimePeerToPeerStarted::default_instance_)
  {
    (*(*awd::metrics::FaceTimePeerToPeerStarted::default_instance_ + 8))(awd::metrics::FaceTimePeerToPeerStarted::default_instance_);
  }

  if (awd::metrics::FaceTimePeerToPeerEnded::default_instance_)
  {
    (*(*awd::metrics::FaceTimePeerToPeerEnded::default_instance_ + 8))(awd::metrics::FaceTimePeerToPeerEnded::default_instance_);
  }

  if (awd::metrics::FaceTimeConnectivityTiming::default_instance_)
  {
    (*(*awd::metrics::FaceTimeConnectivityTiming::default_instance_ + 8))(awd::metrics::FaceTimeConnectivityTiming::default_instance_);
  }

  if (awd::metrics::RTStats::default_instance_)
  {
    (*(*awd::metrics::RTStats::default_instance_ + 8))(awd::metrics::RTStats::default_instance_);
  }

  if (awd::metrics::PLRHistogram::default_instance_)
  {
    (*(*awd::metrics::PLRHistogram::default_instance_ + 8))(awd::metrics::PLRHistogram::default_instance_);
  }

  if (awd::metrics::RTTHistogram::default_instance_)
  {
    (*(*awd::metrics::RTTHistogram::default_instance_ + 8))(awd::metrics::RTTHistogram::default_instance_);
  }

  if (awd::metrics::TargetTxRateHistogram::default_instance_)
  {
    (*(*awd::metrics::TargetTxRateHistogram::default_instance_ + 8))(awd::metrics::TargetTxRateHistogram::default_instance_);
  }

  if (awd::metrics::AudioWindowLossHistogram::default_instance_)
  {
    (*(*awd::metrics::AudioWindowLossHistogram::default_instance_ + 8))(awd::metrics::AudioWindowLossHistogram::default_instance_);
  }

  if (awd::metrics::MaxJitterHistogram::default_instance_)
  {
    (*(*awd::metrics::MaxJitterHistogram::default_instance_ + 8))(awd::metrics::MaxJitterHistogram::default_instance_);
  }

  if (awd::metrics::VideoQualityStats::default_instance_)
  {
    (*(*awd::metrics::VideoQualityStats::default_instance_ + 8))(awd::metrics::VideoQualityStats::default_instance_);
  }

  if (awd::metrics::FaceTimeBasebandStats::default_instance_)
  {
    (*(*awd::metrics::FaceTimeBasebandStats::default_instance_ + 8))(awd::metrics::FaceTimeBasebandStats::default_instance_);
  }

  if (awd::metrics::FaceTimeVideoStatus::default_instance_)
  {
    (*(*awd::metrics::FaceTimeVideoStatus::default_instance_ + 8))(awd::metrics::FaceTimeVideoStatus::default_instance_);
  }

  if (awd::metrics::FaceTimeInterfaceStatus::default_instance_)
  {
    (*(*awd::metrics::FaceTimeInterfaceStatus::default_instance_ + 8))(awd::metrics::FaceTimeInterfaceStatus::default_instance_);
  }

  if (awd::metrics::FaceTimeAudioTierReport::default_instance_)
  {
    (*(*awd::metrics::FaceTimeAudioTierReport::default_instance_ + 8))(awd::metrics::FaceTimeAudioTierReport::default_instance_);
  }

  if (awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::default_instance_)
  {
    (*(*awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::default_instance_ + 8))(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::default_instance_);
  }

  if (awd::metrics::FaceTimeCallUpgradedEvent::default_instance_)
  {
    (*(*awd::metrics::FaceTimeCallUpgradedEvent::default_instance_ + 8))(awd::metrics::FaceTimeCallUpgradedEvent::default_instance_);
  }

  if (awd::metrics::RTCSessionEndMetric::default_instance_)
  {
    (*(*awd::metrics::RTCSessionEndMetric::default_instance_ + 8))(awd::metrics::RTCSessionEndMetric::default_instance_);
  }

  if (awd::metrics::RTCSessionEndMetric_InterfaceStats::default_instance_)
  {
    (*(*awd::metrics::RTCSessionEndMetric_InterfaceStats::default_instance_ + 8))(awd::metrics::RTCSessionEndMetric_InterfaceStats::default_instance_);
  }

  if (awd::metrics::FaceTimeDTXStatus::default_instance_)
  {
    (*(*awd::metrics::FaceTimeDTXStatus::default_instance_ + 8))(awd::metrics::FaceTimeDTXStatus::default_instance_);
  }

  if (awd::metrics::FaceTimeModeRoleTransport::default_instance_)
  {
    (*(*awd::metrics::FaceTimeModeRoleTransport::default_instance_ + 8))(awd::metrics::FaceTimeModeRoleTransport::default_instance_);
  }

  if (awd::metrics::FaceTimeCallAggregatedReport::default_instance_)
  {
    (*(*awd::metrics::FaceTimeCallAggregatedReport::default_instance_ + 8))(awd::metrics::FaceTimeCallAggregatedReport::default_instance_);
  }

  if (awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::default_instance_)
  {
    (*(*awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::default_instance_ + 8))(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::default_instance_);
  }

  result = awd::metrics::AvcSidecarVideoStream::default_instance_;
  if (awd::metrics::AvcSidecarVideoStream::default_instance_)
  {
    v2 = *(*awd::metrics::AvcSidecarVideoStream::default_instance_ + 8);

    return v2();
  }

  return result;
}

void awd::metrics::protobuf_AddDesc_Facetime_2eproto(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((awd::metrics::protobuf_AddDesc_Facetime_2eproto(void)::already_here & 1) == 0)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(void)::already_here = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "codegen/cpp/Facetime.pb.cc", a4);
    operator new();
  }
}

double awd::metrics::FacetimeNetworkStatusReport::FacetimeNetworkStatusReport(awd::metrics::FacetimeNetworkStatusReport *this)
{
  *this = &unk_2A1D4D7C8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_2A1D4D7C8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

uint64_t awd::metrics::FaceTimePeerToPeerStarted::FaceTimePeerToPeerStarted(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1D4D840;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1D4D840;
  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimePeerToPeerEnded::FaceTimePeerToPeerEnded(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1D4D8B8;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1D4D8B8;
  *(this + 24) = 0;
  return this;
}

double awd::metrics::FaceTimeConnectivityTiming::FaceTimeConnectivityTiming(awd::metrics::FaceTimeConnectivityTiming *this)
{
  *this = &unk_2A1D4D930;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_2A1D4D930;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

double awd::metrics::RTStats::RTStats(awd::metrics::RTStats *this)
{
  *(this + 7) = 0;
  *this = &unk_2A1D4D9A8;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  v1 = MEMORY[0x29EDC9758];
  *(this + 4) = MEMORY[0x29EDC9758];
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 14) = v1;
  *(this + 15) = 0;
  return result;
}

{
  *(this + 7) = 0;
  *this = &unk_2A1D4D9A8;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  v1 = MEMORY[0x29EDC9758];
  *(this + 4) = MEMORY[0x29EDC9758];
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 14) = v1;
  *(this + 15) = 0;
  return result;
}

uint64_t awd::metrics::PLRHistogram::PLRHistogram(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 36) = 0;
  *this = &unk_2A1D4DA20;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *(this + 36) = 0;
  *this = &unk_2A1D4DA20;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

void *awd::metrics::RTTHistogram::RTTHistogram(void *this)
{
  *(this + 44) = 0;
  *(this + 36) = 0;
  *this = &unk_2A1D4DA98;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *(this + 44) = 0;
  *(this + 36) = 0;
  *this = &unk_2A1D4DA98;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t awd::metrics::TargetTxRateHistogram::TargetTxRateHistogram(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 36) = 0;
  *this = &unk_2A1D4DB10;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *(this + 36) = 0;
  *this = &unk_2A1D4DB10;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::AudioWindowLossHistogram::AudioWindowLossHistogram(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 36) = 0;
  *this = &unk_2A1D4DB88;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *(this + 36) = 0;
  *this = &unk_2A1D4DB88;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::MaxJitterHistogram::MaxJitterHistogram(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 36) = 0;
  *this = &unk_2A1D4DC00;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *(this + 36) = 0;
  *this = &unk_2A1D4DC00;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::VideoQualityStats::VideoQualityStats(uint64_t this)
{
  *this = &unk_2A1D4DC78;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_2A1D4DC78;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimeBasebandStats::FaceTimeBasebandStats(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 108) = 0;
  *(this + 124) = 0;
  *(this + 116) = 0;
  *(this + 132) = 0;
  *this = &unk_2A1D4DCF0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 108) = 0;
  *(this + 124) = 0;
  *(this + 116) = 0;
  *(this + 132) = 0;
  *this = &unk_2A1D4DCF0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

void *awd::metrics::FaceTimeVideoStatus::FaceTimeVideoStatus(void *this)
{
  this[5] = 0;
  this[6] = 0;
  this[8] = 0;
  this[9] = 0;
  this[11] = 0;
  this[12] = 0;
  *(this + 116) = 0;
  *(this + 108) = 0;
  *this = &unk_2A1D4DD68;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  this[5] = 0;
  this[6] = 0;
  this[8] = 0;
  this[9] = 0;
  this[11] = 0;
  this[12] = 0;
  *(this + 116) = 0;
  *(this + 108) = 0;
  *this = &unk_2A1D4DD68;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double awd::metrics::FaceTimeInterfaceStatus::FaceTimeInterfaceStatus(awd::metrics::FaceTimeInterfaceStatus *this)
{
  *this = &unk_2A1D4DDE0;
  *(this + 1) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 2) = v1;
  *(this + 3) = v1;
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0;
  *(this + 13) = v1;
  *(this + 14) = 0;
  return result;
}

{
  *this = &unk_2A1D4DDE0;
  *(this + 1) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 2) = v1;
  *(this + 3) = v1;
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0;
  *(this + 13) = v1;
  *(this + 14) = 0;
  return result;
}

double awd::metrics::FaceTimeAudioTierReport::FaceTimeAudioTierReport(awd::metrics::FaceTimeAudioTierReport *this)
{
  *this = &unk_2A1D4DED0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_2A1D4DED0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

double awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::FaceTimeAudioTierReport_AudioTierCounter(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this)
{
  *this = &unk_2A1D4DE58;
  result = 0.0;
  *(this + 1) = 0;
  v2 = MEMORY[0x29EDC9758];
  *(this + 6) = 0;
  *(this + 2) = v2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_2A1D4DE58;
  result = 0.0;
  *(this + 1) = 0;
  v2 = MEMORY[0x29EDC9758];
  *(this + 6) = 0;
  *(this + 2) = v2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return result;
}

void *awd::metrics::FaceTimeCallUpgradedEvent::FaceTimeCallUpgradedEvent(void *this)
{
  *this = &unk_2A1D4DF48;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_2A1D4DF48;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double awd::metrics::RTCSessionEndMetric::RTCSessionEndMetric(awd::metrics::RTCSessionEndMetric *this)
{
  *this = &unk_2A1D4E038;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_2A1D4E038;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

double awd::metrics::FaceTimeDTXStatus::FaceTimeDTXStatus(awd::metrics::FaceTimeDTXStatus *this)
{
  *this = &unk_2A1D4E0B0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_2A1D4E0B0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double awd::metrics::FaceTimeModeRoleTransport::FaceTimeModeRoleTransport(awd::metrics::FaceTimeModeRoleTransport *this)
{
  *this = &unk_2A1D4E128;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_2A1D4E128;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double awd::metrics::FaceTimeCallAggregatedReport::FaceTimeCallAggregatedReport(awd::metrics::FaceTimeCallAggregatedReport *this)
{
  *this = &unk_2A1D4E218;
  *(this + 17) = 0;
  *(this + 36) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 116) = 0u;
  return result;
}

{
  *this = &unk_2A1D4E218;
  *(this + 17) = 0;
  *(this + 36) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 116) = 0u;
  return result;
}

double awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::FaceTimeCallAggregatedReport_SegmentStats(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this)
{
  *this = &unk_2A1D4E1A0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 43) = 0;
  *(this + 44) = v2;
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  return result;
}

{
  *this = &unk_2A1D4E1A0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 43) = 0;
  *(this + 44) = v2;
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  return result;
}

double awd::metrics::AvcSidecarVideoStream::AvcSidecarVideoStream(awd::metrics::AvcSidecarVideoStream *this)
{
  *this = &unk_2A1D4E290;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = 0;
  v2 = MEMORY[0x29EDC9758];
  *(this + 5) = 0;
  *(this + 6) = v2;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 21) = 0;
  *(this + 22) = 0;
  return result;
}

{
  *this = &unk_2A1D4E290;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = 0;
  v2 = MEMORY[0x29EDC9758];
  *(this + 5) = 0;
  *(this + 6) = v2;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 21) = 0;
  *(this + 22) = 0;
  return result;
}

double awd::metrics::FacetimeNetworkStatusReport::SharedCtor(awd::metrics::FacetimeNetworkStatusReport *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::FacetimeNetworkStatusReport *awd::metrics::FacetimeNetworkStatusReport::FacetimeNetworkStatusReport(awd::metrics::FacetimeNetworkStatusReport *this, const awd::metrics::FacetimeNetworkStatusReport *a2)
{
  *this = &unk_2A1D4D7C8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  awd::metrics::FacetimeNetworkStatusReport::MergeFrom(this, a2);
  return this;
}

void awd::metrics::FacetimeNetworkStatusReport::MergeFrom(awd::metrics::FacetimeNetworkStatusReport *this, const awd::metrics::FacetimeNetworkStatusReport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      v6 = *(a2 + 1);
      *(this + 12) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 12);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 12) |= 2u;
    *(this + 2) = v7;
    v4 = *(a2 + 12);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    v8 = *(a2 + 6);
    *(this + 12) |= 4u;
    *(this + 6) = v8;
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    v9 = *(a2 + 7);
    *(this + 12) |= 8u;
    *(this + 7) = v9;
    v4 = *(a2 + 12);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    v10 = *(a2 + 8);
    *(this + 12) |= 0x10u;
    *(this + 8) = v10;
    v4 = *(a2 + 12);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_18:
    v11 = *(a2 + 9);
    *(this + 12) |= 0x20u;
    *(this + 9) = v11;
    if ((*(a2 + 12) & 0x40) == 0)
    {
      return;
    }

LABEL_11:
    v5 = *(a2 + 10);
    *(this + 12) |= 0x40u;
    *(this + 10) = v5;
  }
}

void sub_2963D7CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FacetimeNetworkStatusReport::~FacetimeNetworkStatusReport(awd::metrics::FacetimeNetworkStatusReport *this)
{
  *this = &unk_2A1D4D7C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4D7C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4D7C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FacetimeNetworkStatusReport::default_instance(awd::metrics::FacetimeNetworkStatusReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FacetimeNetworkStatusReport::default_instance_;
  if (!awd::metrics::FacetimeNetworkStatusReport::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FacetimeNetworkStatusReport::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FacetimeNetworkStatusReport::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::FacetimeNetworkStatusReport::MergePartialFromCodedStream(awd::metrics::FacetimeNetworkStatusReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v6 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v11 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v11 >= v7 || (v12 = *v11, v12 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v13 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v12;
            v13 = v11 + 1;
            *(a2 + 1) = v13;
          }

          *(this + 12) |= 1u;
          if (v13 < v7 && *v13 == 16)
          {
            v16 = v13 + 1;
            *(a2 + 1) = v16;
            goto LABEL_39;
          }
        }

        else
        {
          if (v6 != 2)
          {
            if (v6 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_47;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v16 = *(a2 + 1);
          v7 = *(a2 + 2);
LABEL_39:
          if (v16 >= v7 || (v17 = *v16, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v17;
            v18 = v16 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 12) |= 2u;
          if (v18 < v7 && *v18 == 24)
          {
            v9 = v18 + 1;
            *(a2 + 1) = v9;
LABEL_47:
            if (v9 >= v7 || (v19 = *v9, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 6) = v19;
              v20 = v9 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 12) |= 4u;
            if (v20 < v7 && *v20 == 32)
            {
              v14 = v20 + 1;
              *(a2 + 1) = v14;
              goto LABEL_55;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v6 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_71;
          }
        }

        else if (v6 == 7 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_79;
        }

        goto LABEL_30;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v14 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_55:
      if (v14 >= v7 || (v21 = *v14, v21 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
        if (!result)
        {
          return result;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 7) = v21;
        v22 = v14 + 1;
        *(a2 + 1) = v22;
      }

      *(this + 12) |= 8u;
      if (v22 < v7 && *v22 == 40)
      {
        v8 = v22 + 1;
        *(a2 + 1) = v8;
LABEL_63:
        if (v8 >= v7 || (v23 = *v8, v23 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v24 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v23;
          v24 = v8 + 1;
          *(a2 + 1) = v24;
        }

        *(this + 12) |= 0x10u;
        if (v24 < v7 && *v24 == 48)
        {
          v15 = v24 + 1;
          *(a2 + 1) = v15;
LABEL_71:
          if (v15 >= v7 || (v25 = *v15, v25 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
            if (!result)
            {
              return result;
            }

            v26 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 9) = v25;
            v26 = v15 + 1;
            *(a2 + 1) = v26;
          }

          *(this + 12) |= 0x20u;
          if (v26 < v7 && *v26 == 56)
          {
            v10 = v26 + 1;
            *(a2 + 1) = v10;
LABEL_79:
            if (v10 >= v7 || (v27 = *v10, v27 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v28 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v27;
              v28 = v10 + 1;
              *(a2 + 1) = v28;
            }

            *(this + 12) |= 0x40u;
            if (v28 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_63;
    }

LABEL_30:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::FacetimeNetworkStatusReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
    if ((*(v5 + 48) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_15:
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v7, a2, a4);
}

uint64_t awd::metrics::FacetimeNetworkStatusReport::ByteSize(awd::metrics::FacetimeNetworkStatusReport *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_34;
  }

  if (*(this + 48))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 12);
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((*(this + 48) & 2) != 0)
  {
LABEL_7:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 12);
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v4 = *(this + 6);
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 12);
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v6 = *(this + 7);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = *(this + 12);
  }

  else
  {
    v7 = 2;
  }

  v3 = (v7 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_22:
  v8 = *(this + 8);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 12);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

LABEL_26:
  v10 = *(this + 9);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 12);
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
  if ((v2 & 0x40) != 0)
  {
LABEL_30:
    v12 = *(this + 10);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    }

    else
    {
      v13 = 2;
    }

    v3 = (v13 + v3);
  }

LABEL_34:
  *(this + 11) = v3;
  return v3;
}

void awd::metrics::FacetimeNetworkStatusReport::CheckTypeAndMergeFrom(awd::metrics::FacetimeNetworkStatusReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::FacetimeNetworkStatusReport::CheckTypeAndMergeFrom();
  }

  awd::metrics::FacetimeNetworkStatusReport::MergeFrom(this, lpsrc);
}

void awd::metrics::FacetimeNetworkStatusReport::CopyFrom(awd::metrics::FacetimeNetworkStatusReport *this, const awd::metrics::FacetimeNetworkStatusReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FacetimeNetworkStatusReport::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::FacetimeNetworkStatusReport::Swap(uint64_t this, awd::metrics::FacetimeNetworkStatusReport *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v3;
    LODWORD(v3) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v3;
    LODWORD(v3) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v3;
  }

  return this;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t awd::metrics::FaceTimePeerToPeerStarted::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::FaceTimePeerToPeerStarted *awd::metrics::FaceTimePeerToPeerStarted::FaceTimePeerToPeerStarted(awd::metrics::FaceTimePeerToPeerStarted *this, const awd::metrics::FaceTimePeerToPeerStarted *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4D840;
  *(this + 6) = 0;
  awd::metrics::FaceTimePeerToPeerStarted::MergeFrom(this, a2);
  return this;
}

void awd::metrics::FaceTimePeerToPeerStarted::MergeFrom(awd::metrics::FaceTimePeerToPeerStarted *this, const awd::metrics::FaceTimePeerToPeerStarted *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_2963D8814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimePeerToPeerStarted::~FaceTimePeerToPeerStarted(awd::metrics::FaceTimePeerToPeerStarted *this)
{
  *this = &unk_2A1D4D840;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4D840;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4D840;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimePeerToPeerStarted::default_instance(awd::metrics::FaceTimePeerToPeerStarted *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimePeerToPeerStarted::default_instance_;
  if (!awd::metrics::FaceTimePeerToPeerStarted::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimePeerToPeerStarted::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimePeerToPeerStarted::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimePeerToPeerStarted::MergePartialFromCodedStream(awd::metrics::FaceTimePeerToPeerStarted *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, v8 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v8;
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 6) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
        if (v12 == v6 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v6 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::FaceTimePeerToPeerStarted::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::FaceTimePeerToPeerStarted::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v2 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v3 = *(this + 4);
    if (v3 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
    }

    else
    {
      v4 = 2;
    }

    v2 = (v4 + v2);
  }

  else
  {
    v2 = 0;
  }

LABEL_11:
  *(this + 5) = v2;
  return v2;
}

void awd::metrics::FaceTimePeerToPeerStarted::CheckTypeAndMergeFrom(awd::metrics::FaceTimePeerToPeerStarted *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::FaceTimePeerToPeerStarted::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimePeerToPeerStarted::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimePeerToPeerStarted::CopyFrom(awd::metrics::FaceTimePeerToPeerStarted *this, const awd::metrics::FaceTimePeerToPeerStarted *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimePeerToPeerStarted::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::FaceTimePeerToPeerStarted::Swap(uint64_t this, awd::metrics::FaceTimePeerToPeerStarted *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
  }

  return this;
}

uint64_t awd::metrics::FaceTimePeerToPeerEnded::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::FaceTimePeerToPeerEnded *awd::metrics::FaceTimePeerToPeerEnded::FaceTimePeerToPeerEnded(awd::metrics::FaceTimePeerToPeerEnded *this, const awd::metrics::FaceTimePeerToPeerEnded *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4D8B8;
  *(this + 6) = 0;
  awd::metrics::FaceTimePeerToPeerEnded::MergeFrom(this, a2);
  return this;
}

void awd::metrics::FaceTimePeerToPeerEnded::MergeFrom(awd::metrics::FaceTimePeerToPeerEnded *this, const awd::metrics::FaceTimePeerToPeerEnded *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_2963D8E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimePeerToPeerEnded::~FaceTimePeerToPeerEnded(awd::metrics::FaceTimePeerToPeerEnded *this)
{
  *this = &unk_2A1D4D8B8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4D8B8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4D8B8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimePeerToPeerEnded::default_instance(awd::metrics::FaceTimePeerToPeerEnded *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimePeerToPeerEnded::default_instance_;
  if (!awd::metrics::FaceTimePeerToPeerEnded::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimePeerToPeerEnded::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimePeerToPeerEnded::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimePeerToPeerEnded::MergePartialFromCodedStream(awd::metrics::FaceTimePeerToPeerEnded *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, v8 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v8;
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 6) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
        if (v12 == v6 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v6 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::FaceTimePeerToPeerEnded::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::FaceTimePeerToPeerEnded::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v2 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v3 = *(this + 4);
    if (v3 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
    }

    else
    {
      v4 = 2;
    }

    v2 = (v4 + v2);
  }

  else
  {
    v2 = 0;
  }

LABEL_11:
  *(this + 5) = v2;
  return v2;
}

void awd::metrics::FaceTimePeerToPeerEnded::CheckTypeAndMergeFrom(awd::metrics::FaceTimePeerToPeerEnded *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::FaceTimePeerToPeerEnded::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimePeerToPeerEnded::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimePeerToPeerEnded::CopyFrom(awd::metrics::FaceTimePeerToPeerEnded *this, const awd::metrics::FaceTimePeerToPeerEnded *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimePeerToPeerEnded::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::FaceTimePeerToPeerEnded::Swap(uint64_t this, awd::metrics::FaceTimePeerToPeerEnded *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
  }

  return this;
}

double awd::metrics::FaceTimeConnectivityTiming::SharedCtor(awd::metrics::FaceTimeConnectivityTiming *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::FaceTimeConnectivityTiming *awd::metrics::FaceTimeConnectivityTiming::FaceTimeConnectivityTiming(awd::metrics::FaceTimeConnectivityTiming *this, const awd::metrics::FaceTimeConnectivityTiming *a2)
{
  *this = &unk_2A1D4D930;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  awd::metrics::FaceTimeConnectivityTiming::MergeFrom(this, a2);
  return this;
}

void awd::metrics::FaceTimeConnectivityTiming::MergeFrom(awd::metrics::FaceTimeConnectivityTiming *this, const awd::metrics::FaceTimeConnectivityTiming *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 15);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 15) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 15);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 4);
  *(this + 15) |= 2u;
  *(this + 4) = v8;
  v4 = *(a2 + 15);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a2 + 5);
  *(this + 15) |= 4u;
  *(this + 5) = v9;
  v4 = *(a2 + 15);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 6);
  *(this + 15) |= 8u;
  *(this + 6) = v10;
  v4 = *(a2 + 15);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v12 = *(a2 + 8);
    *(this + 15) |= 0x20u;
    *(this + 8) = v12;
    v4 = *(a2 + 15);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_23:
  v11 = *(a2 + 7);
  *(this + 15) |= 0x10u;
  *(this + 7) = v11;
  v4 = *(a2 + 15);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v13 = *(a2 + 9);
  *(this + 15) |= 0x40u;
  *(this + 9) = v13;
  v4 = *(a2 + 15);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 15) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 15);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 11);
    *(this + 15) |= 0x100u;
    *(this + 11) = v14;
    v4 = *(a2 + 15);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        return;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 12);
  *(this + 15) |= 0x200u;
  *(this + 12) = v15;
  if ((*(a2 + 15) & 0x400) == 0)
  {
    return;
  }

LABEL_17:
  v6 = *(a2 + 13);
  *(this + 15) |= 0x400u;
  *(this + 13) = v6;
}

void sub_2963D960C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeConnectivityTiming::~FaceTimeConnectivityTiming(awd::metrics::FaceTimeConnectivityTiming *this)
{
  *this = &unk_2A1D4D930;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4D930;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4D930;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeConnectivityTiming::default_instance(awd::metrics::FaceTimeConnectivityTiming *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeConnectivityTiming::default_instance_;
  if (!awd::metrics::FaceTimeConnectivityTiming::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeConnectivityTiming::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeConnectivityTiming::Clear(uint64_t this)
{
  v1 = *(this + 60);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    *(this + 44) = 0;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimeConnectivityTiming::MergePartialFromCodedStream(awd::metrics::FaceTimeConnectivityTiming *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (TagFallback >> 3 <= 2)
        {
          if (v6 != 1)
          {
            if (v6 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v11 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_52;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v12 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v12 >= v7 || (v13 = *v12, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v13;
            v14 = v12 + 1;
            *(a2 + 1) = v14;
          }

          *(this + 15) |= 1u;
          if (v14 < v7 && *v14 == 16)
          {
            v11 = v14 + 1;
            *(a2 + 1) = v11;
LABEL_52:
            v42 = 0;
            if (v11 >= v7 || (v21 = *v11, (v21 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42);
              if (!result)
              {
                return result;
              }

              v21 = v42;
              v22 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v22 = v11 + 1;
              *(a2 + 1) = v22;
            }

            *(this + 4) = v21;
            *(this + 15) |= 2u;
            if (v22 < v7 && *v22 == 24)
            {
              v18 = v22 + 1;
              *(a2 + 1) = v18;
LABEL_60:
              v42 = 0;
              if (v18 >= v7 || (v23 = *v18, (v23 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42);
                if (!result)
                {
                  return result;
                }

                v23 = v42;
                v24 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                v24 = v18 + 1;
                *(a2 + 1) = v24;
              }

              *(this + 5) = v23;
              *(this + 15) |= 4u;
              if (v24 < v7 && *v24 == 32)
              {
                v15 = v24 + 1;
                *(a2 + 1) = v15;
                goto LABEL_68;
              }
            }
          }
        }

        else
        {
          if (v6 == 3)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_60;
          }

          if (v6 != 4)
          {
            if (v6 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_76;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v15 = *(a2 + 1);
          v7 = *(a2 + 2);
LABEL_68:
          v42 = 0;
          if (v15 >= v7 || (v25 = *v15, (v25 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42);
            if (!result)
            {
              return result;
            }

            v25 = v42;
            v26 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v26 = v15 + 1;
            *(a2 + 1) = v26;
          }

          *(this + 6) = v25;
          *(this + 15) |= 8u;
          if (v26 < v7 && *v26 == 40)
          {
            v9 = v26 + 1;
            *(a2 + 1) = v9;
LABEL_76:
            v42 = 0;
            if (v9 >= v7 || (v27 = *v9, (v27 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42);
              if (!result)
              {
                return result;
              }

              v27 = v42;
              v28 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v28 = v9 + 1;
              *(a2 + 1) = v28;
            }

            *(this + 7) = v27;
            *(this + 15) |= 0x10u;
            if (v28 < v7 && *v28 == 48)
            {
              v19 = v28 + 1;
              *(a2 + 1) = v19;
LABEL_84:
              v42 = 0;
              if (v19 >= v7 || (v29 = *v19, (v29 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42);
                if (!result)
                {
                  return result;
                }

                v29 = v42;
                v30 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                v30 = v19 + 1;
                *(a2 + 1) = v30;
              }

              *(this + 8) = v29;
              *(this + 15) |= 0x20u;
              if (v30 < v7 && *v30 == 56)
              {
                v16 = v30 + 1;
                *(a2 + 1) = v16;
                goto LABEL_92;
              }
            }
          }
        }
      }

      if (TagFallback >> 3 > 8)
      {
        if (v6 == 9)
        {
          if ((TagFallback & 7) == 0)
          {
            v20 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_108;
          }
        }

        else if (v6 == 10)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_116;
          }
        }

        else if (v6 == 11 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_124;
        }

        goto LABEL_43;
      }

      if (v6 == 6)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_43;
        }

        v19 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_84;
      }

      if (v6 != 7)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v16 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_92:
      v42 = 0;
      if (v16 >= v7 || (v31 = *v16, (v31 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42);
        if (!result)
        {
          return result;
        }

        v31 = v42;
        v32 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v32 = v16 + 1;
        *(a2 + 1) = v32;
      }

      *(this + 9) = v31;
      *(this + 15) |= 0x40u;
      if (v32 < v7 && *v32 == 64)
      {
        v8 = v32 + 1;
        *(a2 + 1) = v8;
LABEL_100:
        v42 = 0;
        if (v8 >= v7 || (v33 = *v8, (v33 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42);
          if (!result)
          {
            return result;
          }

          v33 = v42;
          v34 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v34 = v8 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 10) = v33;
        *(this + 15) |= 0x80u;
        if (v34 < v7 && *v34 == 72)
        {
          v20 = v34 + 1;
          *(a2 + 1) = v20;
LABEL_108:
          v42 = 0;
          if (v20 >= v7 || (v35 = *v20, (v35 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42);
            if (!result)
            {
              return result;
            }

            v35 = v42;
            v36 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v36 = v20 + 1;
            *(a2 + 1) = v36;
          }

          *(this + 11) = v35;
          *(this + 15) |= 0x100u;
          if (v36 < v7 && *v36 == 80)
          {
            v17 = v36 + 1;
            *(a2 + 1) = v17;
LABEL_116:
            v42 = 0;
            if (v17 >= v7 || (v37 = *v17, (v37 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42);
              if (!result)
              {
                return result;
              }

              v37 = v42;
              v38 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v38 = v17 + 1;
              *(a2 + 1) = v38;
            }

            *(this + 12) = v37;
            *(this + 15) |= 0x200u;
            if (v38 < v7 && *v38 == 88)
            {
              v10 = v38 + 1;
              *(a2 + 1) = v10;
LABEL_124:
              if (v10 >= v7 || (v39 = *v10, v39 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                if (!result)
                {
                  return result;
                }

                v40 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 13) = v39;
                v40 = v10 + 1;
                *(a2 + 1) = v40;
              }

              *(this + 15) |= 0x400u;
              if (v40 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }
            }
          }
        }
      }
    }

    if (v6 == 8 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_100;
    }

LABEL_43:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::FaceTimeConnectivityTiming::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[15];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[4], a2, a4);
  v6 = v5[15];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, v5[5], a2, a4);
  v6 = v5[15];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, v5[6], a2, a4);
  v6 = v5[15];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v5[7], a2, a4);
  v6 = v5[15];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, v5[8], a2, a4);
  v6 = v5[15];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, v5[9], a2, a4);
  v6 = v5[15];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, v5[10], a2, a4);
  v6 = v5[15];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xA, v5[12], a2, a4);
    if ((v5[15] & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, v5[11], a2, a4);
  v6 = v5[15];
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return this;
  }

LABEL_23:
  v7 = v5[13];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v7, a2, a4);
}

uint64_t awd::metrics::FaceTimeConnectivityTiming::ByteSize(awd::metrics::FaceTimeConnectivityTiming *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_56;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 15);
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v4 = *(this + 4);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 11;
  }

  else if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_13:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 15);
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_15:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_15;
  }

  v8 = *(this + 6);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_16:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_32:
  v10 = *(this + 7);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_17:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_38:
  v12 = *(this + 8);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

LABEL_44:
  v14 = *(this + 9);
  if ((v14 & 0x80000000) != 0)
  {
    v15 = 11;
  }

  else if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_50:
    v16 = *(this + 10);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 15);
    }

    else
    {
      v17 = 2;
    }

    v3 = (v17 + v3);
  }

LABEL_56:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_77;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = *(this + 11);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v2 = *(this + 15);
    }

    else
    {
      v19 = 2;
    }

    v3 = (v19 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_59:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_73;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_59;
  }

  v20 = *(this + 12);
  if ((v20 & 0x80000000) != 0)
  {
    v21 = 11;
  }

  else if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v21 = 2;
  }

  v3 = (v21 + v3);
  if ((v2 & 0x400) != 0)
  {
LABEL_73:
    v22 = *(this + 13);
    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    }

    else
    {
      v23 = 2;
    }

    v3 = (v23 + v3);
  }

LABEL_77:
  *(this + 14) = v3;
  return v3;
}

void awd::metrics::FaceTimeConnectivityTiming::CheckTypeAndMergeFrom(awd::metrics::FaceTimeConnectivityTiming *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::FaceTimeConnectivityTiming::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeConnectivityTiming::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeConnectivityTiming::CopyFrom(awd::metrics::FaceTimeConnectivityTiming *this, const awd::metrics::FaceTimeConnectivityTiming *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeConnectivityTiming::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::FaceTimeConnectivityTiming::Swap(uint64_t this, awd::metrics::FaceTimeConnectivityTiming *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v2;
  }

  return this;
}

double awd::metrics::RTStats::SharedCtor(awd::metrics::RTStats *this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = v1;
  result = 0.0;
  *(this + 5) = 0;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = v1;
  return result;
}

awd::metrics::RTStats *awd::metrics::RTStats::RTStats(awd::metrics::RTStats *this, const awd::metrics::RTStats *a2)
{
  *(this + 7) = 0;
  *this = &unk_2A1D4D9A8;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  v3 = MEMORY[0x29EDC9758];
  *(this + 4) = MEMORY[0x29EDC9758];
  *(this + 40) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 14) = v3;
  *(this + 15) = 0;
  awd::metrics::RTStats::MergeFrom(this, a2);
  return this;
}

void sub_2963DA448(_Unwind_Exception *a1)
{
  v3 = *(v1 + 6);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::RTStats::MergeFrom(awd::metrics::RTStats *this, const awd::metrics::RTStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v30);
  }

  v4 = *(a2 + 14);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, *(this + 14) + v4);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v5 = *(a2 + 35);
  if (!v5)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    v9 = *(a2 + 1);
    *(this + 35) |= 1u;
    *(this + 1) = v9;
    v5 = *(a2 + 35);
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_36;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 4);
  *(this + 35) |= 2u;
  *(this + 4) = v10;
  v5 = *(a2 + 35);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  v11 = *(a2 + 5);
  *(this + 35) |= 4u;
  *(this + 5) = v11;
  v5 = *(a2 + 35);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  v12 = *(a2 + 6);
  *(this + 35) |= 8u;
  *(this + 6) = v12;
  v5 = *(a2 + 35);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_39:
    v14 = *(a2 + 4);
    *(this + 35) |= 0x20u;
    v15 = *(this + 4);
    if (v15 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v15, v14);
    v5 = *(a2 + 35);
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_38:
  v13 = *(a2 + 7);
  *(this + 35) |= 0x10u;
  *(this + 7) = v13;
  v5 = *(a2 + 35);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_42:
  v16 = *(a2 + 10);
  *(this + 35) |= 0x40u;
  *(this + 10) = v16;
  v5 = *(a2 + 35);
  if ((v5 & 0x80) != 0)
  {
LABEL_14:
    v6 = *(a2 + 11);
    *(this + 35) |= 0x80u;
    *(this + 11) = v6;
    v5 = *(a2 + 35);
  }

LABEL_15:
  if ((v5 & 0x1FE00) == 0)
  {
    goto LABEL_24;
  }

  if ((v5 & 0x200) != 0)
  {
    v17 = *(a2 + 17);
    *(this + 35) |= 0x200u;
    *(this + 17) = v17;
    v5 = *(a2 + 35);
    if ((v5 & 0x400) == 0)
    {
LABEL_18:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_46;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_18;
  }

  v18 = *(a2 + 18);
  *(this + 35) |= 0x400u;
  *(this + 18) = v18;
  v5 = *(a2 + 35);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  v19 = *(a2 + 19);
  *(this + 35) |= 0x800u;
  *(this + 19) = v19;
  v5 = *(a2 + 35);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  v20 = *(a2 + 20);
  *(this + 35) |= 0x1000u;
  *(this + 20) = v20;
  v5 = *(a2 + 35);
  if ((v5 & 0x2000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  v21 = *(a2 + 21);
  *(this + 35) |= 0x2000u;
  *(this + 21) = v21;
  v5 = *(a2 + 35);
  if ((v5 & 0x4000) == 0)
  {
LABEL_22:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_49:
  v22 = *(a2 + 22);
  *(this + 35) |= 0x4000u;
  *(this + 22) = v22;
  v5 = *(a2 + 35);
  if ((v5 & 0x8000) != 0)
  {
LABEL_23:
    v7 = *(a2 + 23);
    *(this + 35) |= 0x8000u;
    *(this + 23) = v7;
    v5 = *(a2 + 35);
  }

LABEL_24:
  if ((v5 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v5 & 0x10000) != 0)
  {
    v23 = *(a2 + 24);
    *(this + 35) |= 0x10000u;
    *(this + 24) = v23;
    v5 = *(a2 + 35);
    if ((v5 & 0x20000) == 0)
    {
LABEL_27:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_53;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_27;
  }

  v24 = *(a2 + 25);
  *(this + 35) |= 0x20000u;
  *(this + 25) = v24;
  v5 = *(a2 + 35);
  if ((v5 & 0x40000) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  v25 = *(a2 + 26);
  *(this + 35) |= 0x40000u;
  *(this + 26) = v25;
  v5 = *(a2 + 35);
  if ((v5 & 0x80000) == 0)
  {
LABEL_29:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_57;
  }

LABEL_54:
  v26 = *(a2 + 14);
  *(this + 35) |= 0x80000u;
  v27 = *(this + 14);
  if (v27 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v27, v26);
  v5 = *(a2 + 35);
  if ((v5 & 0x100000) == 0)
  {
LABEL_30:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

LABEL_57:
  v28 = *(a2 + 32);
  *(this + 35) |= 0x100000u;
  *(this + 32) = v28;
  v5 = *(a2 + 35);
  if ((v5 & 0x200000) == 0)
  {
LABEL_31:
    if ((v5 & 0x400000) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

LABEL_58:
  v29 = *(a2 + 15);
  *(this + 35) |= 0x200000u;
  *(this + 15) = v29;
  if ((*(a2 + 35) & 0x400000) == 0)
  {
    return;
  }

LABEL_32:
  v8 = *(a2 + 33);
  *(this + 35) |= 0x400000u;
  *(this + 33) = v8;
}

void sub_2963DA884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::RTStats::~RTStats(awd::metrics::RTStats *this)
{
  *this = &unk_2A1D4D9A8;
  awd::metrics::RTStats::SharedDtor(this);
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::RTStats::~RTStats(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::RTStats::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C25A1F0](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 112);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    JUMPOUT(0x29C25A1F0);
  }

  return this;
}

uint64_t awd::metrics::RTStats::default_instance(awd::metrics::RTStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::RTStats::default_instance_;
  if (!awd::metrics::RTStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::RTStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::RTStats::Clear(uint64_t this)
{
  v1 = *(this + 140);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    if ((v1 & 0x20) != 0)
    {
      v2 = *(this + 32);
      if (v2 != MEMORY[0x29EDC9758])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(this + 40) = 0;
    v1 = *(this + 140);
  }

  if ((v1 & 0x1FE00) != 0)
  {
    *(this + 76) = 0;
    *(this + 68) = 0;
    *(this + 92) = 0;
    *(this + 84) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 96) = 0;
    *(this + 104) = 0;
    if ((v1 & 0x80000) != 0)
    {
      v3 = *(this + 112);
      if (v3 != MEMORY[0x29EDC9758])
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 120) = 0;
    *(this + 128) = 0;
  }

  *(this + 56) = 0;
  *(this + 140) = 0;
  return this;
}

uint64_t awd::metrics::RTStats::MergePartialFromCodedStream(awd::metrics::RTStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
  while (2)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        *(this + 35) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v24 = v11 + 1;
          *(a2 + 1) = v24;
          goto LABEL_67;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v24 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_67:
        if (v24 >= v8 || (v38 = *v24, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v38;
          v39 = v24 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 35) |= 2u;
        if (v39 >= v8 || *v39 != 24)
        {
          continue;
        }

        v19 = v39 + 1;
        *(a2 + 1) = v19;
LABEL_75:
        if (v19 >= v8 || (v40 = *v19, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v40;
          v41 = v19 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 35) |= 4u;
        if (v41 >= v8 || *v41 != 32)
        {
          continue;
        }

        v21 = v41 + 1;
        *(a2 + 1) = v21;
LABEL_83:
        if (v21 >= v8 || (v42 = *v21, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v42;
          v43 = v21 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 35) |= 8u;
        if (v43 >= v8 || *v43 != 40)
        {
          continue;
        }

        v16 = v43 + 1;
        *(a2 + 1) = v16;
LABEL_91:
        if (v16 >= v8 || (v44 = *v16, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v44;
          v45 = v16 + 1;
          *(a2 + 1) = v45;
        }

        v28 = *(this + 35) | 0x10;
        *(this + 35) = v28;
        if (v45 >= v8 || *v45 != 50)
        {
          continue;
        }

        *(a2 + 1) = v45 + 1;
LABEL_99:
        *(this + 35) = v28 | 0x20;
        if (*(this + 4) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v46 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v46 >= v22 || *v46 != 56)
        {
          continue;
        }

        v31 = v46 + 1;
        *(a2 + 1) = v31;
LABEL_105:
        if (v31 >= v22 || (v47 = *v31, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v47;
          v48 = v31 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 35) |= 0x40u;
        if (v48 >= v22 || *v48 != 64)
        {
          continue;
        }

        v23 = v48 + 1;
        *(a2 + 1) = v23;
LABEL_113:
        if (v23 >= v22 || (v49 = *v23, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v49;
          v50 = v23 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 35) |= 0x80u;
        if (v50 >= v22 || *v50 != 74)
        {
          continue;
        }

        v34 = v50 + 1;
        *(a2 + 1) = v34;
        goto LABEL_121;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v19 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_75;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_83;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_91;
      case 6u:
        if (v7 != 2)
        {
          goto LABEL_56;
        }

        v28 = *(this + 35);
        goto LABEL_99;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v31 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_105;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_113;
      case 9u:
        if ((TagFallback & 7) == 0)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x4Au, a2, this + 48);
          if (!result)
          {
            return result;
          }

          goto LABEL_135;
        }

        if (v7 != 2)
        {
LABEL_56:
          if (v7 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        v34 = *(a2 + 1);
        v22 = *(a2 + 2);
LABEL_121:
        v84 = 0;
        if (v34 < v22 && (*v34 & 0x80000000) == 0)
        {
          v84 = *v34;
          *(a2 + 1) = v34 + 1;
          goto LABEL_125;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
        {
LABEL_125:
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v83 = 0;
            v51 = *(a2 + 1);
            if (v51 >= *(a2 + 2) || *v51 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v83))
              {
                return 0;
              }
            }

            else
            {
              v83 = *v51;
              *(a2 + 1) = v51 + 1;
            }

            v52 = *(this + 14);
            if (v52 == *(this + 15))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v52 + 1);
              v52 = *(this + 14);
            }

            v53 = v83;
            v54 = *(this + 6);
            *(this + 14) = v52 + 1;
            *(v54 + 4 * v52) = v53;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
LABEL_135:
          v55 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v55 < v12 && *v55 == 80)
          {
            v18 = v55 + 1;
            *(a2 + 1) = v18;
LABEL_138:
            if (v18 >= v12 || (v56 = *v18, v56 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
              if (!result)
              {
                return result;
              }

              v57 = *(a2 + 1);
              v12 = *(a2 + 2);
            }

            else
            {
              *(this + 18) = v56;
              v57 = v18 + 1;
              *(a2 + 1) = v57;
            }

            *(this + 35) |= 0x400u;
            if (v57 < v12 && *v57 == 88)
            {
              v33 = v57 + 1;
              *(a2 + 1) = v33;
LABEL_146:
              if (v33 >= v12 || (v58 = *v33, v58 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
                if (!result)
                {
                  return result;
                }

                v59 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                *(this + 19) = v58;
                v59 = v33 + 1;
                *(a2 + 1) = v59;
              }

              *(this + 35) |= 0x800u;
              if (v59 < v12 && *v59 == 96)
              {
                v15 = v59 + 1;
                *(a2 + 1) = v15;
LABEL_154:
                if (v15 >= v12 || (v60 = *v15, v60 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
                  if (!result)
                  {
                    return result;
                  }

                  v61 = *(a2 + 1);
                  v12 = *(a2 + 2);
                }

                else
                {
                  *(this + 20) = v60;
                  v61 = v15 + 1;
                  *(a2 + 1) = v61;
                }

                *(this + 35) |= 0x1000u;
                if (v61 < v12 && *v61 == 104)
                {
                  v17 = v61 + 1;
                  *(a2 + 1) = v17;
LABEL_162:
                  if (v17 >= v12 || (v62 = *v17, v62 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
                    if (!result)
                    {
                      return result;
                    }

                    v63 = *(a2 + 1);
                    v12 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 21) = v62;
                    v63 = v17 + 1;
                    *(a2 + 1) = v63;
                  }

                  *(this + 35) |= 0x2000u;
                  if (v63 < v12 && *v63 == 112)
                  {
                    v30 = v63 + 1;
                    *(a2 + 1) = v30;
LABEL_170:
                    if (v30 >= v12 || (v64 = *v30, v64 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
                      if (!result)
                      {
                        return result;
                      }

                      v65 = *(a2 + 1);
                      v12 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 22) = v64;
                      v65 = v30 + 1;
                      *(a2 + 1) = v65;
                    }

                    *(this + 35) |= 0x4000u;
                    if (v65 < v12 && *v65 == 120)
                    {
                      v14 = v65 + 1;
                      *(a2 + 1) = v14;
LABEL_178:
                      if (v14 >= v12 || (v66 = *v14, v66 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
                        if (!result)
                        {
                          return result;
                        }

                        v67 = *(a2 + 1);
                        v12 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 23) = v66;
                        v67 = (v14 + 1);
                        *(a2 + 1) = v67;
                      }

                      *(this + 35) |= 0x8000u;
                      if (v12 - v67 >= 2 && *v67 == 128 && v67[1] == 1)
                      {
                        v20 = (v67 + 2);
                        *(a2 + 1) = v20;
LABEL_187:
                        if (v20 >= v12 || (v68 = *v20, v68 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
                          if (!result)
                          {
                            return result;
                          }

                          v69 = *(a2 + 1);
                          v12 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 24) = v68;
                          v69 = (v20 + 1);
                          *(a2 + 1) = v69;
                        }

                        *(this + 35) |= 0x10000u;
                        if (v12 - v69 >= 2 && *v69 == 136 && v69[1] == 1)
                        {
                          v13 = (v69 + 2);
                          *(a2 + 1) = v13;
LABEL_196:
                          if (v13 >= v12 || (v70 = *v13, v70 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
                            if (!result)
                            {
                              return result;
                            }

                            v71 = *(a2 + 1);
                            v12 = *(a2 + 2);
                          }

                          else
                          {
                            *(this + 25) = v70;
                            v71 = (v13 + 1);
                            *(a2 + 1) = v71;
                          }

                          *(this + 35) |= 0x20000u;
                          if (v12 - v71 >= 2 && *v71 == 144 && v71[1] == 1)
                          {
                            v25 = (v71 + 2);
                            *(a2 + 1) = v25;
LABEL_205:
                            if (v25 >= v12 || (v72 = *v25, v72 < 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
                              if (!result)
                              {
                                return result;
                              }

                              v73 = *(a2 + 1);
                              v12 = *(a2 + 2);
                            }

                            else
                            {
                              *(this + 26) = v72;
                              v73 = (v25 + 1);
                              *(a2 + 1) = v73;
                            }

                            v32 = *(this + 35) | 0x40000;
                            *(this + 35) = v32;
                            if (v12 - v73 >= 2 && *v73 == 154 && v73[1] == 1)
                            {
                              *(a2 + 1) = v73 + 2;
LABEL_214:
                              *(this + 35) = v32 | 0x80000;
                              if (*(this + 14) == v4)
                              {
                                operator new();
                              }

                              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                              if (!result)
                              {
                                return result;
                              }

                              v74 = *(a2 + 1);
                              v26 = *(a2 + 2);
                              if (v26 - v74 >= 2 && *v74 == 160 && v74[1] == 1)
                              {
                                v36 = (v74 + 2);
                                *(a2 + 1) = v36;
LABEL_221:
                                if (v36 >= v26 || (v75 = *v36, v75 < 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v76 = *(a2 + 1);
                                  v26 = *(a2 + 2);
                                }

                                else
                                {
                                  *(this + 32) = v75;
                                  v76 = (v36 + 1);
                                  *(a2 + 1) = v76;
                                }

                                *(this + 35) |= 0x100000u;
                                if (v26 - v76 >= 2 && *v76 == 168 && v76[1] == 1)
                                {
                                  v27 = (v76 + 2);
                                  *(a2 + 1) = v27;
LABEL_230:
                                  if (v27 >= v26 || (v77 = *v27, v77 < 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v78 = *(a2 + 1);
                                    v26 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    *(this + 17) = v77;
                                    v78 = (v27 + 1);
                                    *(a2 + 1) = v78;
                                  }

                                  *(this + 35) |= 0x200u;
                                  if (v26 - v78 >= 2 && *v78 == 176 && v78[1] == 1)
                                  {
                                    v29 = (v78 + 2);
                                    *(a2 + 1) = v29;
LABEL_239:
                                    if (v29 >= v26 || (v79 = *v29, v79 < 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 15);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v80 = *(a2 + 1);
                                      v26 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *(this + 15) = v79;
                                      v80 = (v29 + 1);
                                      *(a2 + 1) = v80;
                                    }

                                    *(this + 35) |= 0x200000u;
                                    if (v26 - v80 >= 2 && *v80 == 184 && v80[1] == 1)
                                    {
                                      v35 = (v80 + 2);
                                      *(a2 + 1) = v35;
LABEL_248:
                                      if (v35 >= v26 || (v81 = *v35, v81 < 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 33);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v82 = *(a2 + 1);
                                        v26 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *(this + 33) = v81;
                                        v82 = v35 + 1;
                                        *(a2 + 1) = v82;
                                      }

                                      *(this + 35) |= 0x400000u;
                                      if (v82 == v26 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                                      {
                                        *(a2 + 8) = 0;
                                        result = 1;
                                        *(a2 + 36) = 1;
                                        return result;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          continue;
        }

        return 0;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v18 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_138;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v33 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_146;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v15 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_154;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v17 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_162;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v30 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_170;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v14 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_178;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v20 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_187;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_196;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v25 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_205;
      case 0x13u:
        if (v7 != 2)
        {
          goto LABEL_56;
        }

        v32 = *(this + 35);
        goto LABEL_214;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v36 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_221;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v27 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_230;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v29 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_239;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v35 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_248;
      default:
        goto LABEL_56;
    }
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(int a1, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a4)
{
  v21 = 0;
  v7 = *(this + 1);
  if (v7 >= *(this + 2) || *v7 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v21 = *v7;
    *(this + 1) = v7 + 1;
  }

  v9 = *(a4 + 8);
  if (v9 == *(a4 + 12))
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(a4, v9 + 1);
    v9 = *(a4 + 8);
  }

  v10 = v21;
  v11 = *a4;
  *(a4 + 8) = v9 + 1;
  *(v11 + 4 * v9) = v10;
  v12 = *(a4 + 12) - *(a4 + 8);
  if (v12 >= 1)
  {
    v13 = v12 + 1;
    do
    {
      if (a2 > 0x7F)
      {
        if (a2 >> 14)
        {
          return 1;
        }

        v17 = *(this + 1);
        v14 = *(this + 2);
        if (v14 - v17 < 2 || (a2 & 0x7F | 0x80) != *v17 || a2 >> 7 != v17[1])
        {
          return 1;
        }

        v16 = (v17 + 2);
      }

      else
      {
        v15 = *(this + 1);
        v14 = *(this + 2);
        if (v15 >= v14 || *v15 != a2)
        {
          return 1;
        }

        v16 = (v15 + 1);
      }

      *(this + 1) = v16;
      if (v16 >= v14 || *v16 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v21 = *v16;
        *(this + 1) = v16 + 1;
      }

      v18 = *(a4 + 8);
      if (v18 >= *(a4 + 12))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
        v18 = *(a4 + 8);
      }

      v19 = v21;
      v20 = *a4;
      *(a4 + 8) = v18 + 1;
      *(v20 + 4 * v18) = v19;
      --v13;
    }

    while (v13 > 1);
  }

  return 1;
}

void sub_2963DB944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::RTStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 140);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 140);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_35:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 40), a2, a4);
    if ((*(v5 + 140) & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_34:
  v11 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 140);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_35;
  }

LABEL_8:
  if ((v6 & 0x80) != 0)
  {
LABEL_9:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 44), a2, a4);
  }

LABEL_10:
  if (*(v5 + 56) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v7 = *(v5 + 64);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 56) >= 1)
    {
      v8 = 0;
      do
      {
        v9 = *(*(v5 + 48) + 4 * v8);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v8;
      }

      while (v8 < *(v5 + 56));
    }
  }

  v10 = *(v5 + 140);
  if ((v10 & 0x400) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 72), a2, a4);
    v10 = *(v5 + 140);
    if ((v10 & 0x800) == 0)
    {
LABEL_16:
      if ((v10 & 0x1000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_39;
    }
  }

  else if ((v10 & 0x800) == 0)
  {
    goto LABEL_16;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 76), a2, a4);
  v10 = *(v5 + 140);
  if ((v10 & 0x1000) == 0)
  {
LABEL_17:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 80), a2, a4);
  v10 = *(v5 + 140);
  if ((v10 & 0x2000) == 0)
  {
LABEL_18:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 84), a2, a4);
  v10 = *(v5 + 140);
  if ((v10 & 0x4000) == 0)
  {
LABEL_19:
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 88), a2, a4);
  v10 = *(v5 + 140);
  if ((v10 & 0x8000) == 0)
  {
LABEL_20:
    if ((v10 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 92), a2, a4);
  v10 = *(v5 + 140);
  if ((v10 & 0x10000) == 0)
  {
LABEL_21:
    if ((v10 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 96), a2, a4);
  v10 = *(v5 + 140);
  if ((v10 & 0x20000) == 0)
  {
LABEL_22:
    if ((v10 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 100), a2, a4);
  v10 = *(v5 + 140);
  if ((v10 & 0x40000) == 0)
  {
LABEL_23:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 104), a2, a4);
  v10 = *(v5 + 140);
  if ((v10 & 0x80000) == 0)
  {
LABEL_24:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_46:
  v12 = *(v5 + 112);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v10 = *(v5 + 140);
  if ((v10 & 0x100000) == 0)
  {
LABEL_25:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 128), a2, a4);
  v10 = *(v5 + 140);
  if ((v10 & 0x200) == 0)
  {
LABEL_26:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_27;
    }

LABEL_49:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x16, *(v5 + 120), a2, a4);
    if ((*(v5 + 140) & 0x400000) == 0)
    {
      return this;
    }

    goto LABEL_50;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 68), a2, a4);
  v10 = *(v5 + 140);
  if ((v10 & 0x200000) != 0)
  {
    goto LABEL_49;
  }

LABEL_27:
  if ((v10 & 0x400000) == 0)
  {
    return this;
  }

LABEL_50:
  v13 = *(v5 + 132);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, v13, a2, a4);
}

uint64_t awd::metrics::RTStats::ByteSize(awd::metrics::RTStats *this)
{
  v2 = *(this + 35);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_47;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 35);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 35);
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 35);
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(this + 6);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 35);
  }

  else
  {
    v9 = 2;
  }

  v3 += v9;
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_26:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 35);
  }

  else
  {
    v11 = 2;
  }

  v3 += v11;
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_30:
  v12 = *(this + 4);
  v13 = *(v12 + 23);
  v14 = v13;
  v15 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v16 = *(v12 + 23);
  }

  else
  {
    v16 = v15;
  }

  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    v13 = *(v12 + 23);
    v15 = *(v12 + 8);
    v2 = *(this + 35);
    v14 = *(v12 + 23);
  }

  else
  {
    v17 = 1;
  }

  if (v14 < 0)
  {
    v13 = v15;
  }

  v3 += v17 + v13 + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_39:
  v18 = *(this + 10);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v2 = *(this + 35);
  }

  else
  {
    v19 = 2;
  }

  v3 += v19;
  if ((v2 & 0x80) != 0)
  {
LABEL_43:
    v20 = *(this + 11);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v2 = *(this + 35);
    }

    else
    {
      v21 = 2;
    }

    v3 += v21;
  }

LABEL_47:
  if ((v2 & 0x1FE00) == 0)
  {
    goto LABEL_84;
  }

  if ((v2 & 0x200) != 0)
  {
    v22 = *(this + 17);
    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 2;
      v2 = *(this + 35);
    }

    else
    {
      v23 = 3;
    }

    v3 += v23;
    if ((v2 & 0x400) == 0)
    {
LABEL_50:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_64;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_50;
  }

  v24 = *(this + 18);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v2 = *(this + 35);
  }

  else
  {
    v25 = 2;
  }

  v3 += v25;
  if ((v2 & 0x800) == 0)
  {
LABEL_51:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_68;
  }

LABEL_64:
  v26 = *(this + 19);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v2 = *(this + 35);
  }

  else
  {
    v27 = 2;
  }

  v3 += v27;
  if ((v2 & 0x1000) == 0)
  {
LABEL_52:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_72;
  }

LABEL_68:
  v28 = *(this + 20);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v2 = *(this + 35);
  }

  else
  {
    v29 = 2;
  }

  v3 += v29;
  if ((v2 & 0x2000) == 0)
  {
LABEL_53:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_76;
  }

LABEL_72:
  v30 = *(this + 21);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    v2 = *(this + 35);
  }

  else
  {
    v31 = 2;
  }

  v3 += v31;
  if ((v2 & 0x4000) == 0)
  {
LABEL_54:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

LABEL_76:
  v32 = *(this + 22);
  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 1;
    v2 = *(this + 35);
  }

  else
  {
    v33 = 2;
  }

  v3 += v33;
  if ((v2 & 0x8000) != 0)
  {
LABEL_80:
    v34 = *(this + 23);
    if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 1;
      v2 = *(this + 35);
    }

    else
    {
      v35 = 2;
    }

    v3 += v35;
  }

LABEL_84:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_123;
  }

  if ((v2 & 0x10000) != 0)
  {
    v36 = *(this + 24);
    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
      v2 = *(this + 35);
    }

    else
    {
      v37 = 3;
    }

    v3 += v37;
    if ((v2 & 0x20000) == 0)
    {
LABEL_87:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_101;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_87;
  }

  v38 = *(this + 25);
  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    v2 = *(this + 35);
  }

  else
  {
    v39 = 3;
  }

  v3 += v39;
  if ((v2 & 0x40000) == 0)
  {
LABEL_88:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_105;
  }

LABEL_101:
  v40 = *(this + 26);
  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
    v2 = *(this + 35);
  }

  else
  {
    v41 = 3;
  }

  v3 += v41;
  if ((v2 & 0x80000) == 0)
  {
LABEL_89:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_114;
  }

LABEL_105:
  v42 = *(this + 14);
  v43 = *(v42 + 23);
  v44 = v43;
  v45 = *(v42 + 8);
  if ((v43 & 0x80u) == 0)
  {
    v46 = *(v42 + 23);
  }

  else
  {
    v46 = v45;
  }

  if (v46 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
    v43 = *(v42 + 23);
    v45 = *(v42 + 8);
    v2 = *(this + 35);
    v44 = *(v42 + 23);
  }

  else
  {
    v47 = 1;
  }

  if (v44 < 0)
  {
    v43 = v45;
  }

  v3 += v47 + v43 + 2;
  if ((v2 & 0x100000) == 0)
  {
LABEL_90:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_118;
  }

LABEL_114:
  v48 = *(this + 32);
  if (v48 >= 0x80)
  {
    v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48) + 2;
    v2 = *(this + 35);
  }

  else
  {
    v49 = 3;
  }

  v3 += v49;
  if ((v2 & 0x200000) == 0)
  {
LABEL_91:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_119;
  }

LABEL_118:
  v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 15)) + 2;
  if ((*(this + 35) & 0x400000) == 0)
  {
    goto LABEL_123;
  }

LABEL_119:
  v50 = *(this + 33);
  if (v50 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 2;
  }

  else
  {
    v51 = 3;
  }

  v3 += v51;
LABEL_123:
  v52 = *(this + 14);
  if (v52 < 1)
  {
    LODWORD(v54) = 0;
  }

  else
  {
    v53 = 0;
    LODWORD(v54) = 0;
    do
    {
      v55 = *(*(this + 6) + 4 * v53);
      if (v55 >= 0x80)
      {
        v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55);
        v52 = *(this + 14);
      }

      else
      {
        v56 = 1;
      }

      v54 = (v56 + v54);
      ++v53;
    }

    while (v53 < v52);
    if (v54 > 0)
    {
      if (v54 >= 0x80)
      {
        v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 1;
      }

      else
      {
        v57 = 2;
      }

      v3 += v57;
    }
  }

  *(this + 16) = v54;
  result = (v3 + v54);
  *(this + 34) = result;
  return result;
}

void awd::metrics::RTStats::CheckTypeAndMergeFrom(awd::metrics::RTStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::RTStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::RTStats::MergeFrom(this, lpsrc);
}

void awd::metrics::RTStats::CopyFrom(awd::metrics::RTStats *this, const awd::metrics::RTStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::RTStats::MergeFrom(this, a2);
  }
}

double awd::metrics::RTStats::Swap(awd::metrics::RTStats *this, awd::metrics::RTStats *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    LODWORD(v3) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v3;
    LODWORD(v3) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v3;
    v4 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    result = *(a2 + 7);
    *(a2 + 6) = v4;
    v6 = *(this + 7);
    *(this + 7) = result;
    *(a2 + 7) = v6;
    LODWORD(v4) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v4;
    LODWORD(v4) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v4;
    LODWORD(v4) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v4;
    LODWORD(v4) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v4;
    LODWORD(v4) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v4;
    LODWORD(v4) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v4;
    LODWORD(v4) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v4;
    LODWORD(v4) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v4;
    LODWORD(v4) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v4;
    LODWORD(v4) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v4;
    LODWORD(v4) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v4;
    v7 = *(this + 14);
    v8 = *(this + 15);
    v9 = *(a2 + 15);
    *(this + 14) = *(a2 + 14);
    *(this + 15) = v9;
    *(a2 + 14) = v7;
    *(a2 + 15) = v8;
    LODWORD(v7) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v7;
    LODWORD(v7) = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v7;
    LODWORD(v7) = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v7;
  }

  return result;
}

uint64_t awd::metrics::PLRHistogram::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 36) = 0;
  *(this + 44) = 0;
  return this;
}

awd::metrics::PLRHistogram *awd::metrics::PLRHistogram::PLRHistogram(awd::metrics::PLRHistogram *this, const awd::metrics::PLRHistogram *a2)
{
  *(this + 5) = 0;
  *(this + 9) = 0;
  *this = &unk_2A1D4DA20;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::PLRHistogram::MergeFrom(this, a2);
  return this;
}

void sub_2963DC460(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::PLRHistogram::MergeFrom(awd::metrics::PLRHistogram *this, const awd::metrics::PLRHistogram *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 11);
    }

    if ((v5 & 4) != 0)
    {
      v7 = *(a2 + 9);
      *(this + 11) |= 4u;
      *(this + 9) = v7;
    }
  }
}

void sub_2963DC580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::PLRHistogram::~PLRHistogram(awd::metrics::PLRHistogram *this)
{
  *this = &unk_2A1D4DA20;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::PLRHistogram::~PLRHistogram(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::PLRHistogram::default_instance(awd::metrics::PLRHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::PLRHistogram::default_instance_;
  if (!awd::metrics::PLRHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::PLRHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::PLRHistogram::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 8) = 0;
    *(this + 36) = 0;
  }

  *(this + 24) = 0;
  *(this + 44) = 0;
  return this;
}

uint64_t awd::metrics::PLRHistogram::MergePartialFromCodedStream(awd::metrics::PLRHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v13 = *(a2 + 2);
            goto LABEL_45;
          }

          goto LABEL_17;
        }

        if (v6 == 2)
        {
          break;
        }

        if (v6 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_17;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        *(this + 11) |= 1u;
        if (v11 < v8 && *v11 == 18)
        {
          v12 = v11 + 1;
          *(a2 + 1) = v12;
LABEL_28:
          v24 = 0;
          if (v12 >= v8 || *v12 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24))
            {
              return 0;
            }
          }

          else
          {
            v24 = *v12;
            *(a2 + 1) = v12 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v23 = 0;
            v16 = *(a2 + 1);
            if (v16 >= *(a2 + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
              {
                return 0;
              }
            }

            else
            {
              v23 = *v16;
              *(a2 + 1) = v16 + 1;
            }

            v17 = *(this + 6);
            if (v17 == *(this + 7))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, v17 + 1);
              v17 = *(this + 6);
            }

            v18 = v23;
            v19 = *(this + 2);
            *(this + 6) = v17 + 1;
            *(v19 + 4 * v17) = v18;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_42;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x12u, a2, this + 16);
      if (!result)
      {
        return result;
      }

LABEL_42:
      v20 = *(a2 + 1);
      v13 = *(a2 + 2);
      if (v20 < v13 && *v20 == 24)
      {
        v14 = v20 + 1;
        *(a2 + 1) = v14;
LABEL_45:
        if (v14 >= v13 || (v21 = *v14, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v21;
          v22 = v14 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 11) |= 4u;
        if (v22 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_28;
    }

LABEL_17:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::PLRHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v6 = *(v5 + 32);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 24) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(*(v5 + 16) + 4 * v7);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v7;
      }

      while (v7 < *(v5 + 24));
    }
  }

  if ((*(v5 + 44) & 4) != 0)
  {
    v9 = *(v5 + 36);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v9, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::PLRHistogram::ByteSize(awd::metrics::PLRHistogram *this)
{
  if (!*(this + 44))
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (*(this + 44))
  {
    v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    if ((*(this + 11) & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 44) & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  v3 = *(this + 9);
  if (v3 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
  }

  else
  {
    v4 = 2;
  }

  v2 += v4;
LABEL_11:
  v5 = *(this + 6);
  if (v5 < 1)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v6 = 0;
    LODWORD(v7) = 0;
    do
    {
      v8 = *(*(this + 2) + 4 * v6);
      if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
        v5 = *(this + 6);
      }

      else
      {
        v9 = 1;
      }

      v7 = (v9 + v7);
      ++v6;
    }

    while (v6 < v5);
    if (v7 > 0)
    {
      if (v7 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      }

      else
      {
        v10 = 2;
      }

      v2 += v10;
    }
  }

  *(this + 8) = v7;
  result = (v2 + v7);
  *(this + 10) = result;
  return result;
}

void awd::metrics::PLRHistogram::CheckTypeAndMergeFrom(awd::metrics::PLRHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::PLRHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::PLRHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::PLRHistogram::CopyFrom(awd::metrics::PLRHistogram *this, const awd::metrics::PLRHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::PLRHistogram::MergeFrom(this, a2);
  }
}

double awd::metrics::PLRHistogram::Swap(awd::metrics::PLRHistogram *this, awd::metrics::PLRHistogram *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    result = *(a2 + 3);
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v6 = *(this + 3);
    *(this + 3) = result;
    *(a2 + 3) = v6;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
  }

  return result;
}

void *awd::metrics::RTTHistogram::SharedCtor(void *this)
{
  this[1] = 0;
  *(this + 44) = 0;
  *(this + 36) = 0;
  return this;
}

awd::metrics::RTTHistogram *awd::metrics::RTTHistogram::RTTHistogram(awd::metrics::RTTHistogram *this, const awd::metrics::RTTHistogram *a2)
{
  *(this + 44) = 0;
  *(this + 36) = 0;
  *this = &unk_2A1D4DA98;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::RTTHistogram::MergeFrom(this, a2);
  return this;
}

void sub_2963DCD5C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::RTTHistogram::MergeFrom(awd::metrics::RTTHistogram *this, const awd::metrics::RTTHistogram *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  LOBYTE(v5) = *(a2 + 48);
  if (v5)
  {
    if (*(a2 + 48))
    {
      v7 = *(a2 + 1);
      *(this + 12) |= 1u;
      *(this + 1) = v7;
      v5 = *(a2 + 12);
      if ((v5 & 4) == 0)
      {
LABEL_8:
        if ((v5 & 8) == 0)
        {
          return;
        }

        goto LABEL_9;
      }
    }

    else if ((*(a2 + 48) & 4) == 0)
    {
      goto LABEL_8;
    }

    v8 = *(a2 + 9);
    *(this + 12) |= 4u;
    *(this + 9) = v8;
    if ((*(a2 + 12) & 8) == 0)
    {
      return;
    }

LABEL_9:
    v6 = *(a2 + 10);
    *(this + 12) |= 8u;
    *(this + 10) = v6;
  }
}

void sub_2963DCEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::RTTHistogram::~RTTHistogram(awd::metrics::RTTHistogram *this)
{
  *this = &unk_2A1D4DA98;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::RTTHistogram::~RTTHistogram(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::RTTHistogram::default_instance(awd::metrics::RTTHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::RTTHistogram::default_instance_;
  if (!awd::metrics::RTTHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::RTTHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::RTTHistogram::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    *(this + 8) = 0;
    *(this + 36) = 0;
    *(this + 40) = 0;
  }

  *(this + 24) = 0;
  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::RTTHistogram::MergePartialFromCodedStream(awd::metrics::RTTHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          if (v6 == 3)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_49;
            }
          }

          else if (v6 == 4 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_57;
          }

          goto LABEL_21;
        }

        if (v6 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v12 >= v8 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 12) |= 1u;
        if (v14 < v8 && *v14 == 18)
        {
          v9 = v14 + 1;
          *(a2 + 1) = v9;
LABEL_32:
          v27 = 0;
          if (v9 >= v8 || *v9 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
            {
              return 0;
            }
          }

          else
          {
            v27 = *v9;
            *(a2 + 1) = v9 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v26 = 0;
            v17 = *(a2 + 1);
            if (v17 >= *(a2 + 2) || *v17 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
              {
                return 0;
              }
            }

            else
            {
              v26 = *v17;
              *(a2 + 1) = v17 + 1;
            }

            v18 = *(this + 6);
            if (v18 == *(this + 7))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, v18 + 1);
              v18 = *(this + 6);
            }

            v19 = v26;
            v20 = *(this + 2);
            *(this + 6) = v18 + 1;
            *(v20 + 4 * v18) = v19;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_46;
        }
      }

      if (v6 != 2)
      {
        goto LABEL_21;
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x12u, a2, this + 16);
      if (!result)
      {
        return result;
      }

LABEL_46:
      v21 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v21 < v10 && *v21 == 24)
      {
        v15 = v21 + 1;
        *(a2 + 1) = v15;
LABEL_49:
        if (v15 >= v10 || (v22 = *v15, v22 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v23 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v22;
          v23 = v15 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 12) |= 4u;
        if (v23 < v10 && *v23 == 32)
        {
          v11 = v23 + 1;
          *(a2 + 1) = v11;
LABEL_57:
          if (v11 >= v10 || (v24 = *v11, v24 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
            if (!result)
            {
              return result;
            }

            v25 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 10) = v24;
            v25 = v11 + 1;
            *(a2 + 1) = v25;
          }

          *(this + 12) |= 8u;
          if (v25 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v7 == 2)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_32;
    }

LABEL_21:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::RTTHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 48))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v6 = *(v5 + 32);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 24) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(*(v5 + 16) + 4 * v7);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v7;
      }

      while (v7 < *(v5 + 24));
    }
  }

  v9 = *(v5 + 48);
  if ((v9 & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 36), a2, a4);
    v9 = *(v5 + 48);
  }

  if ((v9 & 8) != 0)
  {
    v10 = *(v5 + 40);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v10, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::RTTHistogram::ByteSize(awd::metrics::RTTHistogram *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (*(this + 48))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 12);
    if ((v2 & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 48) & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 9);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 12);
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_11:
  if ((v2 & 8) != 0)
  {
    v6 = *(this + 10);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
  }

LABEL_16:
  v8 = *(this + 6);
  if (v8 < 1)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    v9 = 0;
    LODWORD(v10) = 0;
    do
    {
      v11 = *(*(this + 2) + 4 * v9);
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v8 = *(this + 6);
      }

      else
      {
        v12 = 1;
      }

      v10 = (v12 + v10);
      ++v9;
    }

    while (v9 < v8);
    if (v10 > 0)
    {
      if (v10 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      }

      else
      {
        v13 = 2;
      }

      v3 += v13;
    }
  }

  *(this + 8) = v10;
  result = (v3 + v10);
  *(this + 11) = result;
  return result;
}

void awd::metrics::RTTHistogram::CheckTypeAndMergeFrom(awd::metrics::RTTHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::RTTHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::RTTHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::RTTHistogram::CopyFrom(awd::metrics::RTTHistogram *this, const awd::metrics::RTTHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::RTTHistogram::MergeFrom(this, a2);
  }
}

double awd::metrics::RTTHistogram::Swap(awd::metrics::RTTHistogram *this, awd::metrics::RTTHistogram *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    result = *(a2 + 3);
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v6 = *(this + 3);
    *(this + 3) = result;
    *(a2 + 3) = v6;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
  }

  return result;
}

uint64_t awd::metrics::TargetTxRateHistogram::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 36) = 0;
  *(this + 44) = 0;
  return this;
}

awd::metrics::TargetTxRateHistogram *awd::metrics::TargetTxRateHistogram::TargetTxRateHistogram(awd::metrics::TargetTxRateHistogram *this, const awd::metrics::TargetTxRateHistogram *a2)
{
  *(this + 5) = 0;
  *(this + 9) = 0;
  *this = &unk_2A1D4DB10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::TargetTxRateHistogram::MergeFrom(this, a2);
  return this;
}

void sub_2963DD748(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::TargetTxRateHistogram::MergeFrom(awd::metrics::TargetTxRateHistogram *this, const awd::metrics::TargetTxRateHistogram *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 11);
    }

    if ((v5 & 4) != 0)
    {
      v7 = *(a2 + 9);
      *(this + 11) |= 4u;
      *(this + 9) = v7;
    }
  }
}

void sub_2963DD868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::TargetTxRateHistogram::~TargetTxRateHistogram(awd::metrics::TargetTxRateHistogram *this)
{
  *this = &unk_2A1D4DB10;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::TargetTxRateHistogram::~TargetTxRateHistogram(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::TargetTxRateHistogram::default_instance(awd::metrics::TargetTxRateHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::TargetTxRateHistogram::default_instance_;
  if (!awd::metrics::TargetTxRateHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::TargetTxRateHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::TargetTxRateHistogram::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 8) = 0;
    *(this + 36) = 0;
  }

  *(this + 24) = 0;
  *(this + 44) = 0;
  return this;
}

uint64_t awd::metrics::TargetTxRateHistogram::MergePartialFromCodedStream(awd::metrics::TargetTxRateHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v13 = *(a2 + 2);
            goto LABEL_45;
          }

          goto LABEL_17;
        }

        if (v6 == 2)
        {
          break;
        }

        if (v6 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_17;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        *(this + 11) |= 1u;
        if (v11 < v8 && *v11 == 18)
        {
          v12 = v11 + 1;
          *(a2 + 1) = v12;
LABEL_28:
          v24 = 0;
          if (v12 >= v8 || *v12 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24))
            {
              return 0;
            }
          }

          else
          {
            v24 = *v12;
            *(a2 + 1) = v12 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v23 = 0;
            v16 = *(a2 + 1);
            if (v16 >= *(a2 + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
              {
                return 0;
              }
            }

            else
            {
              v23 = *v16;
              *(a2 + 1) = v16 + 1;
            }

            v17 = *(this + 6);
            if (v17 == *(this + 7))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, v17 + 1);
              v17 = *(this + 6);
            }

            v18 = v23;
            v19 = *(this + 2);
            *(this + 6) = v17 + 1;
            *(v19 + 4 * v17) = v18;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_42;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x12u, a2, this + 16);
      if (!result)
      {
        return result;
      }

LABEL_42:
      v20 = *(a2 + 1);
      v13 = *(a2 + 2);
      if (v20 < v13 && *v20 == 24)
      {
        v14 = v20 + 1;
        *(a2 + 1) = v14;
LABEL_45:
        if (v14 >= v13 || (v21 = *v14, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v21;
          v22 = v14 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 11) |= 4u;
        if (v22 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_28;
    }

LABEL_17:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::TargetTxRateHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v6 = *(v5 + 32);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 24) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(*(v5 + 16) + 4 * v7);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v7;
      }

      while (v7 < *(v5 + 24));
    }
  }

  if ((*(v5 + 44) & 4) != 0)
  {
    v9 = *(v5 + 36);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v9, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::TargetTxRateHistogram::ByteSize(awd::metrics::TargetTxRateHistogram *this)
{
  if (!*(this + 44))
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (*(this + 44))
  {
    v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    if ((*(this + 11) & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 44) & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  v3 = *(this + 9);
  if (v3 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
  }

  else
  {
    v4 = 2;
  }

  v2 += v4;
LABEL_11:
  v5 = *(this + 6);
  if (v5 < 1)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v6 = 0;
    LODWORD(v7) = 0;
    do
    {
      v8 = *(*(this + 2) + 4 * v6);
      if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
        v5 = *(this + 6);
      }

      else
      {
        v9 = 1;
      }

      v7 = (v9 + v7);
      ++v6;
    }

    while (v6 < v5);
    if (v7 > 0)
    {
      if (v7 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      }

      else
      {
        v10 = 2;
      }

      v2 += v10;
    }
  }

  *(this + 8) = v7;
  result = (v2 + v7);
  *(this + 10) = result;
  return result;
}

void awd::metrics::TargetTxRateHistogram::CheckTypeAndMergeFrom(awd::metrics::TargetTxRateHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::TargetTxRateHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::TargetTxRateHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::TargetTxRateHistogram::CopyFrom(awd::metrics::TargetTxRateHistogram *this, const awd::metrics::TargetTxRateHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::TargetTxRateHistogram::MergeFrom(this, a2);
  }
}

double awd::metrics::TargetTxRateHistogram::Swap(awd::metrics::TargetTxRateHistogram *this, awd::metrics::TargetTxRateHistogram *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    result = *(a2 + 3);
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v6 = *(this + 3);
    *(this + 3) = result;
    *(a2 + 3) = v6;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
  }

  return result;
}

uint64_t awd::metrics::AudioWindowLossHistogram::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 36) = 0;
  *(this + 44) = 0;
  return this;
}

awd::metrics::AudioWindowLossHistogram *awd::metrics::AudioWindowLossHistogram::AudioWindowLossHistogram(awd::metrics::AudioWindowLossHistogram *this, const awd::metrics::AudioWindowLossHistogram *a2)
{
  *(this + 5) = 0;
  *(this + 9) = 0;
  *this = &unk_2A1D4DB88;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::AudioWindowLossHistogram::MergeFrom(this, a2);
  return this;
}

void sub_2963DE044(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::AudioWindowLossHistogram::MergeFrom(awd::metrics::AudioWindowLossHistogram *this, const awd::metrics::AudioWindowLossHistogram *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 11);
    }

    if ((v5 & 4) != 0)
    {
      v7 = *(a2 + 9);
      *(this + 11) |= 4u;
      *(this + 9) = v7;
    }
  }
}

void sub_2963DE164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::AudioWindowLossHistogram::~AudioWindowLossHistogram(awd::metrics::AudioWindowLossHistogram *this)
{
  *this = &unk_2A1D4DB88;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::AudioWindowLossHistogram::~AudioWindowLossHistogram(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::AudioWindowLossHistogram::default_instance(awd::metrics::AudioWindowLossHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::AudioWindowLossHistogram::default_instance_;
  if (!awd::metrics::AudioWindowLossHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::AudioWindowLossHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::AudioWindowLossHistogram::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 8) = 0;
    *(this + 36) = 0;
  }

  *(this + 24) = 0;
  *(this + 44) = 0;
  return this;
}

uint64_t awd::metrics::AudioWindowLossHistogram::MergePartialFromCodedStream(awd::metrics::AudioWindowLossHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v13 = *(a2 + 2);
            goto LABEL_45;
          }

          goto LABEL_17;
        }

        if (v6 == 2)
        {
          break;
        }

        if (v6 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_17;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        *(this + 11) |= 1u;
        if (v11 < v8 && *v11 == 18)
        {
          v12 = v11 + 1;
          *(a2 + 1) = v12;
LABEL_28:
          v24 = 0;
          if (v12 >= v8 || *v12 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24))
            {
              return 0;
            }
          }

          else
          {
            v24 = *v12;
            *(a2 + 1) = v12 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v23 = 0;
            v16 = *(a2 + 1);
            if (v16 >= *(a2 + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
              {
                return 0;
              }
            }

            else
            {
              v23 = *v16;
              *(a2 + 1) = v16 + 1;
            }

            v17 = *(this + 6);
            if (v17 == *(this + 7))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, v17 + 1);
              v17 = *(this + 6);
            }

            v18 = v23;
            v19 = *(this + 2);
            *(this + 6) = v17 + 1;
            *(v19 + 4 * v17) = v18;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_42;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x12u, a2, this + 16);
      if (!result)
      {
        return result;
      }

LABEL_42:
      v20 = *(a2 + 1);
      v13 = *(a2 + 2);
      if (v20 < v13 && *v20 == 24)
      {
        v14 = v20 + 1;
        *(a2 + 1) = v14;
LABEL_45:
        if (v14 >= v13 || (v21 = *v14, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v21;
          v22 = v14 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 11) |= 4u;
        if (v22 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_28;
    }

LABEL_17:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::AudioWindowLossHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v6 = *(v5 + 32);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 24) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(*(v5 + 16) + 4 * v7);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v7;
      }

      while (v7 < *(v5 + 24));
    }
  }

  if ((*(v5 + 44) & 4) != 0)
  {
    v9 = *(v5 + 36);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v9, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::AudioWindowLossHistogram::ByteSize(awd::metrics::AudioWindowLossHistogram *this)
{
  if (!*(this + 44))
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (*(this + 44))
  {
    v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    if ((*(this + 11) & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 44) & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  v3 = *(this + 9);
  if (v3 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
  }

  else
  {
    v4 = 2;
  }

  v2 += v4;
LABEL_11:
  v5 = *(this + 6);
  if (v5 < 1)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v6 = 0;
    LODWORD(v7) = 0;
    do
    {
      v8 = *(*(this + 2) + 4 * v6);
      if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
        v5 = *(this + 6);
      }

      else
      {
        v9 = 1;
      }

      v7 = (v9 + v7);
      ++v6;
    }

    while (v6 < v5);
    if (v7 > 0)
    {
      if (v7 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      }

      else
      {
        v10 = 2;
      }

      v2 += v10;
    }
  }

  *(this + 8) = v7;
  result = (v2 + v7);
  *(this + 10) = result;
  return result;
}

void awd::metrics::AudioWindowLossHistogram::CheckTypeAndMergeFrom(awd::metrics::AudioWindowLossHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::AudioWindowLossHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::AudioWindowLossHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::AudioWindowLossHistogram::CopyFrom(awd::metrics::AudioWindowLossHistogram *this, const awd::metrics::AudioWindowLossHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::AudioWindowLossHistogram::MergeFrom(this, a2);
  }
}

double awd::metrics::AudioWindowLossHistogram::Swap(awd::metrics::AudioWindowLossHistogram *this, awd::metrics::AudioWindowLossHistogram *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    result = *(a2 + 3);
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v6 = *(this + 3);
    *(this + 3) = result;
    *(a2 + 3) = v6;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
  }

  return result;
}

uint64_t awd::metrics::MaxJitterHistogram::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 36) = 0;
  *(this + 44) = 0;
  return this;
}

awd::metrics::MaxJitterHistogram *awd::metrics::MaxJitterHistogram::MaxJitterHistogram(awd::metrics::MaxJitterHistogram *this, const awd::metrics::MaxJitterHistogram *a2)
{
  *(this + 5) = 0;
  *(this + 9) = 0;
  *this = &unk_2A1D4DC00;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::MaxJitterHistogram::MergeFrom(this, a2);
  return this;
}

void sub_2963DE940(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::MaxJitterHistogram::MergeFrom(awd::metrics::MaxJitterHistogram *this, const awd::metrics::MaxJitterHistogram *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 11);
    }

    if ((v5 & 4) != 0)
    {
      v7 = *(a2 + 9);
      *(this + 11) |= 4u;
      *(this + 9) = v7;
    }
  }
}

void sub_2963DEA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MaxJitterHistogram::~MaxJitterHistogram(awd::metrics::MaxJitterHistogram *this)
{
  *this = &unk_2A1D4DC00;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MaxJitterHistogram::~MaxJitterHistogram(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::MaxJitterHistogram::default_instance(awd::metrics::MaxJitterHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MaxJitterHistogram::default_instance_;
  if (!awd::metrics::MaxJitterHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::MaxJitterHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MaxJitterHistogram::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 8) = 0;
    *(this + 36) = 0;
  }

  *(this + 24) = 0;
  *(this + 44) = 0;
  return this;
}

uint64_t awd::metrics::MaxJitterHistogram::MergePartialFromCodedStream(awd::metrics::MaxJitterHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v13 = *(a2 + 2);
            goto LABEL_45;
          }

          goto LABEL_17;
        }

        if (v6 == 2)
        {
          break;
        }

        if (v6 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_17;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        *(this + 11) |= 1u;
        if (v11 < v8 && *v11 == 18)
        {
          v12 = v11 + 1;
          *(a2 + 1) = v12;
LABEL_28:
          v24 = 0;
          if (v12 >= v8 || *v12 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24))
            {
              return 0;
            }
          }

          else
          {
            v24 = *v12;
            *(a2 + 1) = v12 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v23 = 0;
            v16 = *(a2 + 1);
            if (v16 >= *(a2 + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
              {
                return 0;
              }
            }

            else
            {
              v23 = *v16;
              *(a2 + 1) = v16 + 1;
            }

            v17 = *(this + 6);
            if (v17 == *(this + 7))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, v17 + 1);
              v17 = *(this + 6);
            }

            v18 = v23;
            v19 = *(this + 2);
            *(this + 6) = v17 + 1;
            *(v19 + 4 * v17) = v18;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_42;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x12u, a2, this + 16);
      if (!result)
      {
        return result;
      }

LABEL_42:
      v20 = *(a2 + 1);
      v13 = *(a2 + 2);
      if (v20 < v13 && *v20 == 24)
      {
        v14 = v20 + 1;
        *(a2 + 1) = v14;
LABEL_45:
        if (v14 >= v13 || (v21 = *v14, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v21;
          v22 = v14 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 11) |= 4u;
        if (v22 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_28;
    }

LABEL_17:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::MaxJitterHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v6 = *(v5 + 32);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 24) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(*(v5 + 16) + 4 * v7);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v7;
      }

      while (v7 < *(v5 + 24));
    }
  }

  if ((*(v5 + 44) & 4) != 0)
  {
    v9 = *(v5 + 36);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v9, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::MaxJitterHistogram::ByteSize(awd::metrics::MaxJitterHistogram *this)
{
  if (!*(this + 44))
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (*(this + 44))
  {
    v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    if ((*(this + 11) & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 44) & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  v3 = *(this + 9);
  if (v3 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
  }

  else
  {
    v4 = 2;
  }

  v2 += v4;
LABEL_11:
  v5 = *(this + 6);
  if (v5 < 1)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v6 = 0;
    LODWORD(v7) = 0;
    do
    {
      v8 = *(*(this + 2) + 4 * v6);
      if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
        v5 = *(this + 6);
      }

      else
      {
        v9 = 1;
      }

      v7 = (v9 + v7);
      ++v6;
    }

    while (v6 < v5);
    if (v7 > 0)
    {
      if (v7 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      }

      else
      {
        v10 = 2;
      }

      v2 += v10;
    }
  }

  *(this + 8) = v7;
  result = (v2 + v7);
  *(this + 10) = result;
  return result;
}

void awd::metrics::MaxJitterHistogram::CheckTypeAndMergeFrom(awd::metrics::MaxJitterHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::MaxJitterHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::MaxJitterHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::MaxJitterHistogram::CopyFrom(awd::metrics::MaxJitterHistogram *this, const awd::metrics::MaxJitterHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MaxJitterHistogram::MergeFrom(this, a2);
  }
}

double awd::metrics::MaxJitterHistogram::Swap(awd::metrics::MaxJitterHistogram *this, awd::metrics::MaxJitterHistogram *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    result = *(a2 + 3);
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v6 = *(this + 3);
    *(this + 3) = result;
    *(a2 + 3) = v6;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
  }

  return result;
}

uint64_t awd::metrics::VideoQualityStats::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::VideoQualityStats *awd::metrics::VideoQualityStats::VideoQualityStats(awd::metrics::VideoQualityStats *this, const awd::metrics::VideoQualityStats *a2)
{
  *this = &unk_2A1D4DC78;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::VideoQualityStats::MergeFrom(this, a2);
  return this;
}

float awd::metrics::VideoQualityStats::MergeFrom(awd::metrics::VideoQualityStats *this, const awd::metrics::VideoQualityStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v7 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v7;
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 4);
    *(this + 8) |= 2u;
    *(this + 4) = result;
    v5 = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_12:
    result = *(a2 + 5);
    *(this + 8) |= 4u;
    *(this + 5) = result;
    if ((*(a2 + 8) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    v6 = *(a2 + 6);
    *(this + 8) |= 8u;
    *(this + 6) = v6;
  }

  return result;
}

void sub_2963DF33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::VideoQualityStats::~VideoQualityStats(awd::metrics::VideoQualityStats *this)
{
  *this = &unk_2A1D4DC78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4DC78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4DC78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::VideoQualityStats::default_instance(awd::metrics::VideoQualityStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::VideoQualityStats::default_instance_;
  if (!awd::metrics::VideoQualityStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::VideoQualityStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::VideoQualityStats::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::VideoQualityStats::MergePartialFromCodedStream(awd::metrics::VideoQualityStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 != 3)
        {
          if (v6 == 4 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_36;
          }

          goto LABEL_20;
        }

        if (v7 != 5)
        {
          goto LABEL_20;
        }

LABEL_32:
        v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v19) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = v19;
        *(this + 8) |= 4u;
        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v16 < v8 && *v16 == 32)
        {
          v9 = v16 + 1;
          *(a2 + 1) = v9;
LABEL_36:
          if (v9 >= v8 || (v17 = *v9, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v17;
            v18 = v9 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 8) |= 8u;
          if (v18 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v11 >= v10 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 8) |= 1u;
      if (v13 < v10 && *v13 == 21)
      {
        *(a2 + 1) = v13 + 1;
LABEL_28:
        v20 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v20) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v20;
        *(this + 8) |= 2u;
        v15 = *(a2 + 1);
        if (v15 < *(a2 + 2) && *v15 == 29)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_32;
        }
      }
    }

    if (v6 == 2 && v7 == 5)
    {
      goto LABEL_28;
    }

LABEL_20:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::VideoQualityStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 32) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 32);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

uint64_t awd::metrics::VideoQualityStats::ByteSize(awd::metrics::VideoQualityStats *this)
{
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    if (*(this + 32))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 8);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 4) != 0)
    {
      v4 = v3 + 5;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 8) != 0)
    {
      v5 = *(this + 6);
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      }

      else
      {
        v6 = 2;
      }

      v4 = (v6 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 7) = v4;
  return v4;
}

float awd::metrics::VideoQualityStats::CheckTypeAndMergeFrom(awd::metrics::VideoQualityStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::VideoQualityStats::CheckTypeAndMergeFrom();
  }

  return awd::metrics::VideoQualityStats::MergeFrom(this, lpsrc);
}

float awd::metrics::VideoQualityStats::CopyFrom(awd::metrics::VideoQualityStats *this, const awd::metrics::VideoQualityStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::VideoQualityStats::MergeFrom(this, a2);
  }

  return result;
}

float awd::metrics::VideoQualityStats::Swap(awd::metrics::VideoQualityStats *this, awd::metrics::VideoQualityStats *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    result = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = result;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeBasebandStats::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 108) = 0;
  *(this + 124) = 0;
  *(this + 116) = 0;
  *(this + 132) = 0;
  return this;
}

awd::metrics::FaceTimeBasebandStats *awd::metrics::FaceTimeBasebandStats::FaceTimeBasebandStats(awd::metrics::FaceTimeBasebandStats *this, const awd::metrics::FaceTimeBasebandStats *a2)
{
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 108) = 0;
  *(this + 124) = 0;
  *(this + 116) = 0;
  *(this + 33) = 0;
  *this = &unk_2A1D4DCF0;
  *(this + 1) = 0;
  *(this + 3) = 0;
  awd::metrics::FaceTimeBasebandStats::MergeFrom(this, a2);
  return this;
}

void sub_2963DFA6C(_Unwind_Exception *a1)
{
  v6 = v5;
  if (*v6)
  {
    MEMORY[0x29C25A1D0](*v6, 0x1000C8052888210);
  }

  awd::metrics::FaceTimeBasebandStats::FaceTimeBasebandStats(v4, v3, v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeBasebandStats::MergeFrom(awd::metrics::FaceTimeBasebandStats *this, const awd::metrics::FaceTimeBasebandStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 12);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 5, *(this + 12) + v5);
    memcpy((*(this + 5) + 4 * *(this + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  v6 = *(a2 + 18);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 18) + v6);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 11, *(this + 24) + v7);
    memcpy((*(this + 11) + 4 * *(this + 24)), *(a2 + 11), 4 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  v8 = *(a2 + 33);
  if (!v8)
  {
    goto LABEL_17;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    v13 = *(a2 + 27);
    *(this + 33) |= 0x20u;
    *(this + 27) = v13;
    v8 = *(a2 + 33);
    if ((v8 & 0x40) == 0)
    {
LABEL_15:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v12 = *(a2 + 1);
  *(this + 33) |= 1u;
  *(this + 1) = v12;
  v8 = *(a2 + 33);
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_25:
  v14 = *(a2 + 28);
  *(this + 33) |= 0x40u;
  *(this + 28) = v14;
  v8 = *(a2 + 33);
  if ((v8 & 0x80) != 0)
  {
LABEL_16:
    v9 = *(a2 + 29);
    *(this + 33) |= 0x80u;
    *(this + 29) = v9;
    v8 = *(a2 + 33);
  }

LABEL_17:
  if ((v8 & 0xFF00) != 0)
  {
    if ((v8 & 0x100) != 0)
    {
      v10 = *(a2 + 30);
      *(this + 33) |= 0x100u;
      *(this + 30) = v10;
      v8 = *(a2 + 33);
    }

    if ((v8 & 0x200) != 0)
    {
      v11 = *(a2 + 31);
      *(this + 33) |= 0x200u;
      *(this + 31) = v11;
    }
  }
}

void sub_2963DFCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeBasebandStats::~FaceTimeBasebandStats(awd::metrics::FaceTimeBasebandStats *this)
{
  *this = &unk_2A1D4DCF0;
  v2 = *(this + 11);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x29C25A1D0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 2);
  if (v5)
  {
    MEMORY[0x29C25A1D0](v5, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::FaceTimeBasebandStats::~FaceTimeBasebandStats(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeBasebandStats::default_instance(awd::metrics::FaceTimeBasebandStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeBasebandStats::default_instance_;
  if (!awd::metrics::FaceTimeBasebandStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeBasebandStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeBasebandStats::Clear(uint64_t this)
{
  v1 = *(this + 132);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 112) = 0;
    *(this + 108) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 120) = 0;
  }

  *(this + 24) = 0;
  *(this + 48) = 0;
  *(this + 72) = 0;
  *(this + 96) = 0;
  *(this + 132) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimeBasebandStats::MergePartialFromCodedStream(awd::metrics::FaceTimeBasebandStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v4 = *(a2 + 1);
            if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
            {
              TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
              *(a2 + 8) = TagFallback;
              if (!TagFallback)
              {
                return 1;
              }
            }

            else
            {
              *(a2 + 8) = TagFallback;
              *(a2 + 1) = v4 + 1;
              if (!TagFallback)
              {
                return 1;
              }
            }

            v6 = TagFallback >> 3;
            v7 = TagFallback & 7;
            if (TagFallback >> 3 > 5)
            {
              if (TagFallback >> 3 <= 7)
              {
                if (v6 == 6)
                {
                  if ((TagFallback & 7) == 0)
                  {
                    v18 = *(a2 + 1);
                    v10 = *(a2 + 2);
                    goto LABEL_129;
                  }
                }

                else if (v6 == 7 && (TagFallback & 7) == 0)
                {
                  v14 = *(a2 + 1);
                  v10 = *(a2 + 2);
                  goto LABEL_137;
                }
              }

              else if (v6 == 8)
              {
                if ((TagFallback & 7) == 0)
                {
                  v21 = *(a2 + 1);
                  v10 = *(a2 + 2);
                  goto LABEL_145;
                }
              }

              else if (v6 == 9)
              {
                if ((TagFallback & 7) == 0)
                {
                  v24 = *(a2 + 1);
                  v10 = *(a2 + 2);
                  goto LABEL_153;
                }
              }

              else if (v6 == 10 && (TagFallback & 7) == 0)
              {
                v11 = *(a2 + 1);
                v10 = *(a2 + 2);
                goto LABEL_161;
              }

              goto LABEL_44;
            }

            if (TagFallback >> 3 > 2)
            {
              break;
            }

            if (v6 == 1)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_44;
              }

              v15 = *(a2 + 1);
              v12 = *(a2 + 2);
              if (v15 >= v12 || (v16 = *v15, v16 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
                if (!result)
                {
                  return result;
                }

                v17 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                *(this + 1) = v16;
                v17 = v15 + 1;
                *(a2 + 1) = v17;
              }

              *(this + 33) |= 1u;
              if (v17 < v12 && *v17 == 18)
              {
                v13 = v17 + 1;
                *(a2 + 1) = v13;
LABEL_61:
                v57 = 0;
                if (v13 >= v12 || *v13 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v57))
                  {
                    return 0;
                  }
                }

                else
                {
                  v57 = *v13;
                  *(a2 + 1) = v13 + 1;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
                {
                  v56 = 0;
                  v26 = *(a2 + 1);
                  if (v26 >= *(a2 + 2) || *v26 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v56))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v56 = *v26;
                    *(a2 + 1) = v26 + 1;
                  }

                  v27 = *(this + 6);
                  if (v27 == *(this + 7))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, v27 + 1);
                    v27 = *(this + 6);
                  }

                  v28 = v56;
                  v29 = *(this + 2);
                  *(this + 6) = v27 + 1;
                  *(v29 + 4 * v27) = v28;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                goto LABEL_75;
              }
            }

            else
            {
              if (v6 != 2)
              {
                goto LABEL_44;
              }

              if ((TagFallback & 7) != 0)
              {
                if (v7 != 2)
                {
                  goto LABEL_44;
                }

                v13 = *(a2 + 1);
                v12 = *(a2 + 2);
                goto LABEL_61;
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x12u, a2, this + 16);
              if (!result)
              {
                return result;
              }

LABEL_75:
              v30 = *(a2 + 1);
              v19 = *(a2 + 2);
              if (v30 < v19 && *v30 == 26)
              {
                v20 = v30 + 1;
                *(a2 + 1) = v20;
LABEL_78:
                v57 = 0;
                if (v20 >= v19 || *v20 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v57))
                  {
                    return 0;
                  }
                }

                else
                {
                  v57 = *v20;
                  *(a2 + 1) = v20 + 1;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
                {
                  v56 = 0;
                  v31 = *(a2 + 1);
                  if (v31 >= *(a2 + 2) || *v31 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v56))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v56 = *v31;
                    *(a2 + 1) = v31 + 1;
                  }

                  v32 = *(this + 12);
                  if (v32 == *(this + 13))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 5, v32 + 1);
                    v32 = *(this + 12);
                  }

                  v33 = v56;
                  v34 = *(this + 5);
                  *(this + 12) = v32 + 1;
                  *(v34 + 4 * v32) = v33;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                goto LABEL_92;
              }
            }
          }

          if (v6 != 3)
          {
            break;
          }

          if ((TagFallback & 7) != 0)
          {
            if (v7 != 2)
            {
              goto LABEL_44;
            }

            v20 = *(a2 + 1);
            v19 = *(a2 + 2);
            goto LABEL_78;
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x1Au, a2, this + 40);
          if (!result)
          {
            return result;
          }

LABEL_92:
          v35 = *(a2 + 1);
          v22 = *(a2 + 2);
          if (v35 < v22 && *v35 == 34)
          {
            v23 = v35 + 1;
            *(a2 + 1) = v23;
LABEL_95:
            v57 = 0;
            if (v23 >= v22 || *v23 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v57))
              {
                return 0;
              }
            }

            else
            {
              v57 = *v23;
              *(a2 + 1) = v23 + 1;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
            {
              v56 = 0;
              v36 = *(a2 + 1);
              if (v36 >= *(a2 + 2) || *v36 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v56))
                {
                  return 0;
                }
              }

              else
              {
                v56 = *v36;
                *(a2 + 1) = v36 + 1;
              }

              v37 = *(this + 18);
              if (v37 == *(this + 19))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v37 + 1);
                v37 = *(this + 18);
              }

              v38 = v56;
              v39 = *(this + 8);
              *(this + 18) = v37 + 1;
              *(v39 + 4 * v37) = v38;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            goto LABEL_109;
          }
        }

        if (v6 != 4)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          if (v7 != 2)
          {
            goto LABEL_44;
          }

          v23 = *(a2 + 1);
          v22 = *(a2 + 2);
          goto LABEL_95;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x22u, a2, this + 64);
        if (!result)
        {
          return result;
        }

LABEL_109:
        v40 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v40 < v8 && *v40 == 42)
        {
          v9 = v40 + 1;
          *(a2 + 1) = v9;
LABEL_112:
          v57 = 0;
          if (v9 >= v8 || *v9 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v57))
            {
              return 0;
            }
          }

          else
          {
            v57 = *v9;
            *(a2 + 1) = v9 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v56 = 0;
            v41 = *(a2 + 1);
            if (v41 >= *(a2 + 2) || *v41 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v56))
              {
                return 0;
              }
            }

            else
            {
              v56 = *v41;
              *(a2 + 1) = v41 + 1;
            }

            v42 = *(this + 24);
            if (v42 == *(this + 25))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 11, v42 + 1);
              v42 = *(this + 24);
            }

            v43 = v56;
            v44 = *(this + 11);
            *(this + 24) = v42 + 1;
            *(v44 + 4 * v42) = v43;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_126;
        }
      }

      if (v6 != 5)
      {
        goto LABEL_44;
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x2Au, a2, this + 88);
      if (!result)
      {
        return result;
      }

LABEL_126:
      v45 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v45 < v10 && *v45 == 48)
      {
        v18 = v45 + 1;
        *(a2 + 1) = v18;
LABEL_129:
        if (v18 >= v10 || (v46 = *v18, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 27) = v46;
          v47 = v18 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 33) |= 0x20u;
        if (v47 < v10 && *v47 == 56)
        {
          v14 = v47 + 1;
          *(a2 + 1) = v14;
LABEL_137:
          if (v14 >= v10 || (v48 = *v14, v48 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
            if (!result)
            {
              return result;
            }

            v49 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 28) = v48;
            v49 = v14 + 1;
            *(a2 + 1) = v49;
          }

          *(this + 33) |= 0x40u;
          if (v49 < v10 && *v49 == 64)
          {
            v21 = v49 + 1;
            *(a2 + 1) = v21;
LABEL_145:
            if (v21 >= v10 || (v50 = *v21, v50 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 29);
              if (!result)
              {
                return result;
              }

              v51 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 29) = v50;
              v51 = v21 + 1;
              *(a2 + 1) = v51;
            }

            *(this + 33) |= 0x80u;
            if (v51 < v10 && *v51 == 72)
            {
              v24 = v51 + 1;
              *(a2 + 1) = v24;
LABEL_153:
              if (v24 >= v10 || (v52 = *v24, v52 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
                if (!result)
                {
                  return result;
                }

                v53 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 30) = v52;
                v53 = v24 + 1;
                *(a2 + 1) = v53;
              }

              *(this + 33) |= 0x100u;
              if (v53 < v10 && *v53 == 80)
              {
                v11 = v53 + 1;
                *(a2 + 1) = v11;
LABEL_161:
                if (v11 >= v10 || (v54 = *v11, v54 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
                  if (!result)
                  {
                    return result;
                  }

                  v55 = *(a2 + 1);
                  v10 = *(a2 + 2);
                }

                else
                {
                  *(this + 31) = v54;
                  v55 = v11 + 1;
                  *(a2 + 1) = v55;
                }

                *(this + 33) |= 0x200u;
                if (v55 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 2)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_112;
    }

LABEL_44:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}